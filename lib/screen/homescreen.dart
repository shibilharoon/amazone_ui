import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  final images = [
    "assets/images/ban1.webp",
    "assets/images/ban6.webp",
    "assets/images/ban3.jpg",
    "assets/images/ban7.webp"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(204, 153, 249, 228),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(left: 15),
                  child: Material(
                    borderRadius: BorderRadius.circular(7),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(
                              left: 6,
                            ),
                            child: Icon(
                              Icons.search,
                              color: Colors.black38,
                              size: 23,
                            ),
                          ),
                        ),
                        suffixIcon: Icon(
                          Icons.center_focus_strong_outlined,
                          color: Colors.grey[20],
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(top: 10),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                          borderSide: BorderSide(
                            color: Colors.black38,
                            width: 1,
                          ),
                        ),
                        hintText: 'Search Amazon.in',
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: 400,
                height: 40,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(100, 100, 231, 198)),
                child: const Center(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.location_on_rounded),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Deliver to Shibil - Calicut 673525",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 110,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Center(
                          child: Column(
                        children: [
                          Image.asset(
                            "assets/images/amazonfresh.png",
                            width: 70,
                            height: 70,
                          ),
                          const Text("Fresh",
                              style: TextStyle(fontWeight: FontWeight.w500))
                        ],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Center(
                          child: Center(
                              child: Column(
                        children: [
                          Image.asset(
                            "assets/images/Mobiles.png",
                            width: 70,
                            height: 70,
                          ),
                          const Text("Mobiles",
                              style: TextStyle(fontWeight: FontWeight.w500))
                        ],
                      ))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Center(
                          child: Column(
                        children: [
                          Image.asset(
                            "assets/images/Fashion.png",
                            width: 70,
                            height: 70,
                          ),
                          const Text("Fashion",
                              style: TextStyle(fontWeight: FontWeight.w500))
                        ],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Center(
                          child: Column(
                        children: [
                          Image.asset("assets/images/Eletronics.png",
                              width: 70, height: 70),
                          const Text("Electronics",
                              style: TextStyle(fontWeight: FontWeight.w500))
                        ],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Center(
                          child: Column(
                        children: [
                          Image.asset("assets/images/Home.png",
                              width: 70, height: 70),
                          const Text("Home",
                              style: TextStyle(fontWeight: FontWeight.w500))
                        ],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Center(
                          child: Column(
                        children: [
                          Image.asset("assets/images/Beauty.png",
                              width: 70, height: 70),
                          const Text("Beauty",
                              style: TextStyle(fontWeight: FontWeight.w500))
                        ],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Center(
                          child: Column(
                        children: [
                          const SizedBox(height: 5),
                          Image.asset("assets/images/Deals.png",
                              width: 70, height: 70),
                          const Text("Deals",
                              style: TextStyle(fontWeight: FontWeight.w500))
                        ],
                      )),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 220,
                width: double.infinity,
                child: Stack(
                  children: [
                    CarouselSlider.builder(
                        itemCount: images.length,
                        itemBuilder: (context, index, realIndex) {
                          final imagePath = images[index];
                          return buildImage(imagePath, index);
                        },
                        options: CarouselOptions(
                          height: 220,
                          autoPlay: true,
                          aspectRatio: 2,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) =>
                              setState(() => activeIndex = index),
                        )),
                    Positioned(
                        bottom: 10, left: 160, child: builderIndicator()),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(92, 106, 217, 182),
                    Color.fromARGB(255, 89, 202, 192),
                  ])),
                  // color: const Color.fromARGB(255, 215, 211, 211),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                height: 180,
                                width: 180,
                                child: const Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            radius: 20,
                                            backgroundImage: AssetImage(
                                              'assets/images/amazon-pay-square-rounded-logo-19616.png',
                                            ),
                                          ),
                                          Text("Amazon pay"),
                                          CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 20,
                                            backgroundImage: AssetImage(
                                              'assets/images/scanqr.png',
                                            ),
                                          ),
                                          Text("Scan any QR")
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 20,
                                            backgroundImage: AssetImage(
                                              'assets/images/Sendmoney.png',
                                            ),
                                          ),
                                          Text("Send Money"),
                                          CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 20,
                                            backgroundImage: AssetImage(
                                              'assets/images/paybill.png',
                                            ),
                                          ),
                                          Text("Pay Bills"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7)),
                          height: 178,
                          width: 135,
                          child:
                              Image.asset('assets/images/smallboxoffer.jpeg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7)),
                          height: 177,
                          width: 130,
                          child: Image.asset(
                            'assets/images/one+ad_edited.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Image.asset('assets/images/movie.avif'),
              )
            ],
          ),
        ));
  }

  Widget buildImage(String imagePath, int index) => Container(
        margin: const EdgeInsets.symmetric(),
        color: Colors.black,
        child: Image.asset(
          imagePath,
          fit: BoxFit.fill,
        ),
      );

  Widget builderIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: images.length,
        effect: const WormEffect(
            dotHeight: 10,
            dotWidth: 10,
            activeDotColor: Color.fromARGB(255, 2, 72, 4),
            dotColor: Colors.white),
      );
}
