import 'package:flutter/material.dart';
import 'package:test_project/constants.dart';
import 'package:test_project/widgets/place_model.dart';

class Places extends StatelessWidget {
  const Places({super.key, required this.placeModel});
  final PlaceModel placeModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
          decoration: BoxDecoration(
              color: kSecondaryColor, borderRadius: BorderRadius.circular(10)),
          padding:
              const EdgeInsets.only(top: 14, bottom: 14, left: 24, right: 24),
          child: Row(
            children: [
              placeModel.icon != null
                  ? Icon(
                      placeModel.icon,
                      color: kPrimaryColor,
                    )
                  : Icon(Icons.grid_3x3),
              const SizedBox(
                width: 8,
              ),
              Text(
                '${placeModel.placeName}',
                style: const TextStyle(
                    color: kPrimaryColor,
                    fontSize: 18,
                    fontFamily: 'Alexandria'),
              ),
            ],
          )),
    );
  }
}
