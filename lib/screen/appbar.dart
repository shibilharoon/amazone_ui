import 'package:amazon/screen/youraccount.dart';
import 'package:flutter/material.dart';
import './homescreen.dart';
import 'cart.dart';
import 'menu.dart';
import 'userprofile.dart';
import 'youraccount.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const UserProfile(),
    const Cart(),
    const Menu(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(204, 153, 249, 228),
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Expanded(
      //         child: Container(
      //           height: 42,
      //           margin: const EdgeInsets.only(left: 15),
      //           child: Material(
      //             borderRadius: BorderRadius.circular(7),
      //             child: TextFormField(
      //               decoration: InputDecoration(
      //                 prefixIcon: InkWell(
      //                   onTap: () {},
      //                   child: const Padding(
      //                     padding: EdgeInsets.only(
      //                       left: 6,
      //                     ),
      //                     child: Icon(
      //                       Icons.search,
      //                       color: Colors.black38,
      //                       size: 23,
      //                     ),
      //                   ),
      //                 ),
      //                 suffixIcon: Icon(
      //                   Icons.center_focus_strong_outlined,
      //                   color: Colors.grey[20],
      //                 ),
      //                 filled: true,
      //                 fillColor: Colors.white,
      //                 contentPadding: const EdgeInsets.only(top: 10),
      //                 border: const OutlineInputBorder(
      //                   borderRadius: BorderRadius.all(
      //                     Radius.circular(7),
      //                   ),
      //                   borderSide: BorderSide(
      //                     color: Colors.black38,
      //                     width: 1,
      //                   ),
      //                 ),
      //                 hintText: 'Search Amazon.in',
      //                 hintStyle: const TextStyle(
      //                   fontWeight: FontWeight.w500,
      //                   fontSize: 17,
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromARGB(255, 10, 99, 84),
          unselectedItemColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_rounded,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
