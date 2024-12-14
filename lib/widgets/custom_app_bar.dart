import 'package:flutter/material.dart';
import 'package:test_project/generated/l10n.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.only(left: 15,top:38),
          child: Row(
            children: [
              Image.asset(S.of(context).logoPath, width: 90,),
              const Spacer(),
              const Icon(Icons.menu,color: Color(0x0ff5E6C00), size: 32,)
            ],
          ),
        );
  }
}