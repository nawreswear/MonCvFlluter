import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expérience en Projets'.tr, style: TextStyle(fontStyle: FontStyle.italic)),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child:Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/AA.png', width: 400.0, height: 250.0),
            Text("Développement de projet E-Commerce".tr,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.cyan),
            ),
            Text("Collaboration avec l\\'équipe de stagiaires de SwiftCode. Backend développé avec MongoDB et Node.js (Express.js). Frontend réalisé avec React.".tr,
              style: TextStyle(fontSize: 20.0,color: Colors.black),
            ),
            Text("Développement du projet de santé Montale".tr, style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.cyan),
            ),
            Text("Travail sur le backend avec Spring Boot, utilisation de STS, XAMPP, MySQL et Postman.".tr,
              style: TextStyle(fontSize: 20.0,color: Colors.black),
            ),
            Image.asset('images/listmarque.png', width: 400.0, height: 250.0),
            Text("Développement de projet E-commerce".tr, style: TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.cyan
              ),
            ),
            Text("Backend développé avec MongoDB et Node.js (Express.js). Frontend réalisé avec Next.js.".tr,
              style: TextStyle(fontSize: 20.0,color: Colors.black),
            ),
            SizedBox(height: 10.0),
            Text("Développement de projet E-Commerce".tr, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.cyan
              ),
            ),
            Text("Travail sur le backend et le frontend en utilisant Django.".tr,
              style: TextStyle(fontSize: 20.0,color: Colors.black),
            ),
            SizedBox(height: 10.0),
            Text("Développement de Site de société de photographie".tr,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,
                  color: Colors.cyan
              ),
            ),
            Text("Travail sur le backend et le frontend en utilisant Django.".tr,
              style: TextStyle(fontSize: 20.0,color: Colors.black),
            ),
            Image.asset('images/ce.png', width: 400.0, height:251.0),
            Text("Développement de projet E-commerce".tr,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,
                  color: Colors.cyan
              ),
            ),
            SizedBox(height: 10.0),
            Text("Travail sur le Backend et le frontend en utilisant sping boot et le Frontend Angular.".tr,
              style: TextStyle(fontSize: 20.0,color: Colors.black),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
