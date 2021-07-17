import 'dart:async';
import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:solid_test_app/resources/app_colors.dart';

part 'change_color_event.dart';

part 'change_color_state.dart';

class ChangeColorBloc extends Bloc<ChangeColorEvent, ChangeColorToRandomState> {
  ChangeColorBloc() : super(ChangeColorToRandomState(AppColors.greetingColor));
  final Random _random = Random();

  @override
  Stream<ChangeColorToRandomState> mapEventToState(
    ChangeColorEvent event,
  ) async* {
    if (event is ChangeColorToRandomEvent) {
      Color randomColor = Color.fromRGBO(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        1,
      );
      yield ChangeColorToRandomState(randomColor);
    }
  }
}
