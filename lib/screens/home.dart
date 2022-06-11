import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ludo/main.dart';
import 'package:provider/provider.dart';

import '../gameengine/model/dice_model.dart';
import '../gameengine/model/game_state.dart';

// class home_page extends StatelessWidget {
//   const home_page({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Center(
//               child: ElevatedButton(
//                   onPressed: () {
//                     Get.to(MultiProvider(providers: [
//                       ChangeNotifierProvider(create: (context) => GameState()),
//                       ChangeNotifierProvider(create: (context) => DiceModel()),
//                     ], child: MyHomePage()));
//                   },
//                   child: Text("Ludo")),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
// import 'package:resturant_items/screens/second_screen.dart';

const double kDefaultPadding = 20.0;

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: kDefaultPadding / 2),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/profile.jpg"),
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(255, 255, 230, 0),
                ),
                child: Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 255, 140, 0),
                  size: 25,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "1000",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 255, 230, 0),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 25,
                    ),
                  )),
            ],
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            header_searchbox(),
            // title_main(
            //   text1: "HOT",
            //   text2: " Games",
            // ),
            // main_horizantal_cat(),
            title_main2(
              text2: "HOT",
              text1: " GAMES ",
            ),
            mainitems_cards(),
            // title_main2(
            //   text2: "HOT",
            //   text1: " GAMES ",
            // ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       second_card(
            //         img2: "assets/beyond-meat-mcdonalds.png",
            //         title1: "BURGER SPICY ",
            //         title2: "\$899 ",
            //       ),
            //       second_card(
            //         img2: "assets/burger.png",
            //         title1: "BURGER SPICY ",
            //         title2: "\$899 ",
            //       ),
            //       second_card(
            //         img2: "assets/burger.png",
            //         title1: "BURGER SPICY ",
            //         title2: "\$899 ",
            //       ),
            //     ],
            //   ),
            // ),
            // BottomNavigationBar(items: <BottomNavigationBarItem>[
            //   BottomNavigationBarItem(
            //     icon: Icon(Icons.business),
            //     label: 'Business',
            //   ),
            //   BottomNavigationBarItem(
            //     icon: Icon(Icons.business),
            //     label: 'Business',
            //   ),
            //   BottomNavigationBarItem(
            //     icon: Icon(Icons.school),
            //     label: 'School',
            //   ),
            // ])
          ],
        ),
      ),
    );
  }
}

class second_card extends StatefulWidget {
  const second_card({
    Key key,
    this.title1,
    this.title2,
    this.img2,
  }) : super(key: key);
  final String title1, title2, img2;

  @override
  State<second_card> createState() => _second_cardState();
}

class _second_cardState extends State<second_card> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(bottom: kDefaultPadding, left: kDefaultPadding),
      child: Stack(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              color: Colors.deepOrange[600],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 90),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title1,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.title2,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      icon_star(),
                      icon_star(),
                      icon_star(),
                      icon_star(),
                      icon_star(),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(widget.img2),
                  fit: BoxFit.cover,
                )),
          ),
        ],
      ),
    );
  }
}

