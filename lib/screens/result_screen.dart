import 'package:flutter/material.dart';
import 'package:qiuzpro/screens/artchoice_screen.dart';

class result extends StatefulWidget {
  int marks;
  result({Key ? key, required this.marks}): super(key:key);
  //({super.key});

  @override
  State<result> createState() => _resultState(marks);
}

class _resultState extends State<result> {
  int marks;
  _resultState(this.marks);
  List <String> images=[
    "images/bad.png",
    "images/notbad.png",
    "images/gooog.png",

  ];
  String message="";
  String image="";

  @override
  void initState(){
    if(marks<20){
      image=images[0];
      message="you can try again \n"+"your score $marks";

    }else if(marks<35){
      image=images[1];
      message="you can try again and do better \n"+ "your score $marks";
    }else{
      image=images[2];
      message="you well done \n"+ "your score $marks";
    }
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RESULT AT"),centerTitle: true,
      ),
      body: Column(
        children:<Widget> [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(child: Text("QUIZ STAR",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(child: Text("Challenge make great!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
            ),
          ),
          SizedBox(height: 70,),
          Container(
            child: Column(
              children:<Widget>[
                Material(
                  child: Container(
                    width: 120.0,
                    child: ClipRect(
                      child: Image(
                        image: AssetImage(
                            image
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 10.0,
                )),
                Center(
                  child: Text(message,
                    textAlign: TextAlign.center,style: TextStyle(fontSize: 15.0),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width:50,),
                    Flexible(
                      child: Divider(
                        color: Colors.black,
                        height: 2,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,

                      ),
                    ),
                    Text("My record",style: TextStyle(fontSize: 20, color: Colors.black),),
                    Flexible(
                      child: Divider(
                        color: Colors.black,
                        height: 2,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,

                      ),
                    ),
                    SizedBox(width: 50,),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 50,),
                    Text("Wins"),
                    Text(marks.toString(),style: TextStyle(fontSize: 24,color: Colors.blue),),
                    Text("losses"),
                    Text((100-marks).toString(),style: TextStyle(fontSize: 24,color: Colors.black),),
                    SizedBox(width: 50,),

                  ],
                ),
                SizedBox(height: 80,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => artchoice(), ));
                      },
                      child: Text("Continue",style: TextStyle(fontSize: 25.0),
                      ),

                    )
                  ],
                )

              ],
            ),

          )
        ],
      ),
    );
    return const Placeholder();
  }
}
