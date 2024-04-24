import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:tablarodriguez0543/constants.dart';
import 'package:tablarodriguez0543/model/product_model.dart';
import 'package:flutter/material.dart';

import 'componets/appbar.dart';
import 'componets/category.dart';
import 'componets/sorting.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottom bar
      // now we will use bottom bar package
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              activeColor: kpink,
              inactiveColor: Colors.grey[300]),
          BottomNavyBarItem(
            icon: Icon(Icons.favorite_rounded),
            title: Text('Favorite'),
            inactiveColor: Colors.grey[300],
            activeColor: kpink,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text('Messages'),
            inactiveColor: Colors.grey[300],
            activeColor: kpink,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            inactiveColor: Colors.grey[300],
            activeColor: kpink,
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            CustomeAppBar(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Hola Bienvenid@s",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Compra Un Carro Para Encontrar la felicidad !!",
                            style: TextStyle(
                              color: Colors.black54,
                              wordSpacing: 2.5,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: kpurple,
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Image.asset(
                              "assets/images/personal2.png",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //sorting
                  Sorting(),
                  const SizedBox(
                    height: 20,
                  ),
                  //category list

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Vehiculos",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "Ver mas ",
                          style: TextStyle(fontSize: 16, color: kblue),
                        ),
                      ),
                    ],
                  ),

                  //now we create model of our images and colors which we will use in our app
                  const SizedBox(
                    height: 20,
                  ),
//we can not use gridview inside column
//use shrinkwrap and physical scroll
                  CategoryList(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
