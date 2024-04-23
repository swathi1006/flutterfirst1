import 'package:flutter/material.dart';

class PlayList extends StatelessWidget {
   PlayList({super.key});

  List plalists = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4Rk_7_f-1Kymw60DcqqxxhDp1KvANqkNpzGFA_VbcQIgrLmkR",
    "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcScNjefVemaYur3XMpHIw6-EZhLJGbiVOyu0Q9qWWVzHqqUotU6",
    "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT5fXuAYGJ19VwDRY4E8-Aih7asZPBxHyOpbtYZbWBC5dvdPuFz",
    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRTt2_awhDgPue1QCuyqYzqxGWO4Ttm4ggsMgGJK71i2iw6BGCF",
    "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRwLfFfAr4ie_7k1wkdx6WCqw3Flwc8nSkibpkcLSo9LxSFucK1",
    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSOCjc09426b1yB95SSVZm71QDEjonI6GEr9SypFd6suRcnJSMm",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr81FZrUIpubawiItMWCZQX3g9pfUud3hsOA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFpMdghv5wANr_BLzMC3b1grKOVuC-wM4EpQ&s",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text("Playlists",
            style: TextStyle(
                fontSize: 40,
                color: Colors.pink.shade100,
                fontWeight: FontWeight.bold
            ),),
        ),
      ),
      body: GridView.count(crossAxisCount: 2,
             mainAxisSpacing: 5.0,
      crossAxisSpacing: 5.0,
      //childAspectRatio: 2.0,
      children: List.generate(plalists.length,
              (index) => Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: NetworkImage(plalists[index],),
                      fit: BoxFit.cover)
                  ),
                ),
              )),
      ),
    );
  }
}
