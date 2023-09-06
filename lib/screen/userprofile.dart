import 'package:amazon/screen/youraccount.dart';
import 'package:amazon/screen/youraccount.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(204, 153, 249, 228),
        title: Row(
          children: [
            Container(
              alignment: Alignment.topLeft,
              width: 200,
              height: 120,
              child:
                  Image.asset('assets/images/amazon.in-removebg-preview.png'),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                height: 40,
                alignment: Alignment.centerLeft,
                color: Colors.white,
                child: Row(
                  children: [
                    const Text('Hello, ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400)),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Haroon",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      width: 180,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: const Icon(
                        Icons.person_3_outlined,
                        size: 40,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 170,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.grey, width: 2),
                  ),
                  child: const Text(
                    "Your Orders",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  //color: Colors.black,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 170,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey, width: 2)),
                  child: const Text(
                    "Buy Again",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  // color: Colors.black,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      // profile;
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => profile()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 170,
                      height: 55,
                      //color: Colors.black,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.grey, width: 2)),
                      child: const Text(
                        "Your Account",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 170,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey, width: 2)),
                    child: const Text(
                      "Your Wishlist",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Your Orders",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "See all",
                      style: TextStyle(
                          color: Color.fromARGB(255, 7, 149, 167),
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 170,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset("assets/images/boatH.webp"),
                      //color: Colors.black,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 170,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset("assets/images/lapstand.webp"),
                      //color: Colors.black,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 170,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset("assets/images/mouse.png"),
                      //color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 206, 200, 200),
              thickness: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Keep shopping for",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Edit | Browsing history",
                      style: TextStyle(
                          color: Color.fromARGB(255, 7, 149, 167),
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 170,
                    height: 110,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("assets/images/s23ultra.webp"),
                    //color: Colors.black,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 170,
                    height: 110,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      "assets/images/pngwing.com (1).png",
                    ),
                    //color: Colors.black,
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  "S23 Ultra",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 130,
                ),
                Text(" Marshall Killburn",
                    style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  "2 viewed",
                  style: TextStyle(color: Color.fromARGB(255, 67, 65, 65)),
                ),
                SizedBox(
                  width: 130,
                ),
                Text(" 1 viewed",
                    style: TextStyle(
                      color: Color.fromARGB(255, 83, 81, 81),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 170,
                    height: 110,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("assets/images/pngegg (1).png"),
                    //color: Colors.black,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 170,
                    height: 110,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      "assets/images/calvin clien.webp",
                    ),
                    //color: Colors.black,
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Rayban Black",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(" Calvin Clien",
                    style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  "2 viewed",
                  style: TextStyle(color: Color.fromARGB(255, 67, 65, 65)),
                ),
                SizedBox(
                  width: 130,
                ),
                Text(" 1 viewed",
                    style: TextStyle(
                      color: Color.fromARGB(255, 83, 81, 81),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
