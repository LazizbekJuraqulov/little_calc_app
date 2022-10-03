import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: Calculators(),
    ),
  );
}

class Calculators extends StatefulWidget {
  const Calculators({Key? key}) : super(key: key);

  @override
  State<Calculators> createState() => _CalculatorsState();
}

class _CalculatorsState extends State<Calculators> {
  List<String> calcul = [];
  bool isEqualed = false;
  bool isMinus=true;
  double foiz=0;
  double javob = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            "Calculators",
            style: TextStyle(fontSize: 35, color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                ///fsdfsdfs
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: isEqualed
                        ? Text(
                            javob.toString(),
                            style: TextStyle(fontSize: 55, color: Colors.white),
                          )
                        : Text(
                            calcul.join(),
                            style: TextStyle(fontSize: 55, color: Colors.white),
                          ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 70),
                      shape: CircleBorder(),
                      primary: Colors.grey,
                    ),
                    onPressed: (() {
                      if (calcul.isNotEmpty) {
                        calcul.clear();
                      }

                      setState(() {
                        javob = 0;
                      });
                    }),
                    child: const Text(
                      "C",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 70),
                      shape: CircleBorder(),
                      primary: Colors.orange,
                    ),
                    onPressed: (() {
                      qoshishFunc("*");
                    }),
                    child: const Text(
                      "*",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 70),
                      shape: CircleBorder(),
                      primary: Colors.orange,
                    ),
                    onPressed: (() {
                      qoshishFunc("/");
                    }),
                    child: Text(
                      "/",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 70),
                      shape: CircleBorder(),
                      primary: Colors.grey,
                    ),
                    onPressed: (() {
                      if (calcul.isNotEmpty) {
                        calcul.removeLast();
                      }
                      setState(() {});
                    }),
                    child: const Text(
                      "<=",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 70),
                      shape: CircleBorder(),
                      primary: Colors.grey[850],
                    ),
                    onPressed: (() {
                      qoshishFunc("1");
                    }),
                    child: const Text(
                      "1",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 70),
                      shape: CircleBorder(),
                      primary: Colors.grey[850],
                    ),
                    onPressed: (() {
                      qoshishFunc("2");
                    }),
                    child: const Text(
                      "2",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 70),
                      shape: CircleBorder(),
                      primary: Colors.grey[850],
                    ),
                    onPressed: (() {
                      qoshishFunc("3");
                    }),
                    child: const Text(
                      "3",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 70),
                      shape: CircleBorder(),
                      primary: Colors.orange,
                    ),
                    onPressed: (() {
                      qoshishFunc("-");
                    }),
                    child: const Text(
                      "-",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 70),
                      shape: CircleBorder(),
                      primary: Colors.grey[850],
                    ),
                    onPressed: (() {
                      qoshishFunc("4");
                    }),
                    child: Text(
                      "4",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 70),
                      shape: CircleBorder(),
                      primary: Colors.grey[850],
                    ),
                    onPressed: (() {
                      qoshishFunc("5");
                    }),
                    child: Text(
                      "5",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 70),
                      shape: CircleBorder(),
                      primary: Colors.grey[850],
                    ),
                    onPressed: (() {
                      qoshishFunc("6");
                    }),
                    child: Text(
                      "6",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(70, 70),
                        shape: CircleBorder(),
                        primary: Colors.orange),
                    onPressed: (() {
                      qoshishFunc("+");
                    }),
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 70),
                      shape: CircleBorder(),
                      primary: Colors.grey[850],
                    ),
                    onPressed: (() {
                      qoshishFunc("7");
                    }),
                    child: Text(
                      "7",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 70),
                      shape: CircleBorder(),
                      primary: Colors.grey[850],
                    ),
                    onPressed: (() {
                      qoshishFunc("8");
                    }),
                    child: Text(
                      "8",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 70),
                      shape: CircleBorder(),
                      primary: Colors.grey[850],
                    ),
                    onPressed: (() {
                      qoshishFunc("9");
                    }),
                    child: const Text(
                      "9",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 70),
                      shape: CircleBorder(),
                      primary: Colors.orange,
                    ),
                    onPressed: (() {
                      foizniKorsat(calcul);
                      
                    }),
                    child: Text(
                      "%",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 70),
                      shape: CircleBorder(),
                      primary: Colors.grey[850],
                    ),
                    onPressed: (() {
                      qoshishFunc("00");
                    }),
                    child: Text(
                      "00",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 70),
                      shape: CircleBorder(),
                      primary: Colors.grey[850],
                    ),
                    onPressed: (() {
                      qoshishFunc(".");
                    }),
                    child: Text(
                      ".",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 70),
                      shape: CircleBorder(),
                      primary: Colors.grey[850],
                    ),
                    onPressed: (() {
                      qoshishFunc("0");
                    }),
                    child: Text(
                      "0",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 70),
                      shape: CircleBorder(),
                      primary: Colors.orange,
                    ),
                    onPressed: (() {
                      isEqualed = true;
                      hisobla(calcul);
                    }),
                    child: Text(
                      "=",
                      style: TextStyle(fontSize: 25, color: Colors.yellow),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
          //
        ),
      ),
    );
  }

  qoshishFunc(String belgi) {
    var last = calcul.isNotEmpty ? calcul.last : "";
    isEqualed ? isEqualed = false : null;
    if (belgi == "+" || belgi == "*" || belgi == "/"||belgi=="."||belgi=="%"||belgi=="-") {
      if (last != "+" && last != "*" && last != "/"&&last!="-") {
        if (calcul.isNotEmpty || belgi == "-"){
          calcul.add(belgi);
        }
        //ksksksk
      } else {
        calcul.removeLast();
        calcul.add(belgi);
      }
    } else {
      calcul.add(belgi);
      isEqualed ? isEqualed = false : null;
    }
    setState(() {});
  }
  //asdadad

  hisobla(List<String> sonlar) {
    var last = sonlar.last;
    if (last == "+" || last == "-" || last == "*" || last == "/") {
      sonlar.removeLast();
    }
    String son = sonlar.join();
    Parser p = Parser();
    Expression exp = p.parse(son);
    javob = exp.evaluate(EvaluationType.REAL, ContextModel());
    debugPrint(javob.toString());
    calcul.clear();
    setState(() {});
  }

foizniKorsat(List<String> sonlar) {
  
    isEqualed = true;
    var last =isEqualed? "":sonlar.last;
    if (last == "-" || last == "+" || last == "*" || last == "/" || last == "%" || last == ".") {
      sonlar.removeLast();
    }

    String son = sonlar.join();

    Parser p = Parser();

    Expression exp = p.parse(son);

    javob = exp.evaluate(EvaluationType.REAL, ContextModel())/100;

    debugPrint(javob.toString());

    calcul.clear();
    calcul.add(javob.toString());
    setState(() {});

    
  }
  
  }

