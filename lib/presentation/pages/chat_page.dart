// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:perflexity/presentation/widgets/answer/answer_section.dart';

import 'package:perflexity/presentation/widgets/side_bar/side_bar_section.dart';
import 'package:perflexity/presentation/widgets/source/sources_section.dart';
import 'package:perflexity/theme/colors.dart';

class ChatPage extends StatelessWidget {
  final String question;
  const ChatPage({super.key, required this.question});

  // StreamBuilder(
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          kIsWeb ? SideBarSection() : SizedBox(),
          kIsWeb ? SizedBox(width: 100) : SizedBox(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      question,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 24),
                    // sources
                    SourcesSection(),
                    const SizedBox(height: 24),
                    // answer section
                    AnswerSection(),
                  ],
                ),
              ),
            ),
          ),
          kIsWeb
              ? Placeholder(strokeWidth: 0, color: AppColors.backgroundColor)
              : SizedBox(),
        ],
      ),
    );
  }
}
