import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/app/view/app.dart';
import 'package:hifive/enums/data_status.dart';
import 'package:hifive/pages/social/bloc/social_bloc.dart';
import 'package:hifive/pages/social/request/create_social_request.dart';
import 'package:hifive/pages/social/request/update_social_request.dart';
import 'package:hifive/util/dialogs.dart';
import 'package:hifive/widget/app_text_field.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SocialAddPage extends StatefulWidget {
  const SocialAddPage({super.key});
  static Route<void> route(SocialBloc socialBloc) {
    return MaterialPageRoute(
      // fullscreenDialog: true,
      builder: (BuildContext context) => BlocProvider.value(
        value: socialBloc,
        child: const SocialAddPage(),
      ),
    );
  }

  @override
  State<SocialAddPage> createState() => _SocialAddPageState();
}

class _SocialAddPageState extends State<SocialAddPage> {
  late SocialBloc _socialBloc;
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    _socialBloc.add(const SetSelectedItem(null));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _socialBloc = context.read<SocialBloc>();
    return BlocBuilder<SocialBloc, SocialState>(
      builder: (context, state) {
        if (state.status == DataStatus.loading) {
          return const SplashPage();
        }
        final formGroup = _socialBloc.formgroup;
        final isEditing = _socialBloc.state.hasSelectedItem;
        return Scaffold(
          appBar: AppBar(title: Text('새게시물')),
          body: SingleChildScrollView(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            child: ReactiveForm(
              formGroup: formGroup,
              child: Column(
                children: [
                  // const AppTextField(controlName: 'title', label: 'Title'),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const AppTextField(
                    controlName: 'contents',
                    label: "Contents",
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
          floatingActionButton: BlocConsumer<SocialBloc, SocialState>(
            listener: (context, state) {
              if (state.isProcessing) {
                showMessageSnackbar(
                  "Processing...",
                );
              } else if (state.status.isSuccess) {
                showMessageSnackbar(
                  state.msg,
                );
                Navigator.of(context).pop();
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
                onPressed: () => onSave(context, state, formGroup, _socialBloc),
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

  void onSave(context, SocialState state, formGroup, bloc) {
    FocusScope.of(context).requestFocus(FocusNode());
    if (state.isProcessing) return;
    if (formGroup.invalid) {
      // This will validate all [isRequired] AppTextField
      formGroup.markAllAsTouched();
      return;
    }
    final value = formGroup.value;
    if (state.hasSelectedItem) {
      final request = UpdateSocialRequest.fromFromGroup(value);
      bloc.add(Update(request, state.selectedItem!.postId));
    } else {
      final request = CreateSocialRequest.fromFromGroup(value);
      // bloc.add(Create(request));
    }
  }
}
