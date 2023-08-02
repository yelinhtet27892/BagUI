import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  Result({required this.text1, required this.text2, required this.img});

  final String text1;
  final String text2;
  final String img;

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  int incresement = 0;
  int count = 0;
  bool pressed = false;
  List<Color> color = [
    Colors.lightBlue,
    Colors.black,
    Colors.red,
  ];

  void increse() {
    setState(() {
      count++;
    });
  }

  void decrese() {
    setState(() {
      if (count > 0) {
        count--;
      } else {
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color[incresement],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: color[incresement],
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
          ],
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.text1,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        "Office Code",
                        style: TextStyle(
                            fontSize: 33,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 90,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                " Price",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              Text(
                                widget.text2,
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      )
                    ]),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, top: 75, bottom: 10, right: 15),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 80,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Colors",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 50,
                                      width: 200,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: color.length,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    incresement = index;
                                                  });
                                                },
                                                child: CircleAvatar(
                                                  backgroundColor: color[index],
                                                  radius: 13,
                                                ),
                                              ),
                                            );
                                          }),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 80,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Size',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      '12cm',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "A bag is a kind of soft container. It can hold or carry things. It may be made from cloth, leather, plastic, or paper. Many bags are disposable but some are made to use for a long time",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ElevatedButton(
                                      onPressed: decrese,
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          backgroundColor: Colors.white),
                                      child: Text(
                                        '-',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 40),
                                      )),
                                  Text(
                                    '$count',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  ElevatedButton(
                                      onPressed: increse,
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          backgroundColor: Colors.white),
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                            fontSize: 30, color: Colors.black),
                                      ))
                                ],
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        pressed = !pressed;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.favorite_rounded,
                                      color:
                                          pressed ? Colors.red : Colors.white,
                                    )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 60,
                                width: 70,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.grey,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        )),
                                    child: Icon(
                                      Icons.shopping_cart_outlined,
                                      size: 30,
                                    )),
                              ),
                              SizedBox(
                                  height: 60,
                                  width: 250,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      )),
                                      child: Text(
                                        "BUY NOW",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      )))
                            ],
                          )
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 180),
                    child: Container(
                      child: Hero(
                        tag: 1,
                        child: Image.asset(
                          widget.img,
                          width: 160,
                          height: 120,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
