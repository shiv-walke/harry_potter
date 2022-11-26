import 'dart:convert';
import 'package:flutter/services.dart' as rootBundle;
import 'package:flutter/material.dart';

import '../model/HarryPotterModel.dart';
import '../screens/detail_page.dart';

Future<List<HarryPotterModel>>ReadJsonData() async{
  final jsondata = await rootBundle.rootBundle.loadString('assets/json/harry_potter_content.json');
  final list = json.decode(jsondata) as List<dynamic>;

  return list.map((e) => HarryPotterModel.fromJson(e)).toList();
}

class HarryPotterList extends StatefulWidget {
  const HarryPotterList({Key? key}) : super(key: key);

  @override
  State<HarryPotterList> createState() => _HarryPotterListState();
}

class _HarryPotterListState extends State<HarryPotterList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  FutureBuilder(
        future: ReadJsonData(),
        builder: (context,data){
          if(data.hasError){
            return Center(child: Text("${data.error}"));
          }else if(data.hasData){
            var items =data.data as List<HarryPotterModel>;
            return ListView.builder(
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return Card(
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DeatailPage(),
                          ),
                        );
                      },
                      child: Container(
                        color: Colors.blue,
                        width: 160.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: Image(image: NetworkImage(items[index].image.toString()),fit: BoxFit.fill,),
                            ),
                            Text(items[index].name.toString(),style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),),
                           // Text(items[index].gender.toString()),
                            Text(items[index].actor.toString()),

                          ],
                        ),
                      ),
                    ),
                  );
                }
            );
          }else{
            return const Center(child: const CircularProgressIndicator(),);
          }
        },
      ),
    );
  }
}
