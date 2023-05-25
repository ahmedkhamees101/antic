import 'package:flutter/material.dart';
import 'package:todo/components/custom_home.dart';
import 'package:todo/ui/home.dart';
import 'package:todo/ui/uitls/dialg-uitls.dart';

class BidButton {
  static void showBidDialog(BuildContext context) {
    TextEditingController myController = TextEditingController();
    showDialog(
        context: context,
        builder: (buildContext) {
          return AlertDialog(
            content: Container(
              height: MediaQuery.of(context).size.height * 0.14,
              child: Column(
                children: [
                  TextFormField(
                    controller: myController,
                    keyboardType: TextInputType.number,
                    decoration:
                        InputDecoration(labelText: "Enter Your Biding "),
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            if (myController.text.isEmpty) {
                              DialogUtils.showMessage(
                                  context, "Please Enter price",
                                  posActionName: "OK", posActions: () {
                                //show the orinal one dialog
                              });
                            } else if (myController.text.isNotEmpty) {
                             return DialogUtils.showMessage(context, "Success Biding",
                                  posActionName: "OK", posActions: () {
                                Navigator.pop(context);
                              });
                            }
                          },
                          child: Text("Ok")),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Cancal"))
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
