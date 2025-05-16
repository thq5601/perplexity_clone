import 'package:flutter/material.dart';
import 'package:perflexity/presentation/widgets/footer/footer_item.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          FooterItem(title: 'Pro'),
          FooterItem(title: 'Enterprise'),
          FooterItem(title: 'API'),
          FooterItem(title: 'Blog'),
          FooterItem(title: 'Privacy'),
          FooterItem(title: 'Careers'),
          FooterItem(title: 'Store'),
          FooterItem(title: 'Finance'),
          FooterItem(title: 'English (US)'),
        ],
      ),
    );
  }
}
