import 'package:flutter/material.dart';
import 'package:test_1/page2.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      body: Container(

          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [const Color(0xAA13CD06), const Color(0xAA2296F3)],
              )
          ),
          padding: const EdgeInsets.fromLTRB(10.0, 70.0, 10.0, 0.0),
          child: Column(
            children: <Widget>[
              Image(
                image:AssetImage('assets/logo.png') ,
                height: 250.0,
              ),
              SizedBox(height: 20.0,),
              Container(
                height: 300.0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.3,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(25.0),
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.circular(10.0),
                          border: new Border.all(
                            width: 5.0,
                            color: Colors.white,
                          ),
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: <Widget>[
                            TextField(
                              controller: username,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.account_circle, size: 25.0,),
                                  border: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0)
                                  ),
                                  hintText: "Enter a Username",
                                  hintStyle: TextStyle(fontSize: 17.0),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                      vertical: 30.0
                                  )
                              ),

                            ),
                            TextField(
                              controller: password,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock, size: 25.0,),
                                  suffixIcon: Icon(Icons.remove_red_eye, size: 25.0,),
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(fontSize: 17.0),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 30.0,
                                      vertical: 30.0
                                  )
                              ),

                            ),
                            SizedBox(height: 20.0,),

                          ],
                        ),
                      ),
                      Positioned(
                        top: 210.0,
                        bottom: 10.0,
                        child: Container(
                          width: 200.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Builder(
                               builder: (context) => Center(
                                child: RaisedButton(
                                  padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 16.0),
                                  color: Colors.lightBlueAccent,
                                  elevation: 10.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),),
                                  onPressed: (){
                                    _showToast(context);
                                  Navigator.of(context).push(
                                            MaterialPageRoute(
                                               builder: (context) => Page2() )
                                      );
                                  },
                                  child: new Text("LOGIN", style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 1.0
                                  ),),
                                ),
                               ),
                              )
                            ],
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          )


      ),


    );
  }
  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
        SnackBar(
          content: const Text('Logged Out Successfully'),
        ),
      );

  }
}
