import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


    Widget calcbutton(String btntxt, Color btncolor, Color txtcolor, int index,) {

      return Container(

        child: ElevatedButton(onPressed: (){
          calculation(btntxt);
          //code
          },
          child: Text(btntxt,
            style: TextStyle(
                fontSize: 25,
                color: txtcolor,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: btncolor,
            shape: CircleBorder(),
        ),
        ),
      );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 5, left: 5, bottom: 20,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [ Padding(padding: EdgeInsets.all(20),
              child: Text(text,
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.white,
              fontSize: 100),
              ),
              ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 100),),
                SizedBox(
                  height: 70,
                  width: 70,
                    child: calcbutton('AC', Colors.blueGrey.shade50, Colors.black, 1),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('+/-', Colors.blueGrey.shade50, Colors.black, 2),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('%', Colors.blueGrey.shade50, Colors.black, 3),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('/', Colors.orange, Colors.white, 4) ,
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 80),),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('7', Colors.grey, Colors.white, 5),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('8', Colors.grey, Colors.white, 6),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('9', Colors.grey, Colors.white, 7),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('x', Colors.orange, Colors.white, 8),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 80),),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('4', Colors.grey, Colors.white, 9),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('5', Colors.grey, Colors.white, 10),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('6', Colors.grey, Colors.white, 11),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('-', Colors.orange, Colors.white, 12),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 80),),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('1', Colors.grey, Colors.white, 13),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('2', Colors.grey, Colors.white, 14),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('3', Colors.grey, Colors.white, 15),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('+', Colors.orange, Colors.white, 16),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 80),),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('0', Colors.grey, Colors.white, 17),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton(',', Colors.grey, Colors.white, 18),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('.', Colors.grey, Colors.white, 19),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('=', Colors.orange, Colors.white, 20),
                ),
              ],
            ),
          ],
        ),
        ),
    );
  }
    dynamic text ='0';
    double numOne = 0;
    double numTwo = 0;

    dynamic result = '';
    dynamic finalResult = '';
    dynamic opr = '';
    dynamic preOpr = '';
    void calculation(btnText) {

      if(btnText  == 'AC') {
        text ='0';
        numOne = 0;
        numTwo = 0;
        result = '';
        finalResult = '0';
        opr = '';
        preOpr = '';

      } else if( opr == '=' && btnText == '=') {

        if(preOpr == '+') {
          finalResult = add();
        } else if( preOpr == '-') {
          finalResult = sub();
        } else if( preOpr == 'x') {
          finalResult = mul();
        } else if( preOpr == '/') {
          finalResult = div();
        }

      } else if(btnText == '+' || btnText == '-' || btnText == 'x' || btnText == '/' || btnText == '=') {

        if(numOne == 0) {
          numOne = double.parse(result);
        } else {
          numTwo = double.parse(result);
        }

        if(opr == '+') {
          finalResult = add();
        } else if( opr == '-') {
          finalResult = sub();
        } else if( opr == 'x') {
          finalResult = mul();
        } else if( opr == '/') {
          finalResult = div();
        }
        preOpr = opr;
        opr = btnText;
        result = '';
      }
      else if(btnText == '%') {
        result = numOne / 100;
        finalResult = doesContainDecimal(result);
      } else if(btnText == '.') {
        if(!result.toString().contains('.')) {
          result = result.toString()+'.';
        }
        finalResult = result;
      }

      else if(btnText == '+/-') {
        result.toString().startsWith('-') ? result = result.toString().substring(1): result = '-'+result.toString();
        finalResult = result;

      }

      else {
        result = result + btnText;
        finalResult = result;
      }


      setState(() {
        text = finalResult;
      });

    }


    String add() {
      result = (numOne + numTwo).toString();
      numOne = double.parse(result);
      return doesContainDecimal(result);
    }

    String sub() {
      result = (numOne - numTwo).toString();
      numOne = double.parse(result);
      return doesContainDecimal(result);
    }
    String mul() {
      result = (numOne * numTwo).toString();
      numOne = double.parse(result);
      return doesContainDecimal(result);
    }
    String div() {
      result = (numOne / numTwo).toString();
      numOne = double.parse(result);
      return doesContainDecimal(result);
    }


    String doesContainDecimal(dynamic result) {

      if(result.toString().contains('.')) {
        List<String> splitDecimal = result.toString().split('.');
        if(!(int.parse(splitDecimal[1]) > 0))
          return result = splitDecimal[0].toString();
      }
      return result;
    }
}
