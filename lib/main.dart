import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DMC',
      theme: ThemeData(
        //primarySwatch: Colors.blueGrey,
      ),
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
  late int eng, urdu, math, pakStudy, isl;
  String obtMarks = "Obtained Marks";
  String percentage = "Percentage";
  String grade = "Grade";
  String? teacherName;

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('DMC PROJECT')),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
           // color: Colors.pink,
            decoration: BoxDecoration(
              borderRadius:  BorderRadius.circular(16.0),
              color: Colors.white,
            ),
            child: Form(
              key: formKey,

              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    ' STUDENT DMC',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    // decoration: const InputDecoration(
                    //   hintText: "Enter Teacher Name:",
                    // ),
                    decoration: InputDecoration(
                      hintText: 'Enter Teacher Name:',
                      //filled: true,
                      //fillColor: Colors.blueGrey,
                      // enabledBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(16),
                      //   borderSide: BorderSide(
                      //     color: Colors.red,
                      //     width: 4,
                      //   ),
                      // ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                    ),

                    validator: (txt) {
                      if (txt == null || txt.length < 5) {
                        return ' Provide Teacher Name ';
                      }
                      teacherName = txt;
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    maxLength: 2,
                    decoration: InputDecoration(
                      hintText: "Enter English marks",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                    ),
                    validator: (String? txt) {
                      if (txt == null || txt.isEmpty) {
                        return 'Provide English Marks ';
                      }
                      eng = int.parse(txt);

                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    maxLength: 2,
                    decoration: InputDecoration(
                      hintText: "Enter Urdu marks:",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                    ),
                    validator: (String? txt) {
                      if (txt == null || txt.isEmpty) {
                        return 'Provide Urdu Marks ';
                      }
                      urdu = int.parse(txt);

                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    maxLength: 2,
                    decoration: InputDecoration(
                      hintText: "Enter Math marks:",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                    ),
                    validator: (String? txt) {
                      if (txt == null || txt.isEmpty) {
                        return 'Provide Math Marks ';
                      }
                      math = int.parse(txt);

                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    maxLength: 2,
                    decoration: InputDecoration(
                      hintText: "Enter Pak Study marks:",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                    ),
                    validator: (String? txt) {
                      if (txt == null || txt.isEmpty) {
                        return 'Provide Pak Study Marks ';
                      }
                      pakStudy = int.parse(txt);

                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    maxLength: 2,
                    decoration: InputDecoration(
                      hintText: "Enter Islamyat marks:",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                    ),
                    validator: (txt) {
                      if (txt == null || txt.isEmpty) {
                        return 'Provide Islamyat Marks ';
                      }
                      isl = int.parse(txt);

                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                          onPressed: () {
                            formKey.currentState!.reset();
                            setState(() {
                              obtMarks = '';
                              percentage = '';
                              grade = '';
                            });
                            },
                          child: const Text('Clear'),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              Fluttertoast.showToast(
                                msg: "Valid",
                                backgroundColor: Colors.green,
                              );

                              int obtainedmarks =
                                  eng + urdu + math + pakStudy + isl;
                              double percentage = obtainedmarks * 100 / 500;

                              setState(() {
                                obtMarks = "Obtained Marks : $obtainedmarks";
                                this.percentage = "Percentage : $percentage";

                                grade = "Grade :${decideGrade(percentage)}";
                              });
                            } else {
                              Fluttertoast.showToast(
                                  msg: 'Invalid', backgroundColor: Colors.red);
                            }
                          },
                          child: const Text('Calculate'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  
                  Text(obtMarks, style: TextStyle(fontSize: 20, ),
                  ),

                  
                  Text(percentage, style: TextStyle(fontSize: 20,),
                  ),
                  Text(grade, style: TextStyle(fontSize: 20,),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String decideGrade(double percentage) {
    if (percentage >= 90) {
      return 'A+';
    } else if (percentage >= 80) {
      return 'A';
    } else if (percentage >= 70) {
      return 'B';
    } else if (percentage >= 60) {
      return 'C';
    } else if (percentage >= 50) {
      return 'D';
    } else if (percentage >= 40) {
      return 'E';
    } else {
      return "Fail";
    }
  }
}
