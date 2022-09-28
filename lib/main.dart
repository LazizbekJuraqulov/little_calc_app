
import 'package:flutter/material.dart';


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
  List calcul = [];
  bool 
  double javob=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Calculators",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://static3.depositphotos.com/1005155/204/i/450/depositphotos_2043776-stock-photo-arithmetic.jpg"),
          ),
        ),
        child: Column(
          
          
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //const Padding(padding: EdgeInsets.all(50)),
            Container(
              padding: EdgeInsets.all(20),
              width: 400,
              height: 80,
              alignment: const Alignment(1, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey
              ),
              child: Text(
                calcul.join(),
                style: TextStyle(fontSize:30),
              ),
            ),
            SizedBox(
              height: 20,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: (() {
                      qoshishFunc("C");
                    }),
                    child: const Text(
                      "C",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: (() {
                      qoshishFunc("*");
                    }),
                    child: Text("*", style: TextStyle(fontSize: 25) ,),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: (() {
                      qoshishFunc("/");
                    }),
                    child: Text("/",style: TextStyle(fontSize: 25),),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: (() {
                      qoshishFunc("");
                    }),
                    child: Text("<=",style: TextStyle(fontSize: 25),),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: (() {
                      qoshishFunc("1");
                    }),
                    child: const Text(
                      "1",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: (() {
                      qoshishFunc("2");
                    }),
                    child: Text("2",style: TextStyle(fontSize: 25),),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: (() {
                      qoshishFunc("3");
                    }),
                    child: Text("3",style: TextStyle(fontSize: 25),),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: (() {
                      qoshishFunc("-");
                    }),
                    child: Text("-",style: TextStyle(fontSize: 25),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: (() {
                      qoshishFunc("4");
                    }),
                    child: Text("4",style: TextStyle(fontSize: 25),),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: (() {
                      qoshishFunc("5");
                    }),
                    child: Text("5",style: TextStyle(fontSize: 25),),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: (() {
                      qoshishFunc("6");
                    }),
                    child: Text("6",style: TextStyle(fontSize: 25),),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: (() {
                      qoshishFunc("+");
                    }),
                    child: Text("+",style: TextStyle(fontSize: 25),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: (() {
                      qoshishFunc("7");
                    }),
                    child: Text("7",style: TextStyle(fontSize: 25),),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: (() {
                      qoshishFunc("8");
                    }),
                    child: Text("8",style: TextStyle(fontSize: 25),),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: (() {
                      qoshishFunc("9");
                    }),
                    child: Text("9",style: TextStyle(fontSize: 25),),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: (() {

                    }),
                    child: Text("=",style: TextStyle(fontSize: 25),),
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
    calcul.add(belgi);
    setState(() {});
  }
}
  

