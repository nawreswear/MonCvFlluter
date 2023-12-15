import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import '../config/global.params.dart';

class MyDrawer extends StatelessWidget{
  late SharedPreferences prefs;
  @override
  Widget build (BuildContext context){
    return Drawer(child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.white,Colors.cyan,Colors.white])),
              child: Center(
                child: CircleAvatar(backgroundImage: AssetImage("images/logoo.jpg"),radius: 80,),
              )),
          ... (GlobalParams.menus as List).map((item){
            return Column(
              children: [
                ListTile(title: Text('${item['title']}'.tr,style: TextStyle(fontSize: 22)),
                    leading: item['icon'],
                    trailing: Icon(Icons.arrow_right,color:Colors.cyan),
                    onTap: ()async{
                      if('${item['title']}'!="Déconnexion"){
                        Navigator.pop(context);
                        Navigator.pushNamed(context,'${item['route']}');
                      }else {
                        prefs=await SharedPreferences.getInstance();
                        prefs.setBool("connect", false);
                        Navigator.pushNamedAndRemoveUntil(context, '/authentification', (route) => false);
                      }
                    })
              ],
            );
          })]
    ));
  }
}
