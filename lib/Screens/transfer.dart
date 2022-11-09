import 'package:flutter/material.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  int _selectedItemIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          buildNavBarItem(Icons.home, 0),
          buildNavBarItem(Icons.card_giftcard, 1),
          buildNavBarItem(Icons.camera, 2),
          buildNavBarItem(Icons.pie_chart, 3),
          buildNavBarItem(Icons.person, 4),
        ],
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            color: const Color(0xFF6F35A5),
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
                      "Transfer",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildExpenseBotton(Icons.phone, "Mobile", true),
                    buildExpenseBotton(Icons.photo_camera, "Qr Code", false),
                    buildExpenseBotton(Icons.card_membership, "Card", false),
                    buildExpenseBotton(Icons.ev_station, "Utilities", false),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 170,
            height: MediaQuery.of(context).size.height - 230,
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Recent",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.purpleAccent),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildRecentContact("Mwihaki",
                                "https://imageio.forbes.com/specials-images/imageserve/630bc7a29261003ebb1b5fd1/Zsanai-Epps--Director-of-My-Sister-s-Keeper/960x0.jpg?format=jpg&width=960"),
                            buildRecentContact("Joy",
                                "https://media-cldnry.s-nbcnews.com/image/upload/rockcms/2022-03/220317-Cynthia-Talla-ew-321p-4bc199.jpg"),
                            buildRecentContact("Jeff",
                                "https://images.unsplash.com/photo-1546525848-3ce03ca516f6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YmxhY2slMjBtYW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                            buildRecentContact("Mitchell",
                                "http://68.media.tumblr.com/c4bc990841324f73823e5c5d82710666/tumblr_otddprHCrg1vqr2b4o1_1280.jpg"),
                            buildRecentContact("Anita",
                                "http://78.media.tumblr.com/bdff863b89a773f3b680e0ce93ba964a/tumblr_p0tceelonS1qeg3q3o6_1280.jpg"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: ListView(
                      children: [
                        const Text(
                          "Contact",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: const TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search,
                                  size: 30, color: Colors.grey),
                              hintText: "Search",
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        buildContactRow("Trina Mwaihaki", "+254 722798675",
                            "https://imageio.forbes.com/specials-images/imageserve/630bc7a29261003ebb1b5fd1/Zsanai-Epps--Director-of-My-Sister-s-Keeper/960x0.jpg?format=jpg&width=960"),
                        buildContactRow("Joy Wambui", "+254 734890647",
                            "https://media-cldnry.s-nbcnews.com/image/upload/rockcms/2022-03/220317-Cynthia-Talla-ew-321p-4bc199.jpg"),
                        buildContactRow("Jeff Wambua", "+254 789534171",
                            "https://images.unsplash.com/photo-1546525848-3ce03ca516f6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YmxhY2slMjBtYW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                        buildContactRow("Mitchell Achieng", "+254 765423157",
                            "http://68.media.tumblr.com/c4bc990841324f73823e5c5d82710666/tumblr_otddprHCrg1vqr2b4o1_1280.jpg"),
                        buildContactRow("Anita Ali", "+254 726271263",
                            "http://78.media.tumblr.com/bdff863b89a773f3b680e0ce93ba964a/tumblr_p0tceelonS1qeg3q3o6_1280.jpg"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildContactRow(String name, String phone, String url) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(url),
                radius: 25,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.phone,
                        color: Colors.grey,
                        size: 16,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        phone,
                        style: (const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.purpleAccent.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Colors.purple,
            ),
          )
        ],
      ),
    );
  }

  Container buildRecentContact(String name, String url) {
    return Container(
      margin: const EdgeInsets.only(right: 30),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.green),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(url),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: const TextStyle(
                fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey),
          )
        ],
      ),
    );
  }

  Container buildExpenseBotton(IconData icon, String title, bool isActive) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isActive ? const Color(0XFF00B686) : Colors.white,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: isActive ? const Color(0xFF6F35A5) : Colors.white,
            ),
          )
        ],
      ),
    );
  }
  GestureDetector buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
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
}