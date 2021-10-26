import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/route_manager.dart';
import 'package:getx_flutters/injection.dart';
import 'package:getx_flutters/presentation/routers/routers.dart';
import 'package:injectable/injectable.dart';

void main() async {
  configureInjection(Environment.dev);
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        smartManagement: SmartManagement.full,
        title: "Flutter GetX",
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        getPages: Routers().routes,
        initialRoute: Routers.splashScreen,
      );
  }
}
