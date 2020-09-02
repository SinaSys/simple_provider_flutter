import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String data = "This is text from Root";
  @override
  Widget build(BuildContext context) {
    return Provider<String>(
      create: (context)=>data,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Provider"),
          ),
          body: Level3(),
        ),
      ),
    );
  }
}






class Level1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: Level2(),
    );
  }
}


class Level2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      // child:Level3(),
    );
  }
}



class Level3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,height: 200, color: Colors.yellow,
      child: Text(Provider.of<String>(context),style: TextStyle(
          fontSize: 40,color: Colors.red
      ),),
    );
  }
}



