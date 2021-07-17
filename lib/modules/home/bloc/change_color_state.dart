part of 'change_color_bloc.dart';

class ChangeColorToRandomState extends Equatable {
  final Color color;

  ChangeColorToRandomState(this.color);

  @override
  List<Object> get props => [color];
}
