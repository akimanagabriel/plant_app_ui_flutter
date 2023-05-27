import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(title: "Angelica", country: "Russia", price: 440),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 60,
                child: Container(
                  decoration: BoxDecoration(
                    border: null,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(20)),
                    color: kPrimaryColor,
                  ),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide.none,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide.none,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Description",
                    style: TextStyle(color: kTextColor),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
