import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
class InscriptionPage extends StatelessWidget {
  late SharedPreferences prefs;
  TextEditingController text_login = TextEditingController();
  TextEditingController text_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Page d\'inscription'.tr,
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              Image.asset("images/OIP.jpg", width: 400.0, height: 250.0),
              Container(
                child: TextFormField(
                  controller: text_login,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.perm_identity, color: Colors.cyan),
                    hintText: "Identifiant".tr,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10,bottom: 10),
                child: TextFormField(
                  controller: text_password,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.ac_unit, color: Colors.cyan),
                    hintText: "Mot de passe".tr,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    primary: Colors.cyan,
                  ),
                  onPressed: () {
                    _onInscrire(context);
                  },
                  child: Text(
                    'Inscription'.tr,
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
              Container(
                child: TextButton(
                  child: Text(
                    "J'ai déjà un compte".tr,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/authentification');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _onInscrire(BuildContext context) async {
    prefs = await SharedPreferences.getInstance();
    if (text_login.text.isNotEmpty && text_password.text.isNotEmpty) {
      prefs.setString("login".tr, text_login.text);
      prefs.setString("password".tr, text_password.text);
      prefs.setBool('connecte', true);
      Navigator.pop(context);
      Navigator.pushNamed(context, '/home');
    } else {
      const snackBar = SnackBar(
        content: Text("Identifiant ou mot de passe vides"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
