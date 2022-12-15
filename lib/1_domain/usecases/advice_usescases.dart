import 'package:advicer/1_domain/entities/advice_entitiy.dart';

class AdviceUseCases {
  Future<AdviceEntitiy> getAdvice() async {
    // call repository to get data 
    // proceed with business logic
    // for example get an advice
    await Future.delayed(const Duration(seconds: 3), () {});
    return AdviceEntitiy(advice: 'advice too test', id: 1);
  }
}
