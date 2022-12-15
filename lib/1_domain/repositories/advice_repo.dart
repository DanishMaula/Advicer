import 'package:advicer/1_domain/entities/advice_entitiy.dart';

abstract class AdviceRepo {
  Future<AdviceEntitiy> getAdviceFromDataSource();
}
