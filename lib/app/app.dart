import 'package:assesment_project/features/answerreview/bloc/answer_review_bloc.dart';
import 'package:assesment_project/features/home/view/screens/home_screen.dart';
import 'package:assesment_project/features/tense/bloc/tense_bloc.dart';
import 'package:assesment_project/features/tense/view/screens/tense_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_colors.dart';

class WizTecTaskApp extends StatelessWidget {
  const WizTecTaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return


      MultiBlocProvider(
        providers: [

          BlocProvider(
            create: (BuildContext context) => TenseBloc()),

          BlocProvider(
            create: (BuildContext context) => AnswerReviewBloc(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,

          theme: ThemeData(
            //scaffoldBackgroundColor: AppColors.screenBackGround,
            iconButtonTheme: IconButtonThemeData(
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white,
                    padding: EdgeInsets.all(8)
            )
          ),
          ),
          home: HomeScreen(),
        ),
      );

  }
}
