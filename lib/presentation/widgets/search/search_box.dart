import 'package:flutter/material.dart';
import 'package:perflexity/presentation/widgets/search/search_bar_button.dart';
import 'package:perflexity/presentation/widgets/search/search_button.dart';
import 'package:perflexity/theme/colors.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      decoration: BoxDecoration(
        color: AppColors.searchBar,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.searchBarBorder, width: 1.5),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Ask me aything...',
                hintStyle: const TextStyle(
                  color: AppColors.textGrey,
                  fontSize: 16,
                ),
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                SearchBarButton(
                  icon: Icons.auto_awesome_outlined,
                  label: 'Focus',
                ),
                const SizedBox(width: 16),
                SearchBarButton(
                  icon: Icons.add_circle_outline,
                  label: 'Attach',
                ),
                const Spacer(),
                SearchButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
