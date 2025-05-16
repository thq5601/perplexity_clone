import 'package:flutter/material.dart';
import 'package:perflexity/presentation/widgets/side_bar/side_bar_button.dart';
import 'package:perflexity/theme/colors.dart';

class SideBarSection extends StatefulWidget {
  const SideBarSection({super.key});

  @override
  State<SideBarSection> createState() => _SideBarSectionState();
}

class _SideBarSectionState extends State<SideBarSection> {
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isCollapsed ? 64 : 148,
      color: AppColors.sideNav,
      child: Column(
        children: [
          const SizedBox(height: 16),
          Icon(
            Icons.auto_awesome_mosaic,
            color: AppColors.whiteColor,
            size: isCollapsed ? 28 : 56,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment:
                  isCollapsed
                      ? CrossAxisAlignment.center
                      : CrossAxisAlignment.start,
              children: [
                SideBarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.add,
                  text: 'Home',
                ),
                SideBarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.search,
                  text: 'Search',
                ),
                SideBarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.language,
                  text: 'Spaces',
                ),
                SideBarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.auto_awesome,
                  text: 'Discover',
                ),
                SideBarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.cloud_outlined,
                  text: 'Library',
                ),
                const Spacer(),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isCollapsed = !isCollapsed;
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
              child: AnimatedRotation(
                turns: isCollapsed ? 0.0 : 0.5,
                duration: const Duration(milliseconds: 300),
                child: Icon(
                  Icons.keyboard_arrow_right,
                  color: AppColors.iconGrey,
                  size: 28,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
