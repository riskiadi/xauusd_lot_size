import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.sp, vertical: 50.sp),
        child: Obx(() {
          return ListView(
            children: [
              Column(
                children: [
                  Text("XAU/USD Position Size Calculator",
                    style: TextStyle(fontSize: 60.sp),),
                  SizedBox(
                    height: 100.sp,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      label: Container(
                        child: Text(
                          "Account Balance",
                        ),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    controller: controller.accountBalanceController,
                    style: TextStyle(
                        fontSize: 50.sp
                    ),
                  ),
                  SizedBox(
                    height: 50.sp,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      label: Container(
                        child: Text(
                          "Risk Percentage",
                        ),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    controller: controller.riskPercentageController,
                    style: TextStyle(
                        fontSize: 50.sp
                    ),
                  ),
                  SizedBox(
                    height: 50.sp,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      label: Container(
                        child: Text(
                          "Stop Loss Point",
                        ),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    controller: controller.slPointsController,
                    style: TextStyle(
                        fontSize: 50.sp
                    ),
                  ),
                  SizedBox(
                    height: 100.sp,
                  ),
                  OutlinedButton(onPressed: () {
                    controller.calculatePositionSize();
                  }, child: Text("Calculate")),
                  SizedBox(
                    height: 150.sp,
                  ),
                  Text(controller.lotSize.toStringAsFixed(2),
                    style: TextStyle(fontSize: 150.sp),),

                ],
              ),
            ],
          );
        }),
      ),
    );
  }
}
