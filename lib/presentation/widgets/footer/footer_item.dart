// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:perflexity/theme/colors.dart';

class FooterItem extends StatelessWidget {
  final String title;
  const FooterItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Text(
        title,
        style: TextStyle(color: AppColors.textGrey, fontSize: 14),
      ),
    );
  }
}