class mainitems_cards extends StatelessWidget {
  const mainitems_cards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kDefaultPadding),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MultiProvider(providers: [
                                ChangeNotifierProvider(
                                    create: (context) => GameState()),
                                ChangeNotifierProvider(
                                    create: (context) => DiceModel()),
                              ], child: MyHomePage())));
                },
                child: card_with_items(
                  img1: "assets/ludo.jpg",
                  title1: "Ludo",
                  title2: "5.9k Players Are\nPlaying",
                ),
              ),
              card_with_items(
                img1: "assets/Chess.jpg",
                title1: "Chess",
                title2: "5.9k Players Are\nPlaying",
              ),
              // card_with_items(
              //   img1: "assets/3.png",
              //   title1: "SPICY BEEF PIZZA",
              //   title2: "Ludo",
              // ),
              // card_with_items(
              //   img1: "assets/4.png",
              //   title1: "SPICY MUTTON PIZZA",
              //   title2: "SPICY CHICKEN PIZZA",
              // ),
              // card_with_items(
              //   img1: "assets/5.png",
              //   title1: "SPICY NIHARI PIZZA",
              //   title2: "SPICY CHICKEN PIZZA",
              // ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                card_with_items(
                  img1: "assets/sholo.png",
                  title1: "Bead 16\nSholo Guti",
                  title2: "5.9k Players Are\nPlaying",
                ),
                // card_with_items(
                //   img1: "assets/Chess.jpg",
                //   title1: "Chess",
                //   title2: "5.9k Players Are\nPlaying",
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class card_with_items extends StatelessWidget {
  card_with_items({
    Key key,
    this.title1,
    this.title2,
    this.img1,
  }) : super(key: key);
  final String title1, title2, img1;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 2,
      padding: EdgeInsets.only(right: 20),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              // height: 100,
              child: Padding(
                padding: EdgeInsets.only(left: 15, right: 10, top: 45),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title1,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          title2,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Center(
                        child: Row(
                          children: [
                            icon_star(),
                            icon_star(),
                            icon_star(),
                            icon_star(),
                            icon_star(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xFF2661FA),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
            ),
          ),
          CircleAvatar(
            backgroundImage: AssetImage(img1),
            radius: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 21,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                foregroundColor: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 250, 155, 38),
                      size: 20,
                    ),
                    Text("5",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class icon_star extends StatelessWidget {
  const icon_star({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Colors.yellow,
      size: 15,
    );
  }
}

// class main_horizantal_cat extends StatelessWidget {
//   const main_horizantal_cat({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Padding(
//         padding: const EdgeInsets.only(left: kDefaultPadding),
//         child: Row(
//           children: [
//             Container(
//               height: 30,
//               width: 100,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: Colors.redAccent[200],
//               ),
//               child: Center(
//                 child: Text(
//                   "ALL FOODS",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 17),
//                 ),
//               ),
//             ),
//             horizantal_cat(
//               text3: "PIZZA",
//               img1: "assets/1.png",
//             ),
//             horizantal_cat(
//               text3: "PIZ XL",
//               img1: "assets/2.png",
//             ),
//             horizantal_cat(
//               text3: "SPICY",
//               img1: "assets/3.png",
//             ),
//             horizantal_cat(
//               text3: "MEDIUM",
//               img1: "assets/4.png",
//             ),
//             horizantal_cat(
//               text3: "SMALL",
//               img1: "assets/5.png",
//             ),
//             horizantal_cat(
//               text3: "LARGE",
//               img1: "assets/6.png",
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class horizantal_cat extends StatelessWidget {
  const horizantal_cat({
    Key key,
    this.img1,
    this.text3,
  }) : super(key: key);
  final String img1, text3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kDefaultPadding),
      child: Container(
        height: 30,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.orange[100], borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(img1),
                radius: 13,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                text3,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 100 * 0.15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class title_main extends StatelessWidget {
  const title_main({
    Key key,
    this.text1,
    this.text2,
  }) : super(key: key);

  final String text1, text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.only(
                bottom: kDefaultPadding / 2, left: kDefaultPadding),
            child: Text.rich(TextSpan(
                text: text1,
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
                children: <InlineSpan>[
                  TextSpan(
                      text: text2,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black))
                ]))),
      ],
    );
  }
}

class header_searchbox extends StatelessWidget {
  const header_searchbox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 1,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon(
                //   Icons.location_on,
                //   color: Colors.deepOrange,
                // ),
                Title(
                  child: Text(
                    "Life Games",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 25),
                  ),
                  color: Colors.deepOrange,
                ),
                // Icon(
                //   Icons.keyboard_arrow_down,
                // ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey[100],
                    filled: true,
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    hintText: "search".toUpperCase(),
                    hintStyle: TextStyle(fontSize: 20))),
          ),
          // Container(
          //   height: MediaQuery.of(context).size.height*0.1,
          //   width: MediaQuery.of(context).size.width*0.8,
          //   color: Colors.grey,
          // )
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.location_on,
        color: Colors.deepOrange,
      ),
      title: Text("FIZI FOODS"),
      trailing: Icon(
        Icons.keyboard_arrow_down,
        color: Colors.white,
      ),
    );
  }
}

class title_main2 extends StatelessWidget {
  const title_main2({
    Key key,
    this.text1,
    this.text2,
  }) : super(key: key);

  final String text1, text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
            right: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2,
            left: kDefaultPadding),
        child: Row(
          children: [
            Text.rich(TextSpan(
                text: text2,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
                children: <InlineSpan>[
                  TextSpan(
                      text: text1,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.deepOrange))
                ])),
            Spacer(),
            TextButton(
                onPressed: () {},
                child: Text(
                  "See more",
                  style: TextStyle(color: Colors.deepOrange, fontSize: 15),
                )),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.deepOrange,
              size: 12,
            )
          ],
        ));
  }
}
