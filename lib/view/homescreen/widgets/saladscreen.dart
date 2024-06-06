import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Saladscreen extends StatelessWidget {
  final String image;
  final String name;
  final String time;
  final String rating;
  final String amount;

  const Saladscreen(
      {super.key,
      required this.image,
      required this.name,
      required this.time,
      required this.rating,
      required this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, bottom: 20),
      child: InkWell(
        onTap: () {},
        child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 237, 237),
                borderRadius: BorderRadius.circular(18)),
            width: 100,
            height: 100,
            child: Stack(
              children: [
                Positioned(
                  top: 4,
                  left: 40,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(image), fit: BoxFit.contain),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(50)),
                    height: 90,
                    width: 90,
                  ),
                ),
                Positioned(
                    right: 9,
                    top: 5,
                    child: Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.black,
                    )),
                Positioned(
                  top: 98,
                  left: 30,
                  child: Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                ),
                Positioned(
                  top: 125,
                  left: 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(time),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 16),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star_border_rounded,
                              color: const Color.fromARGB(255, 210, 190, 4),
                              size: 20,
                            ),
                            Text("4.5")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 6,
                    left: 28,
                    child: Text(
                      amount,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    )),
                Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                    height: 30,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        color: Colors.green),
                    child: Center(
                      child: Text(
                        "+",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
