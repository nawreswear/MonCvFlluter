import 'package:flutter/material.dart';
import 'package:get/get.dart';
class GlobalParams{
  static List<Map<String,dynamic>>menus=[
    {"title":'Accueil'.tr, 'icon':Icon(Icons.home,color: Colors.cyan),"route":"/home"},
    {"title": 'Stages'.tr, 'icon':Icon(Icons.work,color: Colors.cyan),"route":"/stage"},
    {"title": 'Certificat'.tr, 'icon':Icon(Icons.school,color: Colors.cyan),"route":"/formation"},
    {"title": 'Portfolio'.tr, 'icon': Icon(Icons.paste_rounded,color: Colors.cyan),"route":"/project"},
    {"title": 'Compétences'.tr, 'icon': Icon(Icons.computer_rounded,color: Colors.cyan),"route":"/competences"},
    {"title": 'Adresse'.tr, 'icon': Icon(Icons.map_outlined,color: Colors.cyan),"route":"/MapScreen"},
    { "title":'Paramétre'.tr, 'icon': Icon(Icons.settings,color: Colors.cyan),"route":"/parametres"},
    { "title":'Déconnexion'.tr, 'icon': Icon(Icons.output_sharp,color: Colors.cyan),"route":"/authentification"},
  ];
}