import 'package:bmi_calculator/calculate.dart';
import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';

class BMI_calculator extends StatefulWidget {
  const BMI_calculator({Key? key}) : super(key: key);

  @override
  _BMI_calculator createState() => _BMI_calculator();
}

class _BMI_calculator extends State<BMI_calculator> {
  int height=5;
  int wight =60;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
      appBar: AppBar(

      title: Center(
        child: Text("BMI Calculator",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
        ),
      ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Container(
                height: 120,
                width: 300,
                color: Colors.orangeAccent,
                child: Column(
                 children: [
                   Text("HEIGHT",
                   style: TextStyle(
                     fontSize: 20,
                     color: Colors.white,
                   ),),
                   SizedBox(height: 15),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("$height",
                         style: TextStyle(
                           fontSize: 20,
                           color: Colors.black,
                         ),),
                       Text("m",
                         style: TextStyle(
                           fontSize: 10,
                           color: Colors.black,
                         ),),
                     ],

                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       FlatButton(
                           onPressed: (){
                             setState(() {
                               height++;
                               print("object");
                             });
                           },
                           child: Icon(Icons.add),
                       ),
                       Container(
                         width: 90,
                         child: TextField(
                           decoration: InputDecoration(
                             hintText: 'HEIGHT',
                             border: OutlineInputBorder(),
                           ),
                           keyboardType: TextInputType.number,
                           onChanged: (input){
                             height=int.parse(input);
                           },
                         ),

                       ),


                       FlatButton(
                         onPressed: (){
                           setState(() {
                             height--;
                             print("object");
                           });
                         },
                         child: Icon(Icons.remove),
                       ),
                     ],
                   ),

                 ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                height: 120,
                width: 300,
                color: Colors.orangeAccent,
                child: Column(
                  children: [
                    Text("WIGHT",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    SizedBox(height: 15),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("$wight",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),),
                        Text("kg",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),),
                        SizedBox(height: 15),
                      ],


                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                          onPressed: (){
                            setState(() {
                              wight++;
                              print("object");
                            });
                          },
                          child: Icon(Icons.add),
                        ),
                        Container(
                          width: 100,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'WIGHT',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.number,
                            onChanged: (input){
                              height=int.parse(input);
                            },

                          ),
                        ),



                        // Text(wight.toString(),
                        //   style: TextStyle(
                        //     fontSize: 30,
                        //     color: Colors.white,
                        //   ),),

                        FlatButton(
                          onPressed: (){
                            setState(() {
                              wight--;
                              print("object");
                            });
                          },
                          child: Icon(Icons.remove),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            Center(
              child: RaisedButton(

                onPressed: (){
                  Calculate cal= Calculate(height: height, wight: wight);
                  print("sina");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Result(f: cal.feed(), r: cal.cal())));

                },
                child: Text('Calculate',
                ) ,
              ),

            ),


            // ConstrainedBox(
            //   constraints: const BoxConstraints.tightFor(width: 100),
            //   child: const TextField(
            //     decoration: InputDecoration(
            //       hintText: 'WIGHT',
            //       border: OutlineInputBorder(),
            //     ),
            //   ),
            // ),




          ],
        ),
      ),
      ),
    );
  }
}
