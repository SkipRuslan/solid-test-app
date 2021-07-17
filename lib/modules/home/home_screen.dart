import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_test_app/resources/Strings.dart';
import 'package:solid_test_app/resources/app_colors.dart';

import 'bloc/change_color_bloc.dart';

class HomeScreen extends StatelessWidget {
  static const route = "/home";

  final ChangeColorBloc _changeColorBloc = ChangeColorBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _changeColorBloc,
      child: Scaffold(
        body: BlocBuilder<ChangeColorBloc, ChangeColorToRandomState>(
          builder: (context, currentState) => InkWell(
            onTap: () {
              _changeColorBloc.add(ChangeColorToRandomEvent());
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: currentState.color,
              child: Center(
                child: Text(
                  Strings.homeGreeting,
                  style: TextStyle(color: AppColors.greetingColor),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
