import 'package:flutter/material.dart';
import 'package:test_1/gradientappbar.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: Text("Profile"),
        //centerTitle: true,
        //backgroundColor: Colors.lightBlueAccent,
      //),

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


            child: Stack(
                alignment: Alignment.topLeft,

                children: [

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width,
                      decoration: new BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/logo1.gif'),
                        height: 200.0,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 0.0,
                    bottom: 200.0,
                    child: Container(
                        padding: EdgeInsets.fromLTRB(75.0, 80.0, 0.0, 0.0),
                        child: FloatingActionButton(
                          elevation: 10.0,
                          child: Icon(
                            Icons.add, size: 40.0, color: Colors.white,),
                          backgroundColor: Colors.lightBlueAccent,

                          onPressed: () => {},
                        )
                    ),

                  ),
                  Positioned(
                    top: 250.0,
                    bottom: 10.0,
                    child: Container(
                        padding: EdgeInsets.fromLTRB(30.0, 90.0, 10.0, 0.0),
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(height: 20.0,),
                                Text("12", style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),),
                                Text("Posts", style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),),
                                SizedBox(height: 60.0,),
                                Text("27", style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),),
                                Text("Followers", style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),),
                                SizedBox(height: 60.0,),
                                Text("49", style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),),
                                Text("Following", style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),),
                              ],
                            ),

                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 10.0,),
                                Text("   Amrit Dash", style: TextStyle(color: Colors.white, fontSize: 45.0, fontWeight: FontWeight.bold),),
                                Text("       AOG Developer", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w400),),
                                SizedBox(height: 25.0,),
                                Container(
                                  padding: EdgeInsets.fromLTRB(35.0, 0.0, 30.0, 0.0),
                                  width: MediaQuery.of(context).size.width*0.8,
                                  child:
                                  Text("I was a coder and pretty much backend. Up untill then, I came to know the existance of Actions on Google. I realised that this would be the new generation's mobile application. Fast forward to the present, I am an Actions on Google Developer(still stuck with backend tough). With one Action published and few more still at beta. So, it's all pretty fresh, you know.", style: TextStyle(color: Colors.white, fontSize: 17.0), maxLines: 12, overflow: TextOverflow.ellipsis,),

                                )
                              ],
                            ),

                          ],
                        )

                    ),

                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*.12,
                    child: GradientAppBar("Profile"),

                  ),


                ])
        ));
  }
}
