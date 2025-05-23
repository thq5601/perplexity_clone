import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:perflexity/services/chat_web_service.dart';
import 'package:perflexity/theme/colors.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AnswerSection extends StatefulWidget {
  const AnswerSection({super.key});

  @override
  State<AnswerSection> createState() => _AnswerSectionState();
}

class _AnswerSectionState extends State<AnswerSection> {
  bool isLoading = true;
  String fullResponse = '''
The 2024 ASEAN Cup final between Vietnam and Thailand was played over two legs, with Vietnam winning the championship with an aggregate score of 5-3.

**First Leg (January 2, 2025) – Vietnam 2, Thailand 1**  
- The match took place at Viet Tri Stadium in Vietnam.  
- Vietnam took the lead with two goals by striker Nguyen Xuan Son in the 60th and 73rd minutes.  
- Thailand scored a late goal in the 83rd minute by Chalermsak Aukkee.  
- Vietnam's defense held strong despite Thailand's pressure, giving Vietnam a crucial advantage going into the second leg[3][4][5][6].

**Second Leg (January 5, 2025) – Vietnam 3, Thailand 2**  
- The match was held at Thailand's Rajamangala Stadium.  
- Vietnam opened early with a goal by Pham Tuan Hai in the 8th minute.  
- Thailand equalized in the 28th minute through Benjamin Davis.  
- Thailand then pulled level on aggregate in the 65th minute with a controversial goal by Supachok Sarachat, tying the aggregate at 3-3.  
- Vietnam regained the lead in the 82nd minute with a deflected shot by Pham Tuan Hai.  
- Thailand was reduced to 10 men after Weerathep Pomphan received a second yellow card in the 75th minute.  
- In stoppage time, Nguyen Hai Long scored a stunning goal from midfield to seal the 3-2 victory in the second leg and 5-3 on aggregate for Vietnam.  
- This win secured Vietnam's third ASEAN Cup title and their first since 2018[1][2].

**Summary:**  
- Aggregate score: Vietnam 5, Thailand 3  
- Vietnam won the first leg 2-1 at home and the second leg 3-2 away.  
- Key players for Vietnam included Nguyen Xuan Son (2 goals first leg), Pham Tuan Hai (2 goals second leg), and Nguyen Hai Long (late winner second leg).  
- Thailand fought hard but was hampered by a red card in the second leg and conceded a late goal that decided the championship[1][2][3].

Citations:
[1] https://www.espn.com/soccer/match/_/gameId/702690/vietnam-thailand
[2] https://e.vnexpress.net/report/football/vietnam-beat-thailand-to-lift-asean-cup-trophy-in-thrilling-final-4835788.html
[3] https://vietnamnet.vn/en/vietnam-edges-thailand-2-1-in-thrilling-asean-cup-final-opener-2359539.html
[4] https://en.vietnamplus.vn/vietnam-beat-thailand-2-1-at-asean-cup-final-first-leg-post307717.vnp
[5] https://www.espn.com/soccer/match/_/gameId/702689/thailand-vietnam
[6] https://e.vnexpress.net/report/football/vietnam-edge-thailand-2-1-in-first-leg-of-asean-cup-final-4834900.html
[7] https://www.sofascore.com/football/match/vietnam-thailand/FUbsaQc
[8] https://www.flashscore.com/h2h/football/vietnam-xAcurtwO/thailand-zHgBrkd7/
[9] https://www.aiscore.com/live/football-thailand-vs-vietnam
[10] https://aseanutdfc.com/asean-mitsubishi-electric-cup/2025/news/asean-mitsubishi-electric-cup-2024-report-thailand-2-3-vietnam

---
Answer from Perplexity: pplx.ai/share
''';
  @override
  void initState() {
    super.initState();
    ChatWebService().contentStream.listen((data) {
      if(isLoading){
        fullResponse ='';
      }
      setState(() {
        fullResponse += data['data'];
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Perflexity is a search engine that uses AI to answer questions.',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Skeletonizer(
          enabled: isLoading,
          child: Markdown(
            data: fullResponse,
            shrinkWrap: true,
            styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
              codeblockDecoration: BoxDecoration(
                color: AppColors.cardColor,
                borderRadius: BorderRadius.circular(10),
              ),
              code: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
