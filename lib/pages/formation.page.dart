import 'package:flutter/material.dart';
import 'package:get/get.dart';
class FormationPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formation et Certificats'.tr, style: TextStyle(fontStyle: FontStyle.italic)),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             // SizedBox(height: 10.0),
              Text('2023 - Certificat Spring Boot'.tr,
                style: TextStyle(fontSize: 20.0,color: Colors.indigo, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Image.asset('images/certife.png', width: 400.0, height: 250.0),

              SizedBox(height: 10.0),
              Text('2022 - Certificat Azure Fundamentals'.tr,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.indigo),
              ), SizedBox(height: 16.0),
              Image.asset('images/img21.jpg', width: 400.0, height: 250.0),
              SizedBox(height: 10.0),
              Text('2022 - Certificat Azure Devops'.tr,
                style: TextStyle(fontSize: 20.0,color: Colors.indigo, fontWeight: FontWeight.bold),
              ),SizedBox(height: 16.0),
              Image.asset('images/img24.jpg', width: 400.0, height: 250.0),
              SizedBox(height: 10.0),
              Text('2022 - Certificat Azure WebApps'.tr,
                style: TextStyle(fontSize: 20.0,color: Colors.indigo, fontWeight: FontWeight.bold),
              ), SizedBox(height: 16.0),
              Image.asset('images/img9.jpg', width: 400.0, height: 250.0),
              SizedBox(height: 10.0),
              Text('2022 - Certificat AI Services In Azure'.tr,
                style: TextStyle(fontSize: 20.0,color: Colors.indigo, fontWeight: FontWeight.bold),
              ), SizedBox(height: 16.0),
              Image.asset('images/img18.jpg', width: 400.0, height: 250.0),
              SizedBox(height: 10.0),
              Text('2022 - Certificat Big Data'.tr,
                style: TextStyle(fontSize: 20.0,color: Colors.indigo, fontWeight: FontWeight.bold),
              ), SizedBox(height: 16.0),
              Image.asset('images/img12.jpg', width: 400.0, height: 250.0),
              SizedBox(height: 10.0),

              Text('2022 - Certificat Power BI'.tr,
                style: TextStyle(fontSize: 20.0,color: Colors.indigo, fontWeight: FontWeight.bold),
              ),  SizedBox(height: 16.0),
              Image.asset('images/img6.jpg', width: 400.0, height: 250.0),
              SizedBox(height: 10.0),
              Text('2022 - Certificat Intelligence Artificial'.tr,
                style: TextStyle(fontSize: 20.0,color: Colors.indigo, fontWeight: FontWeight.bold),
              ), SizedBox(height: 16.0),
              Image.asset('images/img15.jpg', width: 400.0, height: 250.0),
              SizedBox(height: 10.0),
              Text('2023 - Certificat Automarketing'.tr,
                style: TextStyle(fontSize: 20.0,color: Colors.indigo, fontWeight: FontWeight.bold),
              ), SizedBox(height: 16.0),
              Image.asset('images/c2.jpeg', width: 400.0, height: 250.0),
              SizedBox(height: 10.0),

              Text('2023 - Certificat du planification stratégique'.tr,
                style: TextStyle(fontSize: 20.0,color: Colors.indigo, fontWeight: FontWeight.bold),
              ),  SizedBox(height: 16.0),
              Image.asset('images/c1.jpeg', width: 400.0, height: 250.0),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
