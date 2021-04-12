import 'package:flutter/material.dart';
import 'package:web_practise/utils/constants.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final double horizontalPadding = size.width * 0.08;
    final double verticalPadding = size.height * 0.02;

    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Place",
                  style: TextStyle(
                      color: Utils.mainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 32.0),
                ),
                Row(
                  children: [
                    Text(
                      "Home",
                      style: TextStyle(
                          color: Utils.mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                    const SizedBox(width: 36.0),
                    Text(
                      "Feature",
                      style: TextStyle(
                          color: Utils.mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                    const SizedBox(width: 36.0),
                    Text(
                      "Services",
                      style: TextStyle(
                          color: Utils.mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                    const SizedBox(width: 36.0),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Contact us",
                        style: TextStyle(
                            color: Color(0xff5574db),
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32.0, vertical: 18.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        primary: Color(0xffeaeefb),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
