import 'package:apitutorial/models/services/api_services.dart';
import 'package:apitutorial/models/user_model.dart';
import 'package:flutter/material.dart';

class ApiScreen extends StatefulWidget {
  ApiService apiService = ApiService();
  ApiScreen({Key? key}) : super(key: key);

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  final ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: FutureBuilder(
              future: apiService.getUsers(),
              builder: (context, snapshot) {
                return ListView.builder(
                    itemCount: apiService.userList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(apiService.userList[index].email),
                              Text(apiService.userList[index].name),
                              Text(apiService.userList[index].phone),
                              Text(apiService.userList[index].website),
                              Text(apiService.userList[index].id.toString()),
                            ]),
                      );
                    });
              }),
        ),
      ),
    );
  }
}
