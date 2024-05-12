import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/MiniQuizApp/queAns.dart';
import 'package:flutterfirst/utils/textThemes.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  PageController pageController = PageController();

  /// to store the answer from user
  late List<String?> userAnswer;

   @override
  void initState() {
    userAnswer = List.filled(queAns.length, null);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   PageView.builder(
            controller: pageController,
            itemCount: queAns.length,
            itemBuilder: (context,index){
              return buildQuizPage(index);
            })
    );
  }

  Widget buildQuizPage (int index){
     return Padding(
       padding: const EdgeInsets.all(18.0),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text(queAns[index]['question'],
           style: MyTextThemes.textHeading,),
           const SizedBox(height: 20,),
           Column(
             children:
             List.generate(queAns[index]['options'].length,
                     (optionIndex) {
               String option = queAns[index]['options'][optionIndex];
                    return InkWell(
                      onTap: (){
                        setState(() {
                          /// selected option stored to userAnswer list
                          userAnswer[index] = option;
                        });
                      },
                      child: RadioListTile<String>(
                          title: Text(option),
                          value: option,
                          groupValue: userAnswer[index],
                          onChanged: (value){
                            setState(() {
                              userAnswer[index] = value;
                            });
                          },
                        activeColor: Colors.green,
                      ),
                    );
             }),
           ),

           const SizedBox(height: 20,),
           ElevatedButton(onPressed: (){
             if(index < queAns.length-1){
               pageController.nextPage(
                   duration: const Duration(milliseconds: 500),
                   curve: Curves.ease);
             }else{
               showResult();
             }
           },
               child: Text(
                 index < queAns.length - 1 ? "Next" :"Submit"
               ))
         ],
       ),
     );
  }
  void showResult(){
    int correctAns = 0;
    for(int i =0; i< queAns.length; i++){
      if(userAnswer[i] == queAns[i]['correctAnswer']){
        correctAns++;
      }}
    showDialog(context: context, builder: (context){
      return AlertDialog(
        backgroundColor: Colors.green[100],
        title: Text("Quiz Result"),
        content: Text("You got $correctAns out of ${queAns.length} questions"),
      actions: [
        TextButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: Text("Ok"))
      ],
      );
    });
  }
}
