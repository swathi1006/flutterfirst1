import 'package:flutter/material.dart';

class ListView_custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) => Card())),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
        List.generate(10, (index) => const Card(
          child: ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person_outline_outlined),
            ),
            title: Text("Arun"),
            subtitle: Text("9988776541"),
            trailing: Icon(Icons.phone),
          ),
        ),)
        ),
      ),
    );
  }
}
