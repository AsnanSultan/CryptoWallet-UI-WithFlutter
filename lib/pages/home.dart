import 'package:crypto_wallet/pages/details.dart';
import 'package:crypto_wallet/widgets/appBar.dart';
import 'package:crypto_wallet/widgets/bottomAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
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
                            child: Icon(
                              CupertinoIcons.creditcard_fill,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                        Text(
                          "Total Wallet Balance",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text("USD"),
                        Icon(Icons.keyboard_arrow_down_outlined),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            "\$39.584",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 90,
                        ),
                        Container(
                          width: 60,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Center(
                            child: Text("+ 3.56%"),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        "7.251332 BTC",
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
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text("Sorted by Higher %"),
                  SizedBox(
                    width: 155,
                  ),
                  Text("24H"),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
            MyList(context, "assets/icons/bitcoin.png", "3.529020 BTC",
                "\$ 5.441", "\$19.153", "+ 4.32%"),
            MyList(context, "assets/icons/eth.png", "12.644546 ETH", "\$ 401",
                "\$4.822", "+ 3.97%"),
            MyList(context, "assets/icons/rp.png", "1911.633681 XRP", "\$ 0.45",
                "\$4.859", "+ 2.9%"),
            MyList(context, "assets/icons/pie.png", "12.344546 Pi", "\$ 0.123",
                "\$2.885", "+ 1.9%"),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomBar(),
    );
  }
}

// ignore: non_constant_identifier_names
Widget MyList(
    var con, var icon, var tital, var subtital, var leading, var subleading) {
  return Padding(
    padding: const EdgeInsets.only(right: 25, left: 20, bottom: 8),
    child: InkWell(
      onTap: () {
        Navigator.pushReplacement(
          con,
          MaterialPageRoute(
            builder: (context) => MyDetails(),
          ),
        );
      },
      child: Card(
        shadowColor: Colors.black,
        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            child: Image.asset(icon),
          ),
          title: Text(tital),
          subtitle: Text(subtital),
          trailing: Column(
            children: [
              SizedBox(
                width: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9, bottom: 11),
                child: Text(leading),
              ),
              Text(
                subleading,
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
