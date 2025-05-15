import 'package:flutter/material.dart';
import 'package:perflexity/theme/colors.dart';

class SideNavBar extends StatefulWidget {
  const SideNavBar({super.key});

  @override
  State<SideNavBar> createState() => _SideNavBarState();
}

class _SideNavBarState extends State<SideNavBar> {
  bool isCollapsed = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isCollapsed ? 64 : 128,
      color: AppColors.sideNav,
      child: Column(
        children: [
          const SizedBox(height: 16),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14),
            child: Icon(
              Icons.auto_awesome_mosaic,
              color: AppColors.whiteColor,
              size: 28,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14),
            child: Icon(Icons.add, color: AppColors.iconGrey, size: 28),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14),
            child: Icon(Icons.search, color: AppColors.iconGrey, size: 28),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14),
            child: Icon(Icons.language, color: AppColors.iconGrey, size: 28),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14),
            child: Icon(
              Icons.auto_awesome,
              color: AppColors.iconGrey,
              size: 28,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14),
            child: Icon(
              Icons.cloud_outlined,
              color: AppColors.iconGrey,
              size: 28,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                isCollapsed = !isCollapsed;
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 14),
              child: Icon(
                isCollapsed
                    ? Icons.keyboard_arrow_right
                    : Icons.keyboard_arrow_left,
                color: AppColors.iconGrey,
                size: 28,
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
