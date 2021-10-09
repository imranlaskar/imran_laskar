import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
String btnText1= "Button one";
Color btnColor1=Colors.blue;
Color  btnTextColor=Colors.black;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomepage(),
    );
  }
}
class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Frist App", style: TextStyle(color: Colors.blue),)
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              RaisedButton(
                color: btnColor1,
                child: Text(btnText1,style: TextStyle(color: btnTextColor),),
                  onPressed: (){
                  setState(() {
                    btnTextColor=Colors.white;
                    btnText1="Thank You";
                    btnColor1= Colors.brown;
                  });
                  }
              ),
              Image.asset("assets/images/Imran.jpg"),
            ],
          ),
        ),
      )

    );
  }
}
