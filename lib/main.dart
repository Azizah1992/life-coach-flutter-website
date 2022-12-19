import 'package:backend/firebase_options.dart';
import 'package:backend/routes/routes.dart';
import 'package:sizer/sizer.dart';
// import 'package:backend/view/screens/about.dart';
// import 'package:backend/view/screens/auth/login.dart';
import 'package:backend/view/screens/homeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:responsive_framework/responsive_framework.dart';
// import 'package:sizer/sizer.dart';

// void main() {
//   runApp(const MyApp());
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        // builder: (context, child) => ResponsiveWrapper.builder(
        //   BouncingScrollWrapper.builder(context, child!),
        //   // maxWidth: 1200,
        //   // minWidth: 450,
        //   defaultScale: true,
        //   breakpoints: [
        //     const ResponsiveBreakpoint.resize(450, name: MOBILE),
        //     const ResponsiveBreakpoint.autoScale(800, name: TABLET),
        //     const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
        //     const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
        //     const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        //   ],
        // ),
        initialRoute: Routes.home,
        getPages: AppRoute.routes,

        debugShowCheckedModeBanner: false,
        // home: const HomePage(),
      );
    });
  }
}
