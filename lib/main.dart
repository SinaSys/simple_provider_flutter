import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context)=>Data(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: MyText(),
          ),
          body: Level1(),
        ),
      ),
    );
  }
}




class Level1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Level2(),
    );
  }
}

class Level2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextField(),
        Level3()
      ],
    );
  }
}

class MyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newText){
        Provider.of<Data>(context).changeString(newText);
      },
    );
  }
}

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<Data>(context,listen: false).data);
  }
}


class Level3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,height: 200, color: Colors.yellow,
      child: Text(Provider.of<Data>(context).data),
    );
  }
}

class Data extends ChangeNotifier{
  String data = "someDate";

  void changeString(String newString){
    data = newString;
    notifyListeners();
  }
}



