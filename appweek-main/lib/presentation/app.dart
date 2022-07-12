import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nsg_biolabs/presentation/pages/pages.dart';
import 'package:nsg_biolabs/shared/config/config.dart';

import '../data/model/infor.dart';
import 'bloc/edit bloc/edit_bloc.dart';
import 'bloc/todo bloc/todo_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TodosBloc()
            ..add(
              LoadTodosEvent(itemList: todoListDemo),
            ),
        ),
        BlocProvider<EditBloc>(create: (context) => EditBloc()),
      ],
      child: MaterialApp(
        title: 'NSG BIOLABS',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        locale: const Locale("en"),
        theme: ThemeData(
          textTheme: CustomTextStyle.textFontApp,
        ),
      ),
    );
  }
}
