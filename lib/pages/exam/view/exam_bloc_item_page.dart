import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/pages/exam/bloc/exam_bloc.dart';

class ExamBlocItemPage extends StatefulWidget {
  const ExamBlocItemPage({super.key});

  static Route<void> route(ExamBloc examBloc) {
    return MaterialPageRoute(
      fullscreenDialog: true,
      builder: (BuildContext context) => BlocProvider.value(
        value: examBloc,
        child: ExamBlocItemPage(),
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _examBloc = context.read<ExamBloc>();
    return BlocBuilder<ExamBloc, ExamState>(
      builder: (context, state) {
        return Scaffold(
            body: Center(
          child: Text(
            '${_examBloc.state.exam?.title}',
          ),
        ));
      },
    );
  }
}
