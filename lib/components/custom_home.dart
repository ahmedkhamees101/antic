import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/ui/uitls/custom_bid_button.dart';

import '../style/constants.dart';

class CustomHome extends StatelessWidget {
  String priceTile;
  int price;
  String description;
  ImageProvider<Object> image;

  CustomHome(this.description, this.image,this.price, this.priceTile);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15),
        child: Column(children: [
          Center(
            child: Card(
              color: MyColor.mainBackGround,
              child: Image(
                image: image,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width * 0.75,
                height: MediaQuery.of(context).size.height * 0.25,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Description :',
                style: TextStyle(color: MyColor.titles, fontSize: 18),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: Colors.grey.shade600,
                )),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                description,
                maxLines: 4,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.black,
                    ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "${priceTile}: ${price}\$",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.black87,
                      fontSize: 18,
                    ),
              ),
              ElevatedButton(
                onPressed: () {
                  BidButton.showBidDialog(context);
                },
                child: Text("Bid"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                      ),
                      backgroundColor: Colors.brown.shade400),

                ),
            ],
          )
        ]));
  }
}
