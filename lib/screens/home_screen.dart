import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:harry_porter/api/harry_potter_list.dart';
import 'package:harry_porter/model/HarryPotterModel.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:harry_porter/screens/seeall_screen.dart';



// Future<List<HarryPotterModel>>ReadJsonData() async{
//   final jsondata = await rootBundle.rootBundle.loadString('assets/json/harry_potter_content.json');
//   final list = json.decode(jsondata) as List<dynamic>;
//
//   return list.map((e) => HarryPotterModel.fromJson(e)).toList();
// }

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu_outlined, color: Colors.black,),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a Navigation Drawer')));}
            );
          },
        ),
        title: const Text('Home',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only( right: 20.0,),
            child: IconButton(
              icon: const Icon(CupertinoIcons.person_alt_circle, color: Colors.blue,size: 50,),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a Your Profile')));
              },
            ),
          ),
        ],
      ),

        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search ',
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.search),
                      hintStyle: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  child:
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("Caregories", style: TextStyle(fontSize: 15,),),
                  ),
                ),
                Container(
                  color: Colors.blueGrey,
                  child: Column(
                    children: const [
                      ListTile(
                        leading: Icon(Icons.map),
                        title: Text('Species'),
                      ),
                      ListTile(
                        leading: Icon(Icons.photo_album),
                        title: Text('Patronus'),
                      ),
                      ListTile(
                        leading: Icon(Icons.library_books_rounded),
                        title: Text('Hogwarts Student'),
                      ),
                      ListTile(
                        leading: Icon(Icons.map),
                        title: Text('Hogwarts Staff'),
                      ),
                      ListTile(
                        leading: Icon(Icons.photo_album),
                        title: Text('Actor'),
                      ),
                      ListTile(
                        leading: Icon(Icons.library_books_rounded),
                        title: Text('Wand'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 5.0, top: 1.0, bottom: 1.0, right: 5.0),
                  child: Row(
                    children: [
                      const Text('Recommended For You',style: TextStyle(fontSize: 15, ), ),
                      const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0, top: 7.0, right: 10.0),
                            child: Divider(
                              color: Colors.white,
                              height: 1.0,
                              thickness: 1.0,
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 1.0, right: 3.0),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SeeAllScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              'View All',

                            )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 250,
                  width: 500,
                  child: HarryPotterList(),
                  // child: FutureBuilder(
                  //   future: ReadJsonData(),
                  //   builder: (context,data){
                  //     if(data.hasError){
                  //       return Center(child: Text("${data.error}"));
                  //     }else if(data.hasData){
                  //       var items =data.data as List<HarryPotterModel>;
                  //       return ListView.builder(
                  //           itemCount: items == null? 0: items.length,
                  //           scrollDirection: Axis.horizontal,
                  //           itemBuilder: (context,index){
                  //             return Card(
                  //               child: Container(
                  //                 width: 160.0,
                  //                 child: Column(
                  //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //                   children: <Widget>[
                  //                     SizedBox(
                  //                       width: 50,
                  //                       height: 50,
                  //                       child: Image(image: NetworkImage(items[index].image.toString()),fit: BoxFit.fill,),
                  //                     ),
                  //                     Text(items[index].name.toString(),style: const TextStyle(
                  //                         fontSize: 16,
                  //                         fontWeight: FontWeight.bold
                  //                     ),),
                  //                     Text(items[index].gender.toString()),
                  //                     Text(items[index].actor.toString()),
                  //
                  //                   ],
                  //                 ),
                  //               ),
                  //             );
                  //           }
                  //       );
                  //     }else{
                  //       return const Center(child: const CircularProgressIndicator(),);
                  //     }
                  //   },
                  // )
                ),
              ],
            ),
          ),
        ),
    );
  }
}
