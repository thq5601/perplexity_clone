import 'package:flutter/material.dart';
import 'package:perflexity/theme/colors.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.submitButton,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Icon(
        Icons.arrow_forward,
        color: AppColors.backgroundColor,
        size: 16,
      ),
    );
  }
}
