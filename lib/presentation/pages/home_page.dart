import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:perflexity/presentation/widgets/footer/footer_section.dart';
import 'package:perflexity/presentation/widgets/search/search_section.dart';
import 'package:perflexity/presentation/widgets/side_bar/side_bar_section.dart';
import 'package:perflexity/services/chat_web_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    ChatWebService().connect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left Side Navigation Bar
          kIsWeb ? SideBarSection() : SizedBox(),
          Expanded(
            child: Padding(
              padding: !kIsWeb ? EdgeInsets.all(16.0) : EdgeInsets.zero,
              child: Column(
                children: [
                  const Expanded(child: SearchSection()),

                  const FooterSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
