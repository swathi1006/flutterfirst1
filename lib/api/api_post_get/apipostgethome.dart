import 'package:flutter/material.dart';
import 'api_service.dart';

class MyApiPost extends StatefulWidget {
  @override
  State<MyApiPost> createState() => _MyApiPostState();
}

class _MyApiPostState extends State<MyApiPost> {
  final ApiService apiService = ApiService();
  late Future<List<dynamic>> _response;

  @override
  void initState() {
    super.initState();
    _response = apiService.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Data Example'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                apiService.sendData().then((_) {
                  setState(() {
                    _response = apiService.fetchData();
                  });
                });
              },
              child: Text('Send Data'),
            ),
            SizedBox(height: 30),
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
                              Text('Year: ${data['data']['year']}', style: TextStyle(fontSize: 16)),
                              SizedBox(height: 10),
                              Text('Price: \$${data['data']['price']}', style: TextStyle(fontSize: 16)),
                              SizedBox(height: 10),
                              Text('CPU Model: ${data['data']['CPU model']}', style: TextStyle(fontSize: 16)),
                              SizedBox(height: 10),
                              Text('Hard Disk Size: ${data['data']['Hard disk size']}', style: TextStyle(fontSize: 16)),
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
