import 'package:flutter/material.dart';

import 'Celsius.dart';
import 'Fahrenheit.dart';
import 'kevin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Midterm',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _Controller = TextEditingController();
  var Output = "";

  void Ctof() {
    double? cal = double.tryParse(_Controller.text);
    if(cal==null){
      setState(() {
        Output="Input Error !!!";
      });
    }else{
      var ans = C.c_f(cal);
      setState(() {
        Output = "${_Controller.text} Celsius = $ans Fahrenheit";
      });
    }

  }

  void Ctok() {
    double? cal = double.tryParse(_Controller.text);
    if(cal==null){
      setState(() {
        Output="Input Error !!!";
      });
    }else{
      var ans = C.c_k(cal);
      setState(() {
        Output = "${_Controller.text} Celsius = $ans Kelvin";
      });
    }
  }

  void Ftoc() {
    double? cal = double.tryParse(_Controller.text);
    if(cal==null){
      setState(() {
        Output="Input Error !!!";
      });
    }else{
      var ans = F.f_c(cal);
      setState(() {
        Output = "${_Controller.text} Fahrenheit = $ans Celsius";
      });
    }
  }

  void Ftok() {
    double? cal = double.tryParse(_Controller.text);
    if(cal==null){
      setState(() {
        Output="Input Error !!!";
      });
    }else{
      var ans = F.f_k(cal);
      setState(() {
        Output = "${_Controller.text} Fahrenheit = $ans Kelvin";
      });
    }
  }

  void Ktoc() {
    double? cal = double.tryParse(_Controller.text);
    if(cal==null){
      setState(() {
        Output="Input Error !!!";
      });
    }else{
      var ans = K.k_c(cal);
      setState(() {
        Output = "${_Controller.text} Kelvin = $ans Celsius";
      });
    }

  }

  void Ktof() {
    double? cal = double.tryParse(_Controller.text);
    if(cal==null){
      setState(() {
        Output="Input Error !!!";
      });
    }else{
      var ans = K.k_f(cal);
      setState(() {
        Output = "${_Controller.text} Kelvin = $ans Fahrenheit";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Midterm Exam',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.00),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Temperature Converter',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              Container(
                  padding: EdgeInsets.all(16.00),
                  decoration: BoxDecoration(
                    color: Colors.white, //สีพื้นหลังของ Container
                    border: Border.all(
                      width: 5.0,
                      color: Colors.orange,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orange.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      TextField(
                        controller: _Controller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter a temperature value to convert',
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 26,right: 4,left: 4,bottom: 4),
                            child: ElevatedButton(
                                onPressed: Ctof,
                            style: ElevatedButton.styleFrom(
                            primary: Colors.orange),
                                child: Text(
                                  'Celsius to Fahrenheit',
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 26,right: 4,left: 4,bottom: 4),
                            child: ElevatedButton(
                                onPressed: Ctok,
                                style: ElevatedButton.styleFrom(
                                primary: Colors.orange),
                                child: Text(
                                  'Celsius to Kelvin',
                                  style: TextStyle(color: Colors.black),
                                )),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 4,right: 4,left: 4,bottom: 4),
                            child: ElevatedButton(
                                onPressed: Ftoc,
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.orange),
                                child: Text(
                                  'Fahrenheit to Celsius',
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4,right: 4,left: 4,bottom: 4),
                            child: ElevatedButton(
                              onPressed: Ftok,
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange),
                              child: Text(
                                'Fahrenheit to Kelvin',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 4,right: 4,left: 4),
                            child: ElevatedButton(
                                onPressed: Ktoc,
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.orange),
                                child: Text(
                                  'Kelvin to Celsius',
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4,right: 4,left: 4),
                            child: ElevatedButton(
                                onPressed: Ktof,
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.orange),
                                child: Text(
                                  'Kelvin to Fahrenheit',
                                  style: TextStyle(color: Colors.black),
                                )),
                          )
                        ],
                      )
                    ],
                  )),
              Text(Output,style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}
