import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:harry_porter/model/HarryPotterModel.dart';
import 'package:flutter/services.dart' as rootBundle;

import 'detail_page.dart';


Future<List<HarryPotterModel>>readJsonData() async{
  final jsondata = await rootBundle.rootBundle.loadString('assets/json/harry_potter_content.json');
  final list = json.decode(jsondata) as List<dynamic>;

  return list.map((e) => HarryPotterModel.fromJson(e)).toList();
}

class SeeAllScreen extends StatelessWidget {
  const SeeAllScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Harry Potter Novel Actors"),),
      body:  SizedBox(
          child: FutureBuilder(
            future: readJsonData(),
            builder: (context,data){
              if(data.hasError){
                return Center(child: Text("${data.error}"));
              }else if(data.hasData){
                var items =data.data as List<HarryPotterModel>;
                return GridView.builder(
                    itemCount: items == null? 0: items.length,
                    scrollDirection: Axis.vertical,
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
                                //Text(items[index].gender.toString()),
                                Text(items[index].actor.toString()),

                              ],
                            ),
                          ),
                        ),
                      );
                    }, gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                );
              }else{
                return const Center(child: CircularProgressIndicator(),);
              }
            },
          )
      ),
    );
  }
}



// class SeeAllScreen extends StatefulWidget {
//   const SeeAllScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SeeAllScreen> createState() => _SeeAllScreenState();
// }
//
// class _SeeAllScreenState extends State<SeeAllScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  SizedBox(
//           height: 250,
//           width: 500,
//           child: FutureBuilder(
//             future: readJsonData(),
//             builder: (context,data){
//               if(data.hasError){
//                 return Center(child: Text("${data.error}"));
//               }else if(data.hasData){
//                 var items =data.data as List<HarryPotterModel>;
//                 return ListView.builder(
//                     itemCount: items == null? 0: items.length,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (context,index){
//                       return Card(
//                         child: Container(
//                           width: 160.0,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: <Widget>[
//                               Container(
//                                 width: 50,
//                                 height: 50,
//                                 child: Image(image: NetworkImage(items[index].image.toString()),fit: BoxFit.fill,),
//                               ),
//                               Text(items[index].name.toString(),style: const TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold
//                               ),),
//                               Text(items[index].gender.toString()),
//                               Text(items[index].actor.toString()),
//
//                             ],
//                           ),
//                         ),
//                       );
//                     }
//                 );
//               }else{
//                 return const Center(child: CircularProgressIndicator(),);
//               }
//             },
//           )
//       ),
//     );
//   }
// }
