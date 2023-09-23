
import 'package:code_casa_calculator/constant/colors.dart';
import 'package:code_casa_calculator/provider/cal_provider.dart';
import 'package:code_casa_calculator/screens/widgets_data.dart';
import 'package:code_casa_calculator/widgets/textfeild.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/zero_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    const padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    const decoration = BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30),bottom:Radius.circular(30) )

    );

    return Consumer<CalculatorProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Calculator App", style: TextStyle(fontSize: 25),),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            CustomTextField(
              controller: provider.compController,
            ),
            const Spacer(),
            Container(
              height: screenHeight * 0.6,
              width: double.infinity,
              padding: padding,
              decoration: decoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) => buttonList[index]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    List.generate(4, (index) => buttonList[index + 4]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    List.generate(4, (index) => buttonList[index + 8]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        4, (index) => buttonList[index + 12]),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ZeroButton(), // Add ZeroButton here.
                      ...List.generate(
                        2,
                            (index) => buttonList[index + 16],
                      ),
                    ],
                  ),
            ]
              )
            )],
        ),
      );
    });
  }
}