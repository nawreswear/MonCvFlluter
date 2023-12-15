import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
class AuthentificationPage extends StatelessWidget {
  late SharedPreferences prefs;
  TextEditingController text_login = TextEditingController();
  TextEditingController text_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Authentification'.tr, style: TextStyle(fontStyle: FontStyle.italic)),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 10.0),
              Image.asset("images/R.jpg", width: 400.0, height: 250.0),
              SizedBox(height: 10.0),
              TextFormField(
                controller: text_login,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.abc_rounded, color: Colors.cyan),
                  hintText: "Identifiant".tr,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                controller: text_password,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password_outlined, color: Colors.cyan),
                  hintText: "Mot de passe".tr,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.black26),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(40),
                  primary: Colors.cyan,
                ),
                onPressed: () {
                  _authentifer(context);
                },
                child: Text('Connexion'.tr, style: TextStyle(fontSize: 22, color: Colors.white)),
              ),
              SizedBox(height: 10.0),
              TextButton(
                child: Text('Je n\'ai pas de compte'.tr, style: TextStyle(fontSize: 15, color: Colors.black)),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/inscription');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _authentifer(BuildContext context) async {
    prefs = await SharedPreferences.getInstance();
    String storedLogin = prefs.getString("login".tr) ?? "";
    String storedPassword = prefs.getString("password".tr) ?? "";

    if (text_login.text.isNotEmpty && text_password.text.isNotEmpty) {
      if (text_login.text == storedLogin && text_password.text == storedPassword) {
        prefs.setBool('connecte'.tr, true);
        Navigator.pop(context);
        Navigator.pushNamed(context, '/home');
      } else {
        const snackBar = SnackBar(
          content: Text('Identifiant ou mot de passe incorrects'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } else {
      const snackBar = SnackBar(
        content: Text('Identifiant ou mot de passe vide'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
