import 'package:assesment_project/features/common/widgets/wiztec_task_appbar.dart';
import 'package:assesment_project/features/flashcard/view/widgets/optionwidget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';

class FlashCard extends StatefulWidget {
  const FlashCard({super.key});

  @override
  State<FlashCard> createState() => _FlashCardState();
}

class _FlashCardState extends State<FlashCard> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFF0F3FF), Color(0xFFF9FAFF)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WizTecTaskAppBar(
                    title: 'Answer Review',
                    onTapBack: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 16),
                  _buildHeadingWidget(),
                  SizedBox(height: 10),
                  _buildQuestionCard(),
                  SizedBox(height: 16),
                  _buildLevelProgress(),
                  SizedBox(height: 10),
                  OptionsItemWidget(
                    onTap: (int p1) {
                      setState(() {
                        selectedIndex = p1;
                      });
                    },
                    selectedIndex: selectedIndex,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildQuestionCard() {
    return Container(
      height: 184,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 60),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF440182), Color(0xFF111485)],
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Center(
        child: Text(
          'Which sentence is in future tense?',
          style: TextStyle(color: Colors.white, fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildLevelProgress() {
    return Row(
      children: [
        Expanded(
          child: LinearPercentIndicator(
            animation: true,
            animationDuration: 1000,
            lineHeight: 10,
            leading: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                "Leading",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            trailing: SizedBox(width: 8),
            percent: 4 / 7,
            padding: EdgeInsets.zero,

            barRadius:  Radius.circular(8),
            linearGradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFF0927A4), Color(0xFF860F11)],
            ),
          ),
        ),
        CircularPercentIndicator(
          radius: 18.0,
          lineWidth: 3.0,
          animation: true,
          percent: 4 / 7,
          center: Text(
            "4/7",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
              color: Colors.black,
            ),
          ),

          circularStrokeCap: CircularStrokeCap.round,
          linearGradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFF0927A4), Color(0xFF860F11)],
          ),
        ),
      ],
    );
  }

  Widget _buildHeadingWidget() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 48,
            width: double.maxFinite,

            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'No of Question',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 12),
        Row(
          children: [
            Container(
              height: 12,
              width: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFE3155),
              ),
            ),
            SizedBox(width: 2),
            Text(
              '00:30',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF11278E),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
