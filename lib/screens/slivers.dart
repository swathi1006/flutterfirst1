import 'package:flutter/material.dart';

class CustomScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.green,
                floating: true,
                pinned: true,
                title: Text("My Products"),
                bottom: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.lightGreenAccent,
                  title: Container(
                    width: double.infinity,
                    height: 40,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Search here",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.camera_alt_outlined),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                      childCount: 10,
                          (context, index) =>
                          Card(
                            child: Text("Hello $index"),
                          ))),

              SliverToBoxAdapter(
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/m.png"))
                  ),
                ),
              ),

              SliverGrid(
                  delegate: SliverChildBuilderDelegate((context, index) =>
                      Card(
                        color: Colors.orange,
                        child: Column(
                          children: [
                            Image.asset("assets/icons/appicon.png",
                            width: 100,
                            height: 150,
                            ),
                            Text("\$230")
                          ],
                        ),
                      )), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2))
            ],
          )),
    );
  }
}
