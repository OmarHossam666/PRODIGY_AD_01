import 'package:calculator/constant/colors.dart';
import 'package:calculator/screens/widgets_data.dart';
import 'package:calculator/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    final screenHeight = MediaQuery.sizeOf(context).height;
    const padding = EdgeInsets.symmetric(horizontal: 25 , vertical: 30);
    const decoration = BoxDecoration(color: AppColors.primaryColor , borderRadius: BorderRadius.vertical(top: Radius.circular(30)));

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Calculator App'),
          backgroundColor: Colors.black
          ),
        body: Column(
          children: [
            const CustomTextField(),
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
                    children: List.generate(4 , (index) => buttonList[index]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4 , (index) => buttonList[index + 4]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4 , (index) => buttonList[index + 8]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4 , (index) => buttonList[index + 12]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4 , (index) => buttonList[index + 16]),
                  ),
                ],
              ),
            )
          ],
          ),
      );
  }
}