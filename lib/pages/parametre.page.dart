import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../config/global.params.dart';
import 'ThemeProvider.dart';

class ParametrePage extends StatefulWidget {
  @override
  _ParametrePageState createState() => _ParametrePageState();
}

class _ParametrePageState extends State<ParametrePage> {
  String monLabel = '';

  static List<Map<String, dynamic>> locale = [
    {"locale": Locale('en', 'US'), "name": "English", "imagePath": "images/amerca.png"},
    {"locale": Locale('fr', 'FR'), "name": "Français", "imagePath": "images/France.png"},
    {"locale": Locale('ar', 'DZ'), "name": "العربية", "imagePath": "images/ee.jpg"},
  ];
  updatelanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  builddialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (builder) {
        return AlertDialog(
          title: Text("Choisissez une langue".tr),
          content: Container(
            width: double.maxFinite,
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Image.asset(
                      locale[index]['imagePath'],
                      width: 24,
                      height: 24,
                    ),
                    title: GestureDetector(
                      onTap: () {
                        print(locale[index]['name']);
                        updatelanguage(locale[index]['locale']);
                      },
                      child: Text(locale[index]['name']),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.blue,
                );
              },
              itemCount: locale.length,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paramétre'.tr),
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
        centerTitle: true,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              builddialog(context);
            },
            child: Text("Choisissez une langue".tr),
          ),
        ],
      ),
    );
  }
}