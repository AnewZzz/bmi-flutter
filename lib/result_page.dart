import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.bmiResult});

  final double bmiResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 65,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Re-Calculator yout bmi'.toUpperCase(),
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff0a0c23),
        leading: IconButton(
            onPressed: () {
              print('onPressed');
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_arrow_left_outlined)),
        title: Text('result page'.toUpperCase()),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 2.5),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 23),
        width: double.infinity,
        color: Colors.blueGrey.shade900,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your result'.toUpperCase(),
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade700,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    bmiResult < 18.5
                        ? 'UnderWeight'.toUpperCase()
                        : bmiResult > 18.5 && bmiResult < 24.9
                            ? 'Normal'.toUpperCase()
                            : bmiResult > 25 && bmiResult < 29.9
                                ? 'overweight'.toUpperCase()
                                : 'obesity'.toUpperCase(),
                    style: TextStyle(
                        color: bmiResult < 18.5
                            ? Colors.blue
                            : bmiResult > 18.5 && bmiResult < 24.9
                                ? Colors.lightGreen
                                : bmiResult > 25 && bmiResult < 29.9
                                    ? Colors.red.shade300
                                    : Colors.red.shade800,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: .25),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(bmiResult.toStringAsFixed(2),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 70,
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(
                    height: 25,
                  ),
                  Text('normal bmi range: '.toUpperCase(),
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text('18.5 - 22.5 kg/m2 ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      bmiResult < 18.5
                          ? 'you are underweight. \n Please eatch Much'
                              .toUpperCase()
                          : bmiResult > 18.5 && bmiResult < 24.9
                              ? 'You are perfectlly Normal \n Good job'
                                  .toUpperCase()
                              : bmiResult > 25 && bmiResult < 29.9
                                  ? 'You are Over weight \n Please diet'
                                      .toUpperCase()
                                  : 'You are increasingly overweight \n Go to diet soon.'
                                      .toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade600),
                      onPressed: () {},
                      child: Text(
                        'Save Result',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
