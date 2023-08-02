import 'package:flutter/material.dart';
import 'package:homeworkui2/modelbag.dart';
import 'package:homeworkui2/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentIndex = 0;
  List<String> items = ["Hand bag", "Jewellery", "Footwear", "Dresses"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeWorkUI"),
        leading: IconButton(
            onPressed: () {},
            color: Colors.black,
            icon: Icon(
              Icons.arrow_back,
            )),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
            iconSize: 40,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
            color: Colors.black,
            iconSize: 40,
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "Women",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 50,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                items[index],
                                style: TextStyle(
                                  fontSize: 20,
                                  color: currentIndex == index
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 50,
                                height: 3,
                                color: currentIndex == index
                                    ? Colors.black
                                    : Colors.transparent,
                              )
                            ],
                          ),
                        ),
                      );
                    })),
          ),
          SizedBox(
            height: 500,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GridView.builder(
                itemCount: bagList().length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.67,
                ),
                itemBuilder: (context, index) => Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Result(
                              text1: bagList()[index].text1,
                              img: bagList()[index].img,
                              text2: bagList()[index].text2)));
                    },
                    child: Column(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          bagList()[index].img,
                          fit: BoxFit.cover,
                          height: 190,
                          width: 200,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(bagList()[index].text1,
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(bagList()[index].text2,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      )
                    ]),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
