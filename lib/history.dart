import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87)),
                    suffixIcon: Icon(Icons.search),
                    hintText: 'Username',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("HISTORY"),
                  ],
                ),
              ),
              abc("assets/bg.jpg", "Gaming PC"),
              abc("assets/iphone12.jpg", "Iphone 12"),
              abc("assets/mackair.jpg", "Mackbook Air"),
              abc("assets/ackpro.jpg", "Mackbook Pro"),
              abc("assets/note20.jpg", "Note 20 Ultra"),
              abc("assets/backlit.jpg", "Backlit Keyboard"),
              abc("assets/mercedes.jpg", "Mercedes"),
              abc("assets/mutton.jpg", "Mutton"),
              abc("assets/roadster.jpg", "Roadster"),
              abc("assets/royal.jpg", "Royal Field"),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: (Text("Setting")),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pop(
              //         context, MaterialPageRoute(builder: (context) => Home()));
              //   },
              //   child: (Text("Home")),
              // ),
            ],
          ),
        ));
  }
}

Widget abc(image, textt) {
  return Container(
    padding: EdgeInsets.all(10),
    child: ListTile(
      leading: CircleAvatar(
          backgroundImage: AssetImage(
            image,
          ),
          radius: 30),
      title: Text(textt),
      subtitle: Row(
        children: [
          Icon(
            Icons.star,
            color: Colors.yellowAccent,
          ),
          Text("5.0(23 Reviews)"),
        ],
      ),
      trailing: Text(
        r"$10",
        style: TextStyle(color: Colors.purpleAccent),
      ),
    ),
  );
}
