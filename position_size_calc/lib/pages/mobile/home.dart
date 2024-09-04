import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';
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
                  SizedBox(
                    height: 50.sp,
                  ),
                  Text(
                    "XAU/USD Position Size Calculator",
                    style: TextStyle(fontSize: 65.sp),
                  ),
                  SizedBox(
                    height: 200.sp,
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
                      suffixIcon: HugeIcon(
                        icon: HugeIcons.strokeRoundedDollarCircle,
                        color: Colors.black.withAlpha(180),
                        size: 70.sp,
                      ),
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
                      suffixIcon: HugeIcon(
                        icon: HugeIcons.strokeRoundedPercentCircle,
                        color: Colors.black.withAlpha(180),
                        size: 70.sp,
                      ),
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
                      suffixIcon: HugeIcon(
                        icon: HugeIcons.strokeRoundedCircleArrowHorizontal,
                        color: Colors.black.withAlpha(180),
                        size: 70.sp,
                      ),
                    ),
                    controller: controller.slPointsController,
                    style: TextStyle(
                        fontSize: 50.sp
                    ),
                  ),
                  SizedBox(
                    height: 100.sp,
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      overlayColor: WidgetStatePropertyAll(Colors.black.withAlpha(10)),
                    ),
                    onPressed: () {
                      controller.calculatePositionSize();
                      },
                    child: Text("Calculate", style: TextStyle(color: Colors.black),),
                  ),
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
