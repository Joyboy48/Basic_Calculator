import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.pink,
          primaryColor: Colors.pinkAccent,
        appBarTheme: AppBarTheme(
              color: Colors.pinkAccent.shade200,
          centerTitle: true,
        )
      ),
      debugShowCheckedModeBanner: false,
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

  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Basis Calculator'),
        ),
        body:Container(
          color: Colors.pink.shade200,
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text('Calculator',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 250,
                  child: TextField(
                    controller: no1Controller,
                    keyboardType: TextInputType.number,
                    decoration:InputDecoration(
                      label:Text('Enter the first no.',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                      prefixIcon: Icon(Icons.numbers),
                    )
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 282,
                  child: TextField(
                    controller: no2Controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      label: Text('Enter the second no.',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),),
                      prefixIcon: Icon(Icons.numbers),
                    ),
            
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: (){
                  var no1 = int.parse(no1Controller.text.toString());
                  var no2 = int.parse(no2Controller.text.toString());
                  var sum = no1+no2;

                  result = 'Sum = $sum';

                  setState(() {

                  });
            
                }, child:Text('Add',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),)),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed:(){
                  var no1 = int.parse(no1Controller.text.toString());
                  var no2 = int.parse(no2Controller.text.toString());
                  var diff = no1-no2;

                  result = 'Difference= $diff';

                  setState(() {

                  });

            
                }, child:Text('Subtract',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),)),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: (){
                  var no1 = int.parse(no1Controller.text.toString());
                  var no2 = int.parse(no2Controller.text.toString());
                  var pro = no1*no2;

                  result = 'Product = $pro';

                  setState(() {

                  });
            
                }, child: Text('Multiply',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),)),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: (){
                  var no1 = int.parse(no1Controller.text.toString());
                  var no2 = int.parse(no2Controller.text.toString());
                  var div = no1/no2;

                  result = 'Division = ${div.toStringAsFixed(2)}';

                  setState(() {

                  });
            
                }, child:Text('Divide',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),)),
                SizedBox(
                  height: 50,
                ),
                Text(result,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            
              ],
            ),
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
        );
    }
}