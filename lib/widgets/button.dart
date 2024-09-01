import 'package:calculator/constant/colors.dart';
import 'package:calculator/provider/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Button1 extends StatelessWidget
{
  const Button1({super.key , required this.label , this.textColor = Colors.white});

  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false).setValue(label),
      child: Material(
        elevation: 10,
        color: const Color.fromARGB(224, 255, 0, 68),
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          backgroundColor: AppColors.secondary2Color,
          radius: 36,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w400,
              color: textColor,
              ),
          ),
        ),
      ),
    );
  }
}