import 'package:calculator_app/constant/colors.dart';
import 'package:calculator_app/provider/calculator_provider.dart';
import 'package:calculator_app/widgets/buttons_container.dart';
import 'package:calculator_app/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorProvider>(
      builder: (context, calcProvider, _) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Calculator App '),
            backgroundColor: AppColors.primaryColor,
          ),
          // backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextField(
                controller: calcProvider.textFieldContent,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  calcProvider.resultLabel,
                  style: const TextStyle(
                      fontSize: 32, color: AppColors.primaryColor),
                  textAlign: TextAlign.end,
                ),
              ),
              const SizedBox(height: 40),
              const ButtonsContainer(),
            ],
          ),
        );
      },
    );
  }
}
