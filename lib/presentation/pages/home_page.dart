import 'package:flutter/material.dart';
import 'package:perflexity/presentation/widgets/footer/footer_section.dart';
import 'package:perflexity/presentation/widgets/search/search_section.dart';
import 'package:perflexity/presentation/widgets/side_bar/side_bar_section.dart';

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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
