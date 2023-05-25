import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/components/custom_card.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                ),
                side: BorderSide(width: 1, color: Color(0xFFC047FD)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    CustomCard(
                        icon: Icons.phone,
                        color: Color(0xFFC047FD),
                        text: "00-111-222-333"),
                    SizedBox(
                      height: 15,
                    ),
                    CustomCard(
                      icon: Icons.email,
                      color: Color(0xFFC047FD),
                      text: "abc12@gmai.com",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomCard(
                      icon: Icons.location_on_rounded,
                      color: Color(0xFFC047FD),
                      text: "304 Saqr Qureish St. , New Maadi",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Row(
                        children: [
                          Expanded(child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "name",
                            ),
                          )),
                          SizedBox(width: 5,),
                          Expanded(child: TextFormField(  decoration: InputDecoration(
                            hintText: "Email",
                          ),)),
                        ],
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Message",
                      ),
                    ),
                    SizedBox(height: 15,),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Send message"),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)
                          ),
                          backgroundColor: Color(0xFF6337B2)),

                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
