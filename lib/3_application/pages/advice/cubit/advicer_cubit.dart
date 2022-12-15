import 'package:advicer/1_domain/entities/advice_entitiy.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../../1_domain/usecases/advice_usescases.dart';

part 'advicer_state.dart';

class AdvicerCubit extends Cubit<AdvicerCubitState> {
  AdvicerCubit() : super(AdvicerInitial());

  final AdviceUseCases adviceUseCases = AdviceUseCases();


  void adviceRequested() async {
    emit(AdvicerStateLoading());
    final AdviceEntitiy advice = await adviceUseCases.getAdvice();

    //execute business logic
    // for example get and advice
    debugPrint('fake get advice');
    await Future.delayed(const Duration(seconds: 3), () {});
    debugPrint('got advice');
    emit(AdvicerStateLoaded(advice: advice.advice));
  }
}
