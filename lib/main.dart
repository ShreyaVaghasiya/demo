import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "BMI Calculator",
            style: GoogleFonts.lato(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color(0xff090E21),
        ),
        body: const BMIApp(),
        backgroundColor: const Color(0xff090E21),
      ),
    ),
  );
}

class BMIApp extends StatefulWidget {
  const BMIApp({Key? key}) : super(key: key);

  @override
  State<BMIApp> createState() => _BMIAppState();
}

class _BMIAppState extends State<BMIApp> with SingleTickerProviderStateMixin {
  String male = '';
  String female = '';
  double ans1 = 0;
  double ans2 = 0;
  int m = 0;
  String ans3 = 'BMI Categories';
  double meter = 0;
  int weight = 0;
  int age = 2;
  String xender = '';
  double ans = 0;
  AnimationController? controller;
  double targetValue = 48.0;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Border ans = Border.all(
                            color: Colors.white,
                            width: 50,
                          );
                          xender = 'female';
                        });
                      },
                      borderRadius: BorderRadius.circular(5),
                      child: WidgetAnimator(
                        incomingEffect:
                            WidgetTransitionEffects.incomingSlideInFromTop(
                                duration: Duration(seconds: 6)),
                        child: Container(
                            height: h,
                            width: w,
                            decoration: BoxDecoration(
                              color: const Color(0xff1D1E33),
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: (xender == 'female')
                                    ? Colors.white
                                    : const Color(0xff1d1e33),
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "👧",
                                style: TextStyle(
                                  fontSize: 70,
                                ),
                              ),
                            )),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          xender = 'male';
                        });
                      },
                      borderRadius: BorderRadius.circular(5),
                      child: WidgetAnimator(
                        incomingEffect:
                            WidgetTransitionEffects.incomingSlideInFromTop(
                                duration: Duration(seconds: 6)),
                        child: Container(
                            height: h,
                            width: w,
                            decoration: BoxDecoration(
                              color: const Color(0xff1D1E33),
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: (xender == 'male')
                                    ? Colors.white
                                    : const Color(0xff1d1e33),
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "👨",
                                style: TextStyle(
                                  fontSize: 70,
                                ),
                              ),
                            )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: WidgetAnimator(
                incomingEffect: WidgetTransitionEffects.incomingSlideInFromTop(
                    duration: Duration(seconds: 5)),
                child: Container(
                  height: h,
                  width: w,
                  decoration: BoxDecoration(
                    color: const Color(0xff1D1E33),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "HEIGHT",
                        style: GoogleFonts.lato(
                          color: Colors.white.withOpacity(0.4),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${ans.toInt()}",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 50,
                            ),
                          ),
                          Text(
                            "cm",
                            style: GoogleFonts.lato(
                              fontSize: 17,
                              color: Colors.white.withOpacity(0.4),
                            ),
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: const SliderThemeData(
                            trackHeight: 1,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 7),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 1)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Slider(
                            min: 0,
                            max: 200,
                            onChanged: (double e) {
                              setState(() {
                                ans = e;
                              });
                            },
                            activeColor: const Color(0xff685C67),
                            inactiveColor: const Color(0xff43434A),
                            value: ans,
                            thumbColor: const Color(0xffEB1555),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: WidgetAnimator(
                      incomingEffect:
                          WidgetTransitionEffects.incomingSlideInFromTop(
                              duration: Duration(seconds: 4)),
                      child: Container(
                        height: h,
                        width: w,
                        decoration: BoxDecoration(
                          color: const Color(0xff1D1E33),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text("Weight",
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "$weight",
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 50,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (weight > 0) {
                                        weight--;
                                      } else {
                                        weight = 0;
                                      }
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    height: 45,
                                    width: 45,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff4C4F5E),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.remove,
                                      size: 30,
                                      color: Color(0xff878993),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    height: 45,
                                    width: 45,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff4C4F5E),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      size: 30,
                                      color: Color(0xffEB1555),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: WidgetAnimator(
                      incomingEffect:
                          WidgetTransitionEffects.incomingSlideInFromTop(
                              duration: Duration(seconds: 4)),
                      child: Container(
                        height: h,
                        width: w,
                        decoration: BoxDecoration(
                          color: const Color(0xff1D1E33),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text("Age",
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "$age",
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 50,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (age > 2) {
                                        age--;
                                      } else {
                                        age = 2;
                                      }
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    height: 45,
                                    width: 45,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff4C4F5E),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.remove,
                                      size: 30,
                                      color: Color(0xff878993),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    height: 45,
                                    width: 45,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff4C4F5E),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      size: 30,
                                      color: Color(0xffEB1555),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: WidgetAnimator(
                      incomingEffect:
                          WidgetTransitionEffects.incomingSlideInFromTop(
                              duration: Duration(seconds: 3)),
                      child: Container(
                        height: h / 11,
                        width: w,
                        decoration: BoxDecoration(
                          color: const Color(0xff1D1E33),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            WidgetAnimator(
                              incomingEffect: WidgetTransitionEffects
                                  .incomingSlideInFromLeft(
                                      duration: Duration(seconds: 6)),
                              child: Text(
                                "${ans2.toStringAsFixed(2)}",
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40,
                                ),
                              ),
                            ),
                            Text(
                              "$ans3",
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          m = ans.toInt();
                          if (xender == 'male' || xender == 'female') {
                            if (age >= 2) {
                              meter = ans / 100;
                              ans1 = meter * meter;
                              ans2 = weight / ans1;
                              if (ans2 <= 18) {
                                ans3 = 'Underweight';
                              } else if (ans2 >= 18 && ans2 <= 25) {
                                ans3 = 'Normal weight';
                              } else if (ans2 >= 25 && ans2 <= 29) {
                                ans3 = 'Overweight';
                              } else {
                                ans3 = 'Obesity';
                              }
                            }
                          }
                        });
                      },
                      child: WidgetAnimator(
                        incomingEffect:
                            WidgetTransitionEffects.incomingSlideInFromBottom(
                                duration: Duration(seconds: 2)),
                        child: Container(
                          height: h / 11,
                          width: w,
                          decoration: BoxDecoration(
                            color: Color(0xffEB1555),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: WidgetAnimator(
                            incomingEffect:
                                WidgetTransitionEffects.incomingSlideInFromLeft(
                                    duration: Duration(seconds: 6)),
                            child: Text(
                              "Calculate",
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
