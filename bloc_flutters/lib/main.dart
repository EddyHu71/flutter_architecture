import 'package:bloc_flutters/injection.dart';
import 'package:bloc_flutters/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

void main() async {
  await Hive.initFlutter();
  await dotenv.load(fileName: ".env");
  configureInjection(Environment.dev);
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Login",
      theme: ThemeData(
        textTheme: GoogleFonts.heeboTextTheme(),
        primarySwatch: Colors.blue,
      ),
      getPages: Routers().routes,
      initialRoute: Routers.splashScreen,
    );
  }
}
