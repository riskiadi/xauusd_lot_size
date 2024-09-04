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
        padding: EdgeInsets.symmetric(horizontal: 40.sp, vertical: 50.sp),
        child: Obx(() {
          return Center(
            child: Container(
              width: 500.sp,
              child: ListView(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 10.sp,
                      ),
                      Text(
                        "XAU/USD Position Size Calculator",
                        style: TextStyle(fontSize: 20.sp),
                      ),
                      SizedBox(
                        height: 80.sp,
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
                              style: TextStyle(fontSize: 14.sp),
                            ),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          suffixIcon: HugeIcon(
                            icon: HugeIcons.strokeRoundedDollarCircle,
                            color: Colors.black.withAlpha(180),
                            size: 20.sp,
                          ),
                        ),
                        controller: controller.accountBalanceController,
                        style: TextStyle(
                            fontSize: 14.sp
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
                              style: TextStyle(fontSize: 14.sp),
                            ),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          suffixIcon: HugeIcon(
                            icon: HugeIcons.strokeRoundedPercentCircle,
                            color: Colors.black.withAlpha(180),
                            size: 20.sp,
                          ),
                        ),
                        controller: controller.riskPercentageController,
                        style: TextStyle(
                            fontSize: 14.sp
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
                              style: TextStyle(fontSize: 14.sp),
                            ),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          suffixIcon: HugeIcon(
                            icon: HugeIcons.strokeRoundedCircleArrowHorizontal,
                            color: Colors.black.withAlpha(180),
                            size: 20.sp,
                          ),
                        ),
                        controller: controller.slPointsController,
                        style: TextStyle(
                            fontSize: 14.sp
                        ),
                      ),
                      SizedBox(
                        height: 30.sp,
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
                        height: 40.sp,
                      ),
                      Text(controller.lotSize.toStringAsFixed(2),
                        style: TextStyle(fontSize: 40.sp),),

                    ],
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}