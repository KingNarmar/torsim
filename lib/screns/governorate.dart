import 'package:flutter/material.dart';
import 'package:torsim/models/governorate_model.dart';

class Governorate extends StatelessWidget {
  const Governorate({
    super.key, required this.governorateModel,
  });
final GovernorateModel governorateModel;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title:  Text(governorateModel.name),
          bottom: const TabBar(tabs: [
            Tab( child: Text("المعالم",style: TextStyle(fontSize: 30),),
            ),
            Tab(child: Text("الفنادق",style: TextStyle(fontSize: 30),),)
          ]),
        ),
        body: const TabBarView(children: [
          Column(
            children: [
              Text(
                "محتوي المعالم",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "محتوي الفنادق",
                style: TextStyle(fontSize: 30),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
