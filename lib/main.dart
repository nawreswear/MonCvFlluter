import 'package:cv/pages/localString.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:cv/pages/MapScreen.dart';
import 'package:cv/pages/ThemeProvider.dart';
import 'package:cv/pages/authentification.page.dart';
import 'package:cv/pages/competences.page.dart';
import 'package:cv/pages/formation.page.dart';
import 'package:cv/pages/home.page.dart';
import 'package:cv/pages/inscription.page.dart';
import 'package:cv/pages/parametre.page.dart';
import 'package:cv/pages/project.page.dart';
import 'package:cv/pages/provider.dart';
import 'package:cv/pages/stage.page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
void main() {

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<LanguageProvider>(
          create: (_) => LanguageProvider(),
        ),
        ChangeNotifierProvider<ThemeProvider>(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final routes = {
    '/home': (context) => HomePage(),
    '/inscription': (context) => InscriptionPage(),
    '/authentification': (context) => AuthentificationPage(),
    '/stage': (context) => StagePage(),
    '/formation': (context) => FormationPage(),
    '/project': (context) => ProjectPage(),
    '/competences': (context) => CompetencesPage(),
    '/parametres': (context) => ParametrePage(),
    '/MapScreen':(context)=>MapScreen(),
  };

  @override
  Widget build(BuildContext context) {

    final themeProvider = Provider.of<ThemeProvider>(context);

    return GetMaterialApp(
      translations: LocalString(),

      theme: themeProvider.isDarkMode ? ThemeData.dark() : ThemeData.light(),
      localizationsDelegates: [

        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      //locale: languageProvider,
     debugShowCheckedModeBanner: false,
      routes: routes,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 5), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => AuthentificationPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset('images/ss.jpg', fit: BoxFit.cover),
          Center(
            child: Text(
              'Nawres Wear',
              style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.italic,
              //  fontWeight: FontWeight.bold,
                color: Colors.black38,
              ),
            ).animate()
                .fade(duration: 500.ms)
                .scale(delay: 500.ms)
          ),
        ],
      ),
    );
  }
}
