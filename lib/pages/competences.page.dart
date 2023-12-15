import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CompetencesPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compétences'.tr, style: TextStyle(fontStyle: FontStyle.italic)),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.0),

              Text(
                'Langages Manipulés :'.tr,
                style: TextStyle(fontSize: 25.0,color: Colors.cyan,fontWeight: FontWeight.bold),
              ),
              Text(
                'c, PHP, JavaScript, java, c#, python, ARDUINO, SGBD, PHP, JavaFx, react, next js 13, express.js, Django, .Net, Spring Boot Dax (Power BI), Flutter (Dart), Angular'.tr,
                style: TextStyle(fontSize: 20.0,color: Colors.black),
              ),
              SizedBox(height: 10.0),
              Image.asset('images/nn.png', width: 400.0, height:253.0),

              Text(
                'Logiciels Utilisés :'.tr,
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color: Colors.cyan),
              ),
              Text(
                'ISIS, CodeBlocks, Brackets, MATLAB, Visual Studio, Power BI Desktop, Eclipse, WampServer, Studio 3T, MongoDB, Intellij IDEA, XAMPP, Android Studio, STS'.tr,
                style: TextStyle(fontSize: 20.0,color: Colors.black),
              ),
              SizedBox(height: 10.0),
              Image.asset('images/bb.png', width: 400.0, height:251.0),

            ],
          ),
        ),
      ),
    );
  }
}
