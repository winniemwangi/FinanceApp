import 'package:financeapp/Screens/profile_page.dart';
import 'package:financeapp/Screens/transfer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemIndex = 2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Row(
          children: [
            buildNavBarItem(Icons.home, 0,(){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePage()));
            }),
            // buildNavBarItem(Icons.card_giftcard, 1),
            // buildNavBarItem(Icons.camera, 2),
            buildNavBarItem(Icons.pie_chart, 3, (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>TransferPage()));

            }),
            buildNavBarItem(Icons.person, 4, (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>ProfileScreen()));

            }),
          ],
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFF6F35A5), Color(0xFF6F35A5)]),
                  ),
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 20, right: 20.0, top: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            Text(
                              "Available balance",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: const Color(0XFF00B686),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.1),
                                      blurRadius: 8,
                                      spreadRadius: 3)
                                ],
                                border: Border.all(
                                  width: 1.5,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              padding: const EdgeInsets.all(5),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuryZT5Xx92qwd4e6e_dAObDz1dNdr3bZK8Q&usqp=CAU"),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Hello Taylor Sam",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.camera_front,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    RichText(
                                      text: const TextSpan(
                                          text: "Ksh. 8000",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          children: [
                                          ]),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    color: Colors.grey.shade100,
                    child: ListView(
                      padding: const EdgeInsets.only(top: 75),
                      children: [
                        const Text(
                          "Activity",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            buildActivityButton(Icons.card_membership, "Card",
                                Colors.blue.withOpacity(0.2), const Color(0XFF01579B)),
                            buildActivityButton(
                                Icons.transfer_within_a_station,
                                "Transfer",
                                const Color(0xFF6F35A5).withOpacity(0.2),
                                const Color(0XFF0097A7)),
                            buildActivityButton(
                                Icons.pie_chart,
                                "Statistics",
                                const Color(0XFFD7CCC8).withOpacity(0.4),
                                const Color(0XFF9499B7)),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Categories",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        buildCategoryCard(Icons.fastfood, "Food", 120, 20),
                        buildCategoryCard(Icons.flash_on, "Utilities", 430, 17),
                        buildCategoryCard(Icons.fastfood, "Food", 120, 20),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: 185,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                width: MediaQuery.of(context).size.width * 0.85,
                height: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.05),
                        blurRadius: 8,
                        spreadRadius: 3,
                        offset: const Offset(0, 10),
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(50),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "Income",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_upward,
                                  color: Color(0XFF00838F),
                                )
                              ],
                            ),
                            const Text(
                              "Ksh. 3000 ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                  color: Colors.black87),
                            )
                          ],
                        ),
                        Container(width: 1, height: 50, color: Colors.grey),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "Expenses",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_downward,
                                  color: Color(0XFF00838F),
                                )
                              ],
                            ),
                            const Text(
                              "Ksh. 2050",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                  color: Colors.black87),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "You spent Ksh. 2050 this month",
                      style: TextStyle(
                        fontSize: 13,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      "Let's see the cost statistics for this period",
                      style: TextStyle(
                        fontSize: 13,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 1,
                      width: double.maxFinite,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: const Text(
                        "Tell me more",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF00B686)),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector buildNavBarItem(IconData icon, int index, VoidCallback action ) {
    return GestureDetector(
      onTap: action,
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        height: 60,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
            border:
            const Border(bottom: BorderSide(width: 4, color: Colors.purpleAccent)),
            gradient: LinearGradient(colors: [
              Colors.green.withOpacity(0.3),
              Colors.green.withOpacity(0.016),
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter))
            : const BoxDecoration(),
        child: Icon(
          icon,
          color: index == _selectedItemIndex ? const Color(0xFF6F35A5) : Colors.grey,
        ),
      ),
    );
  }

  Container buildCategoryCard(
      IconData icon, String title, int amount, int percentage) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      height: 85,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    color: const Color(0xFF6F35A5),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    "Ksh 550",
                    style:TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "($percentage%)",
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              Container(
                height: 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.grey.shade300),
              ),
              Container(
                height: 5,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: const Color(0xFF6F35A5)),
              ),
            ],
          )
        ],
      ),
    );
  }

  GestureDetector buildActivityButton(
      IconData icon,
      String title,
      Color backgroundColor,
      Color iconColor) {
    return GestureDetector(

      child: Container(
        margin: const EdgeInsets.all(10),
        height: 90,
        width: 90,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style:
              const TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}