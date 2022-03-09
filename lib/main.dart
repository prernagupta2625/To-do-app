import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final mycontroller=TextEditingController();
  @override
  void dispose()
  {
    mycontroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
        Container(
          decoration:BoxDecoration(
          gradient: LinearGradient(
           begin:Alignment.topRight,
          end:Alignment.bottomLeft,
        colors:[
          Color(0xff833ab4),
          Color(0xfffd1d1d),
          Color(0xfffcb045),

        ]

          )
          ),//alignment:Alignment.center,
          child:Column(
            children: [Container(
              margin:EdgeInsets.only(top:150),
              child:Text("Instagram",
              style:TextStyle( fontSize:35,
                fontFamily: "instagramfont",

              ))

            ),Container(margin:EdgeInsets.fromLTRB(25, 30, 25, 0),
              decoration:BoxDecoration(

              ),
              child:TextField(
                decoration:InputDecoration(
                  hintText:"Username"
                ),
                controller:mycontroller,
              ),
            ),Container(  margin:EdgeInsets.fromLTRB(25, 25, 25, 0),
              decoration:BoxDecoration(),
              child:TextField(
                decoration:InputDecoration(
                    hintText:"Password"
                ),
                  controller:mycontroller,
              ),
            ),Container(  margin:EdgeInsets.fromLTRB(25, 40, 25, 0),
              padding:EdgeInsets.fromLTRB(120,0 ,110,0 ),
              decoration:BoxDecoration(
                border:Border.all(
                  color:Colors.lightBlue,
                  width:2,
                ),

              ),
              child:TextButton(
                style: ButtonStyle(),
                onPressed: () { },
                child: Text('Log-in',
                style:TextStyle(
                  fontSize:20,
                ),),
              )

            ),Container(  margin:EdgeInsets.only(top:170),
                decoration:BoxDecoration(),
                child:TextButton(
                  style: ButtonStyle(
                    //foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () { },
                  child: Text('Don"t have an account?Sing up here'),
                )

            ),]

          )
        )



    );
  }
}
