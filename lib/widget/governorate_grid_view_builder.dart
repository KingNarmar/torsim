import 'package:flutter/material.dart';

import 'package:torsim/screns/governorate.dart';

import '../models/governorate_model.dart';
import 'governorate_item.dart';

class GovernorateGridViewBuilder extends StatelessWidget {
  const GovernorateGridViewBuilder({
    super.key,
  });

  final List<GovernorateModel> govs = const [
    GovernorateModel([], [], image: "assets/Cairo.png", name: "القاهره"),
    GovernorateModel([], [], image: "assets/ismailia.jpg", name: "الاسماعيليه"),

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: govs.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Governorate(
                    governorateModel: govs[index],
                  );
                },
              ),
            );
          },
          child: GovernorateItem(
            governorateModel: govs[index],
          ),
        );
      },
    );
  }
}
