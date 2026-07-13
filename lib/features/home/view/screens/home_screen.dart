import 'package:assesment_project/app/app_colors.dart';
import 'package:assesment_project/features/answerreview/view/screens/answer_review.dart';
import 'package:assesment_project/features/flashcard/view/screens/flash_card.dart';
import 'package:assesment_project/features/tense/view/screens/tense_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFF0F3FF), Color(0xFFF9FAFF)],
          ),),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.startexamcolor,
                    padding: EdgeInsets.symmetric(vertical: 4),
          
          
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TenseScreen()));
                  }, child: Text('Tense Screen',style: TextStyle(color: Colors.white),)),
                  const SizedBox(height: 16),
                  ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.startexamcolor,
                    padding: EdgeInsets.symmetric(vertical: 4),
          
          
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AnswerReview()));
                  }, child: Text('Answer Review Screen',style: TextStyle(color: Colors.white),)),
                  const SizedBox(height: 16),
                  ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.startexamcolor,
                    padding: EdgeInsets.symmetric(vertical: 4),
          
          
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FlashCard()));
                  }, child: Text('FlashCard Screen',style: TextStyle(color: Colors.white),)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

