import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/app/view/app.dart';
import 'package:hifive/enums/data_status.dart';
import 'package:hifive/pages/exam/bloc/exam_bloc.dart';
import 'package:hifive/pages/exam/request/create_exam_request.dart';
import 'package:hifive/pages/exam/request/update_exam_request.dart';
import 'package:hifive/util/dialogs.dart';
import 'package:hifive/widget/app_text_field.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ExamBlocItemPage extends StatefulWidget {
  const ExamBlocItemPage({super.key});
  static Page<void> page() =>
      const MaterialPage<void>(child: ExamBlocItemPage());

  static Route<void> route(ExamBloc examBloc) {
    return MaterialPageRoute(
      // fullscreenDialog: true,
      builder: (BuildContext context) => BlocProvider.value(
        value: examBloc,
        child: const ExamBlocItemPage(),
      ),
    );
  }

  @override
  State<ExamBlocItemPage> createState() => _ExamBlocItemPageState();
}

class _ExamBlocItemPageState extends State<ExamBlocItemPage> {
  late ExamBloc _examBloc;
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    _examBloc.add(const SetSelectedExam(null));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _examBloc = context.read<ExamBloc>();

    return BlocBuilder<ExamBloc, ExamState>(
      builder: (context, state) {
        if (state.status == DataStatus.loading) {
          return const SplashPage();
        }
        final formGroup = _examBloc.formgroup;
        final isEditing = _examBloc.state.hasExam;
        return Scaffold(
          appBar: AppBar(
              title: Text(
                  isEditing ? '${_examBloc.state.exam?.title}' : '입력하세요.')),
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
          floatingActionButton: BlocConsumer<ExamBloc, ExamState>(
            listener: (context, state) {
              if (state.isProcessing) {
                showMessageSnackbar(
                  context,
                  "Processing...",
                );
              } else if (state.status.isSuccess) {
                showMessageSnackbar(
                  context,
                  state.message,
                );
                // Navigator.pop(context);
                Navigator.of(context).pop();
                // Navigator.of(context).popAndPushNamed('/note_home');
              } else if (state.status.isError) {
                showMessageSnackbar(
                  context,
                  state.message,
                  color: Colors.red,
                );
              }
            },
            builder: (context, state) {
              return FloatingActionButton(
                backgroundColor: Theme.of(context).primaryColor,
                onPressed: () => onSave(context, state, formGroup, _examBloc),
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

  void onSave(context, state, formGroup, bloc) {
    if (state.isProcessing) return;
    if (formGroup.invalid) {
      // This will validate all [isRequired] AppTextField
      formGroup.markAllAsTouched();
      return;
    }
    final value = formGroup.value;
    if (state.hasExam) {
      final request = UpdateExamRequest.fromFromGroup(value);
      bloc.add(Update(request, state.exam!.id));
    } else {
      final request = CreateExamRequest.fromFromGroup(value);
      bloc.add(Create(request));
    }
  }
}
