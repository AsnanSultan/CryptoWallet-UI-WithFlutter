import 'package:crypto_wallet/pages/home.dart';
import 'package:crypto_wallet/widgets/bottomAppBar.dart';
import 'package:crypto_wallet/widgets/lineChart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDetails extends StatelessWidget {
  const MyDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          "Bitcoin Wallet",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => MyHome(),
              ),
            );
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
          ),
        ),
      ),
      bottomNavigationBar: MyBottomBar(),
      body: Container(
        color: Color(0xffe4e6eb),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 25, right: 25, left: 20, bottom: 8),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.black,
                            child: Image.asset("assets/icons/bitcoin.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 130),
                          child: Text(
                            "Bitcoin",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text("BTC"),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            "3.529020 BTC",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          width: 60,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Center(
                            child: Text(
                              "- 2.32%",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        "\$19.153 USD",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Center(
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        size: 40,
                      ),
                    ),
                  ],
                ),
                shadowColor: Colors.grey,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 60,
                  ),
                  child: Text("Day"),
                ),
                Container(
                  height: 20,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(13),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Week",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 55,
                    left: 55,
                  ),
                  child: Text("Month"),
                ),
                Text("Year"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, right: 25, left: 20, bottom: 8),
              child: Card(
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 35, right: 12, left: 12, bottom: 35),
                          ),
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.red,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 80),
                            child: Text("Lower: \$4.934"),
                          ),
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.green,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("Higher: \$6.934"),
                          ),
                        ],
                      ),
                      Container(
                        height: 100,
                        width: 310,
                        child: BitcoinLineChart(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              child: Image.asset("assets/icons/dollarBlue.png"),
                              radius: 30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Buy BTC",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              child:
                                  Image.asset("assets/icons/dollarOriange.jpg"),
                              radius: 30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Sell BTC",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
