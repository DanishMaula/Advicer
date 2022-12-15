import 'package:equatable/equatable.dart';

class AdviceEntitiy extends Equatable {
  final String advice;
  final int id;

  AdviceEntitiy({required this.advice, required this.id});
  
  @override
  
  List<Object?> get props => [advice, id];
}
