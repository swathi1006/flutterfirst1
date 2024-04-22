
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomSheett extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: GestureDetector(
          onLongPress: ()=>showSheet(context),
          child: Image.asset("assets/images/cup.png",
          height: 100,
          width: 100,),
        ),
      ),
    );
  }

  showSheet(BuildContext context) {
    showModalBottomSheet(context: context,
        builder: (context){
      return Column(
        children: [
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.whatsapp,
              color: Colors.teal.shade900,
            ),
            title: const Text("WhatsApp"),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.facebook,
              color: Colors.blueAccent,
            ),
              title: Text("Facebook"),
          ),
          ListTile(
              leading: FaIcon(
                FontAwesomeIcons.twitter,
                color: Colors.blue[200],
              ),
              title: const Text("Twitter"),
          )
        ],
      );
        });
  }
}
