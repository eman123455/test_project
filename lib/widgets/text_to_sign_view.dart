import 'package:flutter/material.dart';
import 'package:test_project/widgets/custom_app_bar.dart';

class TextToSignView extends StatelessWidget {
  const TextToSignView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        
      ],
    );
  }
}