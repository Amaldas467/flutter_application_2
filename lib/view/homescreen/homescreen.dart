import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/homescreen/widgets/saladlist.dart';

import 'package:flutter_application_2/view/homescreen/widgets/saladscreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: Padding(
                padding: const EdgeInsets.only(left: 30),
                child:
                    IconButton(onPressed: () {}, icon: Icon(Icons.location_on)),
              ),
              title: Text(
                "Habiganj City",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              actions: [
                Container(
                  height: 40,
                  width: 38,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 237, 237),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
              //floating: true,
              pinned: true,
              expandedHeight: 360,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.all(5),
                background: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 20, right: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Find the ",
                                  style: TextStyle(fontSize: 33),
                                ),
                                Text(
                                  "Best",
                                  style: TextStyle(
                                      fontSize: 33,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Food ",
                                  style: TextStyle(
                                      fontSize: 33,
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  "Around you ",
                                  style: TextStyle(fontSize: 33),
                                ),
                              ],
                            )
                          ],
                        )),
                    SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 240, 237, 237),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.search)),
                                  Text("Search your favourite food"),
                                ],
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  color: Color.fromARGB(255, 240, 237, 237),
                                  height: 26,
                                  width: 26,
                                  child: Image.asset(
                                    "assets/page_info_icon.png",
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          "Find  ",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "5km >",
                          style: TextStyle(fontSize: 19, color: Colors.orange),
                        )
                      ],
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(48.0),
                child: TabBar(
                  dividerColor: Colors.white,
                  controller: tabController,
                  indicator: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Text(
                      "   Salads   ",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "   Hot sales   ",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "   Popularity    ",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                controller: tabController,
                children: [
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: products.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Saladscreen(
                          image: products[index]['image'],
                          name: products[index]['name'],
                          time: products[index]['time'],
                          rating: products[index]['rating'],
                          amount: products[index]['amount']);
                    },
                  ),
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: products.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Saladscreen(
                          image: products[index]['image'],
                          name: products[index]['name'],
                          time: products[index]['time'],
                          rating: products[index]['rating'],
                          amount: products[index]['amount']);
                    },
                  ),
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: products.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Saladscreen(
                          image: products[index]['image'],
                          name: products[index]['name'],
                          time: products[index]['time'],
                          rating: products[index]['rating'],
                          amount: products[index]['amount']);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
