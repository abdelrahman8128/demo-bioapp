import 'package:flutter/material.dart';
import 'package:sahha_flutter/sahha_flutter.dart';
import 'package:sahha_flutter_example/Views/ScoresView.dart';
import 'package:sahha_flutter_example/Views/HomeView.dart';
import 'package:sahha_flutter_example/Views/WebView.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  @override
  void initState() {
    super.initState();

    // Use default values
    SahhaFlutter.configure(
      environment: SahhaEnvironment.sandbox,
    )
        .then((success) => {debugPrint(success.toString())})
        .catchError((error, stackTrace) => {debugPrint(error.toString())});

    String appId = 'oeEG30zj61qlC7jaEuXvdKagwhbTNF1N';
    String appSecret = 'SwzAaHIoKI0cnCEG9IB3kx2VhkM3qWMCGTIAHmr9DLAkTEd8Zgvl5HYaCfD1HuRx';
    String externalId = '1';

    SahhaFlutter.authenticate(
        appId: appId, appSecret: appSecret, externalId: externalId)
        .then((success) {
     print('auth successfully');
    }).catchError((error, stackTrace) => {debugPrint(error.toString())});


    SahhaFlutter.enableSensors(
        [SahhaSensor.sleep, SahhaSensor.step_count, SahhaSensor.heart_rate])
        .then((value) {
      setState(() {
      });
    }).catchError((error) {
      debugPrint(error.toString());
    });

    SahhaFlutter.getSensorStatus(
        [SahhaSensor.sleep, SahhaSensor.step_count, SahhaSensor.heart_rate,SahhaSensor.walking_heart_rate_average,SahhaSensor.stand_time,])
        .then((value) {
      setState(() {
      });
    }).catchError((error) {
      debugPrint(error.toString());
    });

  }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const HomeView(),
        '/scores': (BuildContext context) => const ScoresView(),
        '/web': (BuildContext context) => const WebView(),
      },
    );
  }
}
