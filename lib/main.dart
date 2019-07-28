import 'dart:js';
import 'dart:js_util';

import 'package:flutter_web/material.dart';
import 'package:flutter_web/rendering.dart';
import 'package:flutter_web_ui/ui.dart' as prif0;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food & Taste',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Food & Taste'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          elevation: 0.0,
          actions: <Widget>[
            MyButton(onPressed: (){},text: "About",),
            MyButton(onPressed: (){},text: "Blog",),
            MyButton(onPressed: (){},text: "Login",),
          ],
        ),
        body: ListView(
          controller: ScrollController(initialScrollOffset: 20.0, keepScrollOffset: true),
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(parent: ScrollPhysics()),
          children: <Widget>[Center(
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://images.pexels.com/photos/1268551/pexels-photo-1268551.jpeg'), 
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                width: width - 400,
                height: height - 200,
                color: Color.fromRGBO(0, 0, 0, 0.7),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage('https://images.pexels.com/photos/277253/pexels-photo-277253.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
                              )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Food', style: TextStyle(color: Colors.white, fontSize: 70, fontWeight: FontWeight.w400)),
                                Text('What you love to eat?', style: TextStyle(color: Colors.grey[200], fontSize: 20, fontWeight: FontWeight.w100))
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: (height/100)*5,
              width: width,
              color: Colors.grey[900],
            ),
          ),
          Center(
            child: Container(
              width: width,
              height: height,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: height,
                    width: width/2,
                    color: Colors.white,
                    child: Center(
                        child: Text(
                        "Lorem Ipsum is simply dummy\n text of the printing and typesetting industry\n. Lorem Ipsum has been the industry's standard\n dummy text ever since the 1500s, when\n an unknown printer took a galley of \ntype and scrambled it to make a type specimen\n book. It has survived not only five centuries, but also\n the leap into electronic typesetting, remaining\n essentially unchanged. It was popularised in the 1960s\n with the release of Letraset sheets containing Lorem Ipsum\n passages, and more recently with desktop publishing \nsoftware like Aldus PageMaker including versions of\n Lorem Ipsum", 
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center
                      ),
                    ),
                  ),
                  Container(
                    height: height,
                    width: width/2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://images.pexels.com/photos/1893609/pexels-photo-1893609.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Container(
                      color: Color.fromRGBO(0, 0, 0, 0.7),
                      child: Padding(
                        padding: const EdgeInsets.all(100.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusColor: Colors.orangeAccent,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  hintText: 'Type your email',
                                  hintStyle: TextStyle(fontSize: 15),
                                ),
                                style: TextStyle(
                                  fontSize: 20
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                obscureText: true,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusColor: Colors.orangeAccent,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  hintText: 'Type your password',
                                  hintStyle: TextStyle(fontSize: 15),
                                ),
                                style: TextStyle(
                                  fontSize: 20
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: MyButton(
                                    onPressed: (){},
                                    text: 'Join us',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: MyButton(
                                    onPressed: (){},
                                    text: 'Login',
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              height: height-300,
              width: width,
              color: Colors.grey[900],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    width: (width/100)*30,
                    height: height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 50.0, left: 30),
                          child: Text('Food & Taste', style: TextStyle(fontSize: 30, color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:30.0),
                          child: Text("Lorem Ipsum is simply dummy\n text of the printing and typesetting industry\n.Lorem Ipsum has been the industry's standard\ndummy text ever since the 1500s", style: TextStyle(color: Colors.white),),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: (width/100)*30,
                    height: height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 50.0, left: 30),
                          child: Text('Other Links', style: TextStyle(fontSize: 20, color: Colors.white, decoration: TextDecoration.underline),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:30.0, bottom: 10,),
                          child: Text("About", style: TextStyle(color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:30.0, bottom: 10,),
                          child: Text("Blog", style: TextStyle(color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:30.0, bottom: 10,),
                          child: Text("Gallary", style: TextStyle(color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:30.0, bottom: 10,),
                          child: Text("Privacy Policies", style: TextStyle(color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:30.0, bottom: 10,),
                          child: Text("Terms & Conditions", style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: (width/100)*30,
                    height: height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 20),
                          child: Text('Recieve newsletter', style: TextStyle(fontSize: 25, color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0,right: 100),
                          child: Container(
                            width: 350,
                            height: 50,
                            child: TextField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                focusColor: Colors.orangeAccent,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                hintText: 'Type your email',
                                hintStyle: TextStyle(fontSize: 14),
                              ),
                              style: TextStyle(
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        MyButton(
                          onPressed: (){},
                          text: "Submit",
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: (width/100)*10,
                    height: height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('https://i.pinimg.com/originals/41/28/2b/41282b58cf85ddaf5d28df96ed91de98.png'),
                                fit: BoxFit.contain
                              )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('https://png.pngtree.com/element_our/sm/20180626/sm_5b321ca31d522.png'),
                                fit: BoxFit.contain
                              )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('https://www.freeiconspng.com/uploads/logo-twitter-circle-png-transparent-image-1.png'),
                                fit: BoxFit.fill
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ), 
    );
  }
}

class MyButton extends StatelessWidget{
  GestureTapCallback onPressed;
  String text;
  MyButton({@required this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:8.0, bottom: 8.0, top:8.0),
      child: RawMaterialButton(
        fillColor: Colors.orangeAccent,
        splashColor: Colors.deepOrangeAccent,
        shape: StadiumBorder(),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w100, fontSize: 16)),
        ),
      ),
    );  
  }
}
