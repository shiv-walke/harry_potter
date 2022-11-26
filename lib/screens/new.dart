import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:harry_porter/api/harry_potter_list.dart';
import 'package:harry_porter/screens/seeall_screen.dart';
import '../model/HarryPotterModel.dart';

Future<List<HarryPotterModel>>ReadJsonData() async{
  final jsondata = await rootBundle.rootBundle.loadString('assets/json/harry_potter_content.json');
  final list = json.decode(jsondata) as List<dynamic>;

  return list.map((e) => HarryPotterModel.fromJson(e)).toList();
}
class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const <Widget>[
          Card(child: ListTile(title: Text('One-line ListTile'))),
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('One-line with leading widget'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('One-line with trailing widget'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('One-line with both widgets'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('One-line dense ListTile'),
              dense: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 56.0),
              title: Text('Two-line ListTile'),
              subtitle: Text('Here is a second line'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 72.0),
              title: Text('Three-line ListTile'),
              subtitle: Text(
                  'A sufficiently long subtitle warrants three lines.'
              ),
              trailing: Icon(Icons.more_vert),
              isThreeLine: true,
            ),
          ),
        ],
      ),
      // body: Container(
      //   color: Colors.grey,
      //   child: SingleChildScrollView(
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         const Padding(
      //           padding: EdgeInsets.all(10.0),
      //           child: TextField(
      //             decoration: InputDecoration(
      //               hintText: 'Search ',
      //               focusedBorder: OutlineInputBorder(),
      //               enabledBorder: OutlineInputBorder(),
      //               suffixIcon: Icon(Icons.search),
      //               hintStyle: TextStyle(
      //                 fontSize: 14,
      //               ),
      //             ),
      //           ),
      //         ),
      //         const SizedBox(
      //           child:
      //           Padding(
      //             padding: EdgeInsets.all(10.0),
      //             child: Text("Caregories", style: TextStyle(fontSize: 15,),),
      //           ),
      //         ),
      //         // Container(
      //         //   color: Colors.white,
      //         //   child: Column(
      //         //     children: const [
      //         //       ListTile(
      //         //         leading: Icon(Icons.map),
      //         //         title: Text('Species'),
      //         //       ),
      //         //       ListTile(
      //         //         leading: Icon(Icons.photo_album),
      //         //         title: Text('Patronus'),
      //         //       ),
      //         //       ListTile(
      //         //         leading: Icon(Icons.library_books_rounded),
      //         //         title: Text('Hogwarts Student'),
      //         //       ),
      //         //       ListTile(
      //         //         leading: Icon(Icons.map),
      //         //         title: Text('Hogwarts Staff'),
      //         //       ),
      //         //       ListTile(
      //         //         leading: Icon(Icons.photo_album),
      //         //         title: Text('Actor'),
      //         //       ),
      //         //       ListTile(
      //         //         leading: Icon(Icons.library_books_rounded),
      //         //         title: Text('Wand'),
      //         //       ),
      //         //     ],
      //         //   ),
      //         // ),
      //         Padding(
      //           padding: const EdgeInsets.only(
      //               left: 5.0, top: 1.0, bottom: 1.0, right: 5.0),
      //           child: Row(
      //             children: [
      //               const Text('Recommended For You',style: TextStyle(fontSize: 15, ), ),
      //               const Expanded(
      //                   child: Padding(
      //                     padding: EdgeInsets.only(left: 10.0, top: 7.0, right: 10.0),
      //                     child: Divider(
      //                       color: Colors.white,
      //                       height: 1.0,
      //                       thickness: 1.0,
      //                     ),
      //                   )),
      //               Padding(
      //                 padding: const EdgeInsets.only(top: 1.0, right: 3.0),
      //                 child: TextButton(
      //                     onPressed: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                           builder: (context) => const SeeAllScreen(),
      //                         ),
      //                       );
      //                     },
      //                     child: const Text(
      //                       'View All',
      //
      //                     )),
      //               ),
      //             ],
      //           ),
      //         ),
      //         const SizedBox(
      //             height: 250,
      //             width: 500,
      //             child: HarryPotterList(),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
