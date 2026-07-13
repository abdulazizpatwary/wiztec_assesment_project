import 'package:flutter/material.dart';

class WizTecTaskAppBar extends StatelessWidget {
  const WizTecTaskAppBar({
    super.key, required this.title, required this.onTapBack,
  });
  final String title;
  final VoidCallback onTapBack;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: onTapBack, icon: const Icon(Icons.arrow_back_ios,color: Colors.black54,)),
        Spacer(),
        Text(
          title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 22),
        ),
        Spacer(),
        IconButton(

          icon: const Icon(Icons.share_outlined, color: Colors.black54),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.notifications_none_outlined, color: Colors.black54),
          onPressed: () {},
        ),


      ],);
  }
}