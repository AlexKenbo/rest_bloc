import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_with_bloc/injection.dart';
import 'package:rest_api_with_bloc/presentation/home_page/home_page.dart';
import 'package:rest_api_with_bloc/presentation/on_hold_page/bloc/on_hold_bloc.dart';

void main() async {
  await init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OnHoldBloc>(create: (_) => OnHoldBloc()),
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
