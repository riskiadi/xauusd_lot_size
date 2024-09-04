import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  final _accountBalanceController = TextEditingController().obs;
  final _riskPercentageController = TextEditingController(text: "1").obs;
  final _slPointsController = TextEditingController().obs;
  final _lotSize = 0.0.obs;

  final double _pipSize = 0.1;
  final double _contractSize = 1;

  calculatePositionSize() {
    if(accountBalanceController.text.isNotEmpty && riskPercentageController.text.isNotEmpty && slPointsController.text.isNotEmpty){
      double riskAmount = double.parse(accountBalanceController.text) * (double.parse(riskPercentageController.text) / 100);
      double riskPerLot = double.parse(slPointsController.text) * (_pipSize / _contractSize);
      double positionSize = riskAmount / riskPerLot;
      _lotSize.value = positionSize;
    }else{
      _lotSize.value = 0;
    }
  }

  TextEditingController get accountBalanceController => _accountBalanceController.value;
  TextEditingController get riskPercentageController => _riskPercentageController.value;
  TextEditingController get slPointsController => _slPointsController.value;
  double get lotSize => _lotSize.value;

}