import 'package:flutter/material.dart';
import 'package:harry_porter/api/harry_potter_list.dart';
import 'package:harry_porter/api/hp.dart';
import 'package:harry_porter/model/HarryPotterModel.dart';

class DeatailPage extends StatelessWidget {
  const DeatailPage({Key? key}) : super(key: key);

  get items => [HarryPotterList()];

  get index => [HarryPotterList()];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Actor Deatails"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              Text(items[index].actor.toString()),
              SizedBox(height: 20.0,),
              Text("Name"),
              SizedBox(height: 20.0,),
              Text("Name"),
              SizedBox(height: 20.0,),
              Text("Name"),
              SizedBox(height: 20.0,),
              Text("Name"),
              SizedBox(height: 20.0,),
              Text("Name"),
            ],
          ),
        ),
      ),
    );
  }
}
