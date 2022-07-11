import 'package:flutter/material.dart';

main() {
  runApp(PF());
}

class PF extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyPF();
  }
}

class MyPF extends State<PF> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello",
      home: WELCOME(),
    );
  }
}

// ---------------Welcome page start here--------------
class WELCOME extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MYApp();
  }
}

class MYApp extends State<WELCOME> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "PF APP",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          color: Colors.cyan,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80.3, bottom: 30.3),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("1.jpg"), //image here
                    maxRadius: 80,
                  ),
                ),
                Text(
                  "WELCOME SIR",
                  style: TextStyle(fontSize: 30.3, color: Colors.white),
                ),
                // goto button is start here
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return App();
                              }));
                            },
                            height: 50.0,
                            color: Colors.blue,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    "GOTO",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.2),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Icon(
                                    Icons.double_arrow_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.cyan,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sourav | PRODUCTION 2021",
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// -----------Main PF APP code is start now------------------

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Sourav();
  }
}

class Sourav extends State<App> {
  int qun;
  int pur = 0;
  int sales = 0;
  int profit;
  int profitORLoss;
  String appbarTitle = "";
  // let's create controlar
  final quncontrol = TextEditingController();
  final purcontrol = TextEditingController();
  final salecontrol = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello world",
      home: Scaffold(
        appBar: AppBar(
          title: Text("$appbarTitle"),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Colors.cyan,
                Colors.blue,
              ],
              // focalRadius: -20.3,
              center: Alignment.center,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Sourav's PF APP",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              // ------------Row Quantity filed is start
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: quncontrol,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange),
                    ),
                    labelText: "Enter Quantity in KG",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (v) {
                    setState(() {
                      qun = int.parse(v);
                    });
                  },
                ),
              ),
              // --------------Purchase and salse row is start
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: purcontrol,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange),
                          ),
                          labelText: "Enter purchase rate",
                          labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onChanged: (v) {
                          setState(() {
                            pur = int.parse(v);
                          });
                        },
                      ),
                    ),
                    Text("   "),
                    Expanded(
                      child: TextField(
                        controller: salecontrol,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange),
                          ),
                          labelText: "Enter sales rate",
                          labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onChanged: (v) {
                          setState(() {
                            sales = int.parse(v);
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
              // -------------- Button is start
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(children: [
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        profit = (sales - pur);
                        profitORLoss = profit * qun;
                        setState(() {
                          if (profitORLoss > 0) {
                            appbarTitle = "😊 Profit : $profitORLoss";
                          } else if (profitORLoss < 0) {
                            appbarTitle = "😫Loss : $profitORLoss";
                          } else if (profitORLoss == pur) {
                            appbarTitle = "😯 No profit or no loss";
                          }
                        });
                      },
                      color: Colors.lightGreen,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          "Proceed",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ]),
              ),
              // clear button is start now
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Row(children: [
                  Expanded(
                    // clear button
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          appbarTitle = "";
                          pur = 0;
                          sales = 0;
                          profit = 0;
                          profitORLoss = 0;

                          quncontrol.clear();
                          purcontrol.clear();
                          salecontrol.clear();
                        });
                      },
                      color: Colors.lightGreen,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          "Clear",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
