import 'package:assesment_project/app/app_colors.dart';
import 'package:assesment_project/features/common/widgets/wiztec_task_appbar.dart';
import 'package:assesment_project/features/tense/bloc/tense_bloc.dart';
import 'package:assesment_project/features/tense/bloc/tense_event.dart';
import 'package:assesment_project/features/tense/bloc/tense_state.dart';
import 'package:assesment_project/features/tense/data/models/exam_model.dart';
import 'package:assesment_project/features/tense/view/widgets/exam_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TenseScreen extends StatefulWidget {
  const TenseScreen({super.key});

  @override
  State<TenseScreen> createState() => _TenseScreenState();
}

class _TenseScreenState extends State<TenseScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<TenseBloc>().add(TenseInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
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
                    title: 'Tense',
                    onTapBack: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 16),
                  _buildSearchWidget(),
                  SizedBox(height: 16),
                  _buildExamCard(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildExamCard() {
    return BlocBuilder<TenseBloc, TenseState>(
      builder: (context, state) {
        if (state is TenseExamLoadedSuccessState) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.examList.length,
            itemBuilder: (context, index) {
              ExamModel model = state.examList[index];
              return ExamCardWidget(model: model);
            },
          );
        }
        return SizedBox.shrink();
      },
    );
  }

  Widget _buildSearchWidget() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 48,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.appPrimaryColor,
            ),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                Icon(Icons.search, size: 22, color: Color(0xFF141B34)),
                SizedBox(width: 10),

                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Color(0xFF141B34)),
                      border: InputBorder.none,

                      hintText: 'Search',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 12),
        IconButton(
          style: IconButton.styleFrom(
            padding: EdgeInsets.all(12),
            backgroundColor: AppColors.startexamcolor,
            foregroundColor: Colors.white,
          ),
          onPressed: () {},
          icon: Icon(Icons.tune),
        ),
      ],
    );
  }
}
