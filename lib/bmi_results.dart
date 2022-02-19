import 'package:flutter/material.dart';
import 'package:bmi_calculator/logic.dart';

class result extends StatefulWidget {
  int weight, height, age;
  result({required this.weight, required this.height, required this.age});

  @override
  _resultState createState() => _resultState();
}

class _resultState extends State<result> {
  Logic logic = Logic();
  double bmi = 0.0;
  @override
  void initState() {
    bmi = logic.bmiCalculation(widget.height, widget.weight);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        backgroundColor: Colors.indigo[900],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "BMI Results",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              '${bmi.toStringAsFixed(1)}',
              style: TextStyle(
                fontSize: 70,
                color: Colors.indigoAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
