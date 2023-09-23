
import 'package:code_casa_calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constant/colors.dart';

class ZeroButton extends StatelessWidget {
  const ZeroButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Provider.of<CalculatorProvider>(context, listen: false).setValue("0"),
      child: Container(
        height: 70,
        width: 175,
        decoration: BoxDecoration(
            color: AppColors.secondary2Color,
            borderRadius: BorderRadius.circular(40)),
        child: const Center(
          child: Text(
            "0",
            style: TextStyle(
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}