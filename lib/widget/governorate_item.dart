import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:torsim/models/governorate_model.dart';
import 'package:torsim/utl/app_routters.dart';

class GovernorateItem extends StatelessWidget {
  const GovernorateItem({
    super.key, required this.governorateModel,
  });
final GovernorateModel governorateModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 300,
      decoration:  BoxDecoration(
        image: DecorationImage(
            image: AssetImage(governorateModel.image), fit: BoxFit.fill),
      ),
      child:  Center(
          child: Text(
            governorateModel.name,
            style:const TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
          )),
    );
  }
}
