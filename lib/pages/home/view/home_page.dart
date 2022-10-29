import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hifive/app/bloc/app_bloc.dart';
import 'package:hifive/pages/exam/view/exam_bloc_page.dart';
import 'package:hifive/pages/home/widget/avatar.dart';
import 'package:hifive/pages/note/view/note_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: HomePage());

  static Route<void> route() {
    return MaterialPageRoute(
        fullscreenDialog: true, builder: (context) => HomePage());
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final List<Widget> _widgetOptions = <Widget>[
    NoteHomePage(),
    NoteHomePage(),
    NoteHomePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final user = context.select((AppBloc bloc) => bloc.state.user);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: <Widget>[
          IconButton(
            key: const Key('homePage_logout_iconButton'),
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => context.read<AppBloc>().add(AppLogoutRequested()),
          )
        ],
      ),
      body: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // Avatar(photo: user.photo),
            // const SizedBox(height: 4),
            // Text(user.email ?? '', style: textTheme.headline6),
            // const SizedBox(height: 4),
            // Text(user.userName ?? '', style: textTheme.headline5),
            // _UserIdInput(),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).push(ExamBlocPage.route());
            //     // Navigator.of(context).pushNamed('/note_home');
            //     // context
            //     //     .flow<AppStatus>()
            //     //     .update((state) => AppStatus.noteHomePage);
            //   },
            //   child: const Text("샘플페이지 이동 "),
            // ),
          ],
        ),
      ),
    );
  }
}

class _UserIdInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController(text: '초기값.');
    return BlocBuilder<AppBloc, AppState>(
      buildWhen: (previous, current) =>
          previous.user.userId != current.user.userId,
      builder: (context, state) {
        _controller.text = state.user.userId!;

        return TextFormField(
          controller: _controller,
          key: const Key('loginForm_idInput_textField'),
          keyboardType: TextInputType.text,
          onChanged: (userId) => context.read<AppBloc>().add(UserIdChange()),
          decoration: InputDecoration(
            labelText: '아이디',
            helperText: '',
            // errorText: state.user.userId ?? '형식에 맞게 입력해주세요.',
          ),
        );
      },
    );
  }
}
