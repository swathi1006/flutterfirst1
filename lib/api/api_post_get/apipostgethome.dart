import 'package:flutter/material.dart';
import 'api_service.dart';

class MyApiPost2 extends StatefulWidget {
  @override
  State<MyApiPost2> createState() => _MyApiPostState();
}

class _MyApiPostState extends State<MyApiPost2> {
  final ApiServiceGetPost apiService = ApiServiceGetPost();
  late Future<List<dynamic>> _response;

  @override
  // void initState() {
  //   super.initState();
  //   _response = apiService.fetchData();
  //   print(_response);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Data and Recieve'),
      ),
   body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                apiService.sendData().then((_) {
                  setState(() {
                    //_response =
                    apiService.fetchData();
                  });
                });
                //apiService.sendData();
              },
              child: Text('Send Data'),
            ),
            SizedBox(height: 30),
            
            MaterialButton(onPressed: (){
              apiService.fetchData();
            },
            child: Text("display data"),),

            FutureBuilder<List<dynamic>>(
              future: _response,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (snapshot.hasData) {
                  final List<dynamic> dataList = snapshot.data!;
                  return Expanded(
                    child: ListView.builder(
                      itemCount: dataList.length,
                      itemBuilder: (context, index) {
                        final data = dataList[index];
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Name: ${data['name']}', style: TextStyle(fontSize: 20)),
                              SizedBox(height: 10),
                              Text('Year: ${data['year']}', style: TextStyle(fontSize: 16)),
                              SizedBox(height: 10),
                              Text('Price: \$${data['price']}', style: TextStyle(fontSize: 16)),
                              SizedBox(height: 10),
                              Text('CPU Model: ${data['CPU model']}', style: TextStyle(fontSize: 16)),
                              SizedBox(height: 10),
                              Text('Hard Disk Size: ${data['Hard disk size']}', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                } else {
                  return Center(child: Text('No data found'));
                }
              },
            ),

          ],
        ),
      ),
    
    );
  }
}
