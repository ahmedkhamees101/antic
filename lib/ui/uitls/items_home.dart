import 'package:flutter/cupertino.dart';
import 'package:todo/components/custom_home.dart';

class Items extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomHome("Telephone Mobile Phones AntiqueVintage,antique,gold,since 1987",AssetImage("assets/images/1.png"),40,"initPrice"),
        CustomHome("Telephone Mobile Phones AntiqueVintage,antique,gold,since 1987",AssetImage("assets/images/2.jpg"),25,"initPrice"),
        CustomHome("Telephone Mobile Phones AntiqueVintage,antique,gold,since 1987",AssetImage("assets/images/3.jpg"),50,"initPrice"),
        CustomHome("Telephone Mobile Phones AntiqueVintage,antique,gold,since 1987",AssetImage("assets/images/4.jpg"),15,"initPrice"),



      ],
    );
  }
}
