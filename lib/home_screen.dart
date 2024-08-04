import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final itemKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          InkWell(
            onTap: ()async{
              final context=itemKey.currentContext;
              await Scrollable.ensureVisible(context!);
            },
            child: Container(
              height: 100,
              color: Colors.green,
              child: Text("sssss"),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(

                  height: 300,
                  color: Colors.red,

                ),
                SizedBox(
                  height: 10,
                ),
                Container(

                  height: 300,
                  color: Colors.red,

                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  key: itemKey,
                  height: 300,
                  color: Colors.red,
                  child:Text("joololfolfollolflf") ,

                ),
                SizedBox(
                  height: 10,
                ),
                Container(

                  height: 300,
                  color: Colors.red,

                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
