import 'package:flutter/material.dart';
import 'package:get/get.dart';
class StagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: Text('Expérience professionnelle'.tr, style: TextStyle(fontStyle: FontStyle.italic)),
            backgroundColor: Colors.cyan,centerTitle: true,),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Cheffe de Project IT'.tr,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.cyan),
              ),SizedBox(height: 5.0),
              Text('SwiftCode | Sfax | Juil. – 2023'.tr, style: TextStyle(fontSize: 20.0,color: Colors.black)),
            SizedBox(height: 20.0),
              Image.asset('images/certif.png', width: 400.0, height: 400.0),
              SizedBox(height: 10.0),

              Text('Stagiaire technicien OACA'.tr, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.cyan),
              ),SizedBox(height: 5.0),
              Text('Sfax | Janv. - 2022'.tr,style: TextStyle(fontSize: 20.0,color: Colors.black)),
              Text('Observation des machines présentant un dysfonctionnement pour trouver'
                  ' la source du problème, diagnostiquant ainsi rapidement les causes de la panne pour réparation.'.tr, style: TextStyle(fontSize: 20.0,color: Colors.black)),
              Text('Vérification du bon fonctionnement de Chaine Radio en prenant en charge les tests techniques '
                  'et en corrigeant les problèmes rencontrés, assurant ainsi le bon déroulé de la production.'.tr,style: TextStyle(fontSize: 20.0,color: Colors.black) ),
              SizedBox(height: 10.0),
              Image.asset('images/img3.jpg', width: 400.0, height:400.0),
              SizedBox(height: 10.0),
              Text('Stagiaire technicien'.tr, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.cyan),
              ),SizedBox(height: 5.0),
              Text('Bee Coders | Tunis | Juil. - Oct. - 2023'.tr,style: TextStyle(fontSize: 20.0,color: Colors.black)),
              SizedBox(height: 20.0),
              Image.asset('images/cc24.png', width: 400.0, height:400.0),
            ],
          ),
        ),
      ),
    );
  }
}
