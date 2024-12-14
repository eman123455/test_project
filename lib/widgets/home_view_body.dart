
import 'package:flutter/material.dart';
import 'package:test_project/constants.dart';
import 'package:test_project/widgets/custom_app_bar.dart';
import 'package:test_project/widgets/custom_text_field.dart';
import 'package:test_project/widgets/places.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const CustomAppBar(),
              const CustomTextField(
              hintText: 'البحث',
                ),
            const SizedBox(
            height: 20,
            ),
          SizedBox(
            height: 60,
            child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: places.length,
            itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10,left: 10),
              child: Places(placeModel: places[index]),
            );
                    }),
          ),

           Container(

           )
            ],
          ),
          
        )
        
      ],
    );
  }
}
