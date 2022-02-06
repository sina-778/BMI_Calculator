import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'bmi_calculator.dart';

class Result extends StatefulWidget {
  String f;
  String r;

  Result({required this.f,required this.r});

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Your Result",
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
                child: Text(widget.f.toString(),
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                  ),

                ),
              ),
              SizedBox(height: 40),

              Center(
                child: Text(widget.r.toString(),
                  style: TextStyle(
                    fontSize: 80,
                    color: Colors.orange,
                  ),

                ),
              ),
              Center(
                child: RaisedButton(

                  onPressed: (){
                    print("sina");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BMI_calculator()));

                  },
                  child: Text('Re-Calculate',
                  ) ,
                ),
              ),
            ],

          ),


        ),
      ),
    );
  }
}
