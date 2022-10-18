import 'package:flutter/material.dart';

import 'resultbmi.dart';

class BmiCalculator extends StatefulWidget {
  double height;
  int weight;
  int age;
  // const BmiCalculator({Key? key}) : super(key: key);
   BmiCalculator({
    required this.height,
     required this.weight,
     required this.age,
  });

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  Widget INbutton(
    IconData bIcon,
    void Function() bfuntion,
  ) {
    return Container(
      width: 58,
      height: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xff4c4f5e),
      ),
      child: IconButton(
        icon: Icon(
          bIcon,
          // Icons.remove,
          size: 35, color: Colors.white,
        ),
        onPressed: bfuntion,
      ),
    );
  }

  double _currentSliderValue = 0;
  // double height = 0;
  // int weight = 0;
  // int age=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text(
              'BMI CALCULATOR',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Color(0xff0a0e21)),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15),
        width: double.infinity,
        height: double.infinity,
        color: Color(0xff0a0e21),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: GridView.count(
                crossAxisCount: 2,
                // mainAxisSpacing: 10,
                crossAxisSpacing: 22,
                shrinkWrap: true,
                childAspectRatio: 1 / 1.27,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Color(0xff111328),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          size: 80,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'MALE',
                          style:
                              TextStyle(fontSize: 20, color: Color(0xff5b5d6b)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Color(0xff111328),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          size: 80,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'FEMALE',
                          style:
                              TextStyle(fontSize: 20, color: Color(0xff5b5d6b)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xff1D1E33),
                  borderRadius: BorderRadius.circular(9)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(color: Color(0xff5b5d6b), fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          '${widget.height}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 55,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          'cm',
                          style:
                              TextStyle(fontSize: 20, color: Color(0xff5b5d6b)),
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: Colors.white,
                    inactiveColor: Color(0xff5b5d6b),
                    thumbColor: Color(0xffeb1555),
                    value: _currentSliderValue,
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                        widget.height = _currentSliderValue;
                      });
                    },
                    max: 250,
                    divisions: 200,
                    label: _currentSliderValue.round().toString(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 1 / 1.29,
              crossAxisSpacing: 22,
              shrinkWrap: true,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Color(0xff1D1E33)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff5b5d6b)),
                      ),
                      Text(
                        '${widget.weight}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 55,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          INbutton(Icons.remove, () {
                            setState(() {
                              if (widget.weight <= 0) {
                                return null;
                              } else {
                                widget.weight--;
                              }
                            });
                          }),
                          SizedBox(
                            width: 10,
                          ),
                          INbutton(Icons.add, () {
                            setState(() {
                              widget.weight=widget.weight+5;
                            });
                          }),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Color(0xff1D1E33)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff5b5d6b)),
                      ),
                      Text(
                        '${widget.age}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 55,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          INbutton(Icons.remove, () {
                            setState(() {
                              if(widget.age<=0){
                                return null;
                              }else{
                                widget.age--;
                              }
                            });
                          }),
                          SizedBox(
                            width: 10,
                          ),
                          INbutton(Icons.add, () {
                            setState(() {
                              widget.age=widget.age+3;
                            });
                          })
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffeb1555)),
                child: TextButton(
                  onPressed: () {

                 if(widget.height==0||widget.weight==0||widget.age==0){
                   return null;
                 }
                 else {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Result(widget.height,widget.weight,widget.age)));
                 }

                  },
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
