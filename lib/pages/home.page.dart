import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../menu/drawer.widget.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'ThemeProvider.dart';
import 'package:get/get.dart';
class HomePage extends StatelessWidget {
  late SharedPreferences prefs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Curriculum Vitae'.tr),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.brightness_4),
            onPressed: () {
              final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
              themeProvider.toggleTheme();
            },
          ),
        ],
        backgroundColor: Colors.cyan,
      ),
      body:  Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/cv.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children: [
            SizedBox(height: 470.0),
            Text(
              "J'ai participé au club d'informatique NMTC, et ma participation "
                  "est en cours jusqu'à présent. Portant les valeurs de sérieux et "
                  "d'apprentissage, j'ai la ferme volonté de traduire mes "
                  "acquisitions en résultats concrets, tout ce qui intéresse un "
                  "ingénieur en développement.".tr,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 0.5,
                height: 1.5,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                _launchPhone();
              },
              child: Text(
                "Téléphone : 20925959".tr,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                _launchEmail();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.red,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Gmail : Nawreselou2382@gmail.com".tr,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                _launchLinkedInProfile();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.link,
                    color: Colors.red,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "LinkedIn : linkedin.com/WearNawres".tr,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.white,
              height: 20,
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(left: 16.0,right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.0),

                    Text(
                      'Langages Manipulés :'.tr,
                      style: TextStyle(fontSize: 25.0,color: Colors.blue,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'c, PHP, JavaScript, java, c#, python, ARDUINO, SGBD, PHP, JavaFx, react, next js 13, express.js, Django, .Net, Spring Boot Dax (Power BI), Flutter (Dart), Angular'.tr,
                      style: TextStyle(fontSize: 20.0,color: Colors.white,fontStyle: FontStyle.italic),
                    ),
                    SizedBox(height: 10.0),
                    Image.asset('images/nn.png', width: 400.0, height:253.0),

                    Text(
                      'Logiciels Utilisés :'.tr,
                      style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color: Colors.blue),
                    ),
                    Text(
                      'ISIS, CodeBlocks, Brackets, MATLAB, Visual Studio, Power BI Desktop, Eclipse, WampServer, Studio 3T, MongoDB, Intellij IDEA, XAMPP, Android Studio, STS'.tr,
                      style: TextStyle(fontSize: 20.0,color: Colors.white,fontStyle: FontStyle.italic),
                    ),
                    SizedBox(height: 10.0),
                    Image.asset('images/bb.png', width: 400.0, height:251.0),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.white,
              height: 20,
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2023 - Spring Boot Certificate'.tr,
                      style: TextStyle(fontSize: 20.0,color: Colors.indigo, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16.0),
                    Image.asset('images/certife.png', width: 400.0, height: 250.0),

                    SizedBox(height: 10.0),
                    Text(
                      '2022 - Azure Fundamentals certificate'.tr,
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.indigo),
                    ), SizedBox(height: 16.0),
                    Image.asset('images/img21.jpg', width: 400.0, height: 250.0),
                    SizedBox(height: 10.0),
                    Text('2022 - Azure Devops certificate'.tr,
                      style: TextStyle(fontSize: 20.0,color: Colors.indigo, fontWeight: FontWeight.bold),
                    ),SizedBox(height: 16.0),
                    Image.asset('images/img24.jpg', width: 400.0, height: 250.0),
                    SizedBox(height: 10.0),
                    Text('2022 - Azure WebApps certificate'.tr,
                      style: TextStyle(fontSize: 20.0,color: Colors.indigo, fontWeight: FontWeight.bold),
                    ), SizedBox(height: 16.0),
                    Image.asset('images/img9.jpg', width: 400.0, height: 250.0),
                    SizedBox(height: 10.0),
                    Text('2022 - AI Services In Azure certificate'.tr,
                      style: TextStyle(fontSize: 20.0,color: Colors.indigo, fontWeight: FontWeight.bold),
                    ), SizedBox(height: 16.0),
                    Image.asset('images/img18.jpg', width: 400.0, height: 250.0),
                    SizedBox(height: 10.0),
                    Text(
                      '2022 - Big Data certificate'.tr,
                      style: TextStyle(fontSize: 20.0,color: Colors.indigo, fontWeight: FontWeight.bold),
                    ), SizedBox(height: 16.0),
                    Image.asset('images/img12.jpg', width: 400.0, height: 250.0),
                    SizedBox(height: 10.0),

                    Text('2022 - Power BI certificate'.tr,
                      style: TextStyle(fontSize: 20.0,color: Colors.indigo, fontWeight: FontWeight.bold),
                    ),  SizedBox(height: 16.0),
                    Image.asset('images/img6.jpg', width: 400.0, height: 250.0),
                    SizedBox(height: 10.0),
                    Text('2022 - Intelligence Artificial certificate'.tr,
                      style: TextStyle(fontSize: 20.0,color: Colors.indigo, fontWeight: FontWeight.bold),
                    ), SizedBox(height: 16.0),
                    Image.asset('images/img15.jpg', width: 400.0, height: 250.0),
                    SizedBox(height: 10.0),
                    Text('2023 - Automarketing certificate'.tr,
                      style: TextStyle(fontSize: 20.0,color: Colors.indigo, fontWeight: FontWeight.bold),
                    ), SizedBox(height: 16.0),
                    Image.asset('images/c2.jpeg', width: 400.0, height: 250.0),
                    SizedBox(height: 10.0),

                    Text('2023 - planification stratégique certificate'.tr,
                      style: TextStyle(fontSize: 20.0,color: Colors.indigo, fontWeight: FontWeight.bold),
                    ),  SizedBox(height: 16.0),
                    Image.asset('images/c1.jpeg', width: 400.0, height: 250.0),
                    SizedBox(height: 10.0),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _Deconnexion(context);
        },
        child: Icon(Icons.logout),
      ),
    );
  }

  void _launchLinkedInProfile() async {
    const linkedInProfileUrl =
        "https://www.linkedin.com/in/wear-nawres-428926269?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app&fbclid=IwAR14fu3YOVO_mDyAthMfqydGFyS1kmn9fNPcp3aSZaI8n0-MdLwEK9gv1_o";

    try {
      await launch(linkedInProfileUrl);
    } catch (e) {
      print("Erreur lors du lancement de l'URL LinkedIn : $e");
    }
  }

  void _launchEmail() async {
    const emailAddress = "nawreselou2382@gmail.com";

    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: emailAddress,
    );

    try {
      await launch(emailLaunchUri.toString());
    } catch (e) {
      print("Erreur lors du lancement de l'e-mail : $e");
    }
  }

  void _launchPhone() async {
    const phoneNumber = "20925959";

    final Uri phoneLaunchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );

    try {
      await launch(phoneLaunchUri.toString());
    } catch (e) {
      print("Erreur lors du lancement du numéro de téléphone : $e");
    }
  }

  Future<void> _Deconnexion(BuildContext context) async {
    Navigator.pushNamedAndRemoveUntil(context, '/authentification', (route) => false);
  }
}
