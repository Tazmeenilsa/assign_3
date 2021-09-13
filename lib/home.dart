import 'package:assign_3/history.dart';
import 'package:assign_3/setting.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Ecom App UI")),
        actions: [
          Icon(Icons.notifications),
          Padding(
            padding: EdgeInsets.only(left: 20),
          )
        ],
        backgroundColor: Colors.black87,
      ),
      body: ListView(
        children: [
          abc("https://photos5.appleinsider.com/gallery/0-77489-MBP-11-xl.jpg",
              "Mackbook Pro", 100, 180, 10, 20),
          abc("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyt-hkfq988lwN3rW39upSyvJ-iv5iWz74sA&usqp=CAU",
              "Gaming PC", 200, 190, 20, 12),
          abc("data:image/jpeg;base64,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",
              "Iphone 12", 200, 200, 20, 10),
          abc("data:image/jpeg;base64,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",
              "Note 20 Ultra", 300, 180, 20, 30),
          abc("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFOZpjGuZqy8vLH9tPVWFDFNB3SOG4Jv397w&usqp=CAU",
              "Mackbook Air", 200, 200, 20, 10),
          SingleChildScrollView(),
          SizedBox(
            height: 5,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Setting()));
              },
              child: Text("settings"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => History()));
                  },
                  child: Text("History")))
        ],
      ),
    );
  }
}

Widget abc(var name, home, hightt, widthh, radiuss, sizee) {
  return Container(
    height: 150,
    padding: EdgeInsets.all(5),
    child: Row(children: [
      Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          height: hightt,
          width: widthh,
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(radiuss)),
              child: Image.network(
                name,
              )),
        ),
      ),
      SizedBox(
        width: sizee,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            home,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text("5.0(23 Review)"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("20 pieces"),
              Text(
                r"$90",
                style: TextStyle(color: Colors.purpleAccent),
              ),
            ],
          ),
          Text("Quantity: 1")
        ],
      ),
    ]),
  );
}
