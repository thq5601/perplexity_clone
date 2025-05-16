import 'package:flutter/material.dart';
import 'package:perflexity/presentation/widgets/footer/footer_section.dart';
import 'package:perflexity/presentation/widgets/search/search_section.dart';
import 'package:perflexity/presentation/widgets/side_bar/side_bar_section.dart';
import 'package:perflexity/theme/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left Side Navigation Bar
          const SideBarSection(),
          Expanded(
            child: Column(
              children: [
                const Expanded(child: SearchSection()),
                const FooterSection(),
                // Footer
                // Container(
                //   padding: EdgeInsets.symmetric(vertical: 16),
                //   child: Wrap(
                //     children: [
                //       Padding(
                //         padding: EdgeInsets.symmetric(horizontal: 12),
                //         child: Text(
                //           'Pro',
                //           style: TextStyle(
                //             color: AppColors.textGrey,
                //             fontSize: 14,
                //           ),
                //         ),
                //       ),
                //       Padding(
                //         padding: EdgeInsets.symmetric(horizontal: 12),
                //         child: Text(
                //           'Enterprise',
                //           style: TextStyle(
                //             color: AppColors.textGrey,
                //             fontSize: 14,
                //           ),
                //         ),
                //       ),
                //       Padding(
                //         padding: EdgeInsets.symmetric(horizontal: 12),
                //         child: Text(
                //           'API',
                //           style: TextStyle(
                //             color: AppColors.textGrey,
                //             fontSize: 14,
                //           ),
                //         ),
                //       ),
                //       Padding(
                //         padding: EdgeInsets.symmetric(horizontal: 12),
                //         child: Text(
                //           'Blog',
                //           style: TextStyle(
                //             color: AppColors.textGrey,
                //             fontSize: 14,
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
