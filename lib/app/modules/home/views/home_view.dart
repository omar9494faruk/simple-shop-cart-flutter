import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_practice/style/style.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        leading: Icon(Icons.apps, color: Colors.white),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () {
                Get.toNamed(
                  Routes.CART,
                );
              },
              child: Icon(Icons.shopping_cart, color: Colors.white, size: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile.png"),
            ),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("But the world", style: appHeaderStyle()),
            SizedBox(height: 15),
            searchBar(),
            SizedBox(height: 25),
            productCard(),
          ],
        ),
      ),
    );
  }

  // Search Bar widget
  Widget searchBar() {
    return TextField(
      decoration: InputDecoration(
        label: Text("Search", style: TextStyle(fontSize: 19, color: subColor)),
        prefixIcon: Icon(Icons.search, color: subColor),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(15),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }

  //Search Bar widget
  Widget productCard() {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          childAspectRatio: 0.68,
        ),
        itemCount: 5,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.toNamed(Routes.DETAILS);
            },
            child: Card(
              margin: EdgeInsets.only(bottom: 10),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/images/product.webp",
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            top: 10,
                            right: 5,
                            child: InkWell(
                              onTap: (){},
                              child: Icon(
                                CupertinoIcons.cart_fill_badge_plus,
                                size: 35,
                                color: primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text("Eye Liner", style: productNameText()),
                    Text("\$ 300", style: productPriceNameText()),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
