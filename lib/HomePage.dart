import 'package:flutter/material.dart';
import 'package:test_class/result_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int age = 34;
  double weight = 67.5;

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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage()));
              ;
            },
            child: Text(
              'Calculator yout bmi'.toUpperCase(),
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Text('BMI Calculator'.toUpperCase()),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 10),
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: double.infinity,
          color: Colors.blueGrey.shade900,
          child: Column(children: [
            // General Widget
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 175,
                    width: 175,
                    color: Colors.grey.shade800,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 70,
                          ),
                          Text(
                            'Male'.toUpperCase(),
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )
                        ]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 175,
                    width: 175,
                    color: Colors.grey.shade800,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            color: Colors.white,
                            size: 70,
                          ),
                          Text(
                            'Female'.toUpperCase(),
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )
                        ]),
                  )
                ],
              ),
            ),

            // height widget
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey.shade800,
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Column(
                children: [
                  Text(
                    'height'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: '183',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 44,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: '   '),
                    TextSpan(
                      text: 'cm',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ])),
                  SizedBox(
                    height: 10,
                  ),
                  Slider(
                      activeColor: Colors.white,
                      thumbColor: Colors.pink,
                      value: 100.89,
                      min: 40,
                      max: 200,
                      onChanged: (value) {})
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            // age and weight
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Container(
                    height: 175,
                    width: 175,
                    color: Colors.grey.shade800,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'age'.toUpperCase(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade700,
                              ),
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 32,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade700),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 32,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 175,
                    width: 175,
                    color: Colors.grey.shade800,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'weight'.toUpperCase(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade700,
                              ),
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 32,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade700),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 32,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            SizedBox(
              height: 15,
            ),
          ]),
        ),
      ),
    );
  }
}
