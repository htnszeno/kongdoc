import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kongdoc/app/view/app.dart';
import 'package:kongdoc/enums/data_status.dart';
import 'package:kongdoc/pages/exam/cubit/exam_cubit.dart';
import 'package:kongdoc/pages/exam/request/create_exam_request.dart';
import 'package:kongdoc/pages/exam/request/update_exam_request.dart';
import 'package:kongdoc/util/dialogs.dart';
import 'package:kongdoc/widget/app_text_field.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ExamCubitItemPage extends StatefulWidget {
  const ExamCubitItemPage({super.key});
  static Page<void> page() =>
      const MaterialPage<void>(child: ExamCubitItemPage());

  static Route<void> route(ExamCubit examCubit) {
    return MaterialPageRoute(
      // fullscreenDialog: true,
      builder: (BuildContext context) => BlocProvider.value(
        value: examCubit,
        child: const ExamCubitItemPage(),
      ),
    );
  }

  @override
  State<ExamCubitItemPage> createState() => _ExamCubitItemPageState();
}

class _ExamCubitItemPageState extends State<ExamCubitItemPage> {
  late ExamCubit _examCubit;
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    _examCubit.setSelectedExam(null);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _examCubit = context.read<ExamCubit>();

    return BlocBuilder<ExamCubit, ExamState>(
      builder: (context, state) {
        if (state.status == DataStatus.loading) {
          return const SplashPage();
        }
        final formGroup = _examCubit.formgroup;
        final isEditing = _examCubit.state.hasExam;
        return Scaffold(
          appBar: AppBar(
              title: Text(
                  isEditing ? '${_examCubit.state.exam?.title}' : '입력하세요.')),
          body: SingleChildScrollView(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            child: ReactiveForm(
              formGroup: formGroup,
              child: Column(
                children: [
                  const AppTextField(controlName: 'title', label: 'Title'),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const AppTextField(
                    controlName: 'body',
                    label: "Body",
                    maxLines: 5,
                    isRequired: true,
                    hintText: "Write your content here...",
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: BlocConsumer<ExamCubit, ExamState>(
            listener: (context, state) {
              if (state.isProcessing) {
                showMessageSnackbar(
                  "Processing...",
                );
              } else if (state.status.isSuccess) {
                showMessageSnackbar(
                  state.msg,
                );
                // Navigator.pop(context);
                Navigator.of(context).pop();
                // Navigator.of(context).popAndPushNamed('/note_home');
              } else if (state.status.isError) {
                showMessageSnackbar(
                  state.msg,
                  color: Colors.red,
                );
              }
            },
            builder: (context, state) {
              return FloatingActionButton(
                backgroundColor: Theme.of(context).primaryColor,
                onPressed: () => onSave(context, state, formGroup, _examCubit),
                child: state.isProcessing
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : Icon(
                        isEditing ? Icons.edit : Icons.check,
                        color: Colors.white,
                      ),
              );
            },
          ),
        );
      },
    );
  }

  void onSave(context, state, formGroup, cubit) {
    if (state.isProcessing) return;
    if (formGroup.invalid) {
      // This will validate all [isRequired] AppTextField
      formGroup.markAllAsTouched();
      return;
    }
    final value = formGroup.value;
    if (state.hasExam) {
      final request = UpdateExamRequest.fromFromGroup(value);
      cubit.update(request, state.exam!.id);
    } else {
      final request = CreateExamRequest.fromFromGroup(value);
      // cubit.add(Create(request));
    }
  }
}
