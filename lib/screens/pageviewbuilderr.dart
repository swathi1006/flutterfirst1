import 'package:flutter/material.dart';

class PageBuild extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PageBuilderr(),
    );
  }
}


class PageBuilderr extends StatefulWidget {
  const PageBuilderr({super.key});

  @override
  State<PageBuilderr> createState() => _PageBuilderrState();
}

class _PageBuilderrState extends State<PageBuilderr> {

  PageController controller = PageController();
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Expanded(child: PageView.builder(
             controller: controller,
              itemCount: 5,
              itemBuilder: (context,index){
                return returnWidget(index);
              },
            onPageChanged: (index){
                setState((){
                  currentpage = index;
                });
            },),),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                if(currentpage > 0){
                  controller.previousPage(
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.easeInCirc);
                }},
                  child: const Text("Previous")),
              const SizedBox(width: 20,),
              ElevatedButton(onPressed: (){
                if (currentpage < 4){
                  controller.nextPage(
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.easeInCirc);
                }},
                  child: const Text("Next"))
            ],
          ),
        ],
      );
  }
  Widget returnWidget(int index){
    return Container(
      color: Colors.orange,
      child: Center(
        child: Text("Page Index = $index",
        style: const TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold),),
      ),
    );
  }
}
