// import 'package:flutter/material.dart';
//
//
// // Import your screens here
// import 'screens/splash_screen.dart';
// import 'screens/onboarding_screen.dart';
// import 'screens/login_screen.dart';
// import 'screens/signup_screen.dart';
// import 'screens/dashboard_screen.dart';
// import 'screens/product_list_screen.dart';
// import 'screens/product_details_screen.dart';
// import 'screens/cart_screen.dart';
// import 'screens/profile_screen.dart';
// import 'screens/orders_screen.dart';
// import 'screens/settings_screen.dart';
// import 'screens/home_screen.dart';
// import 'screens/FarmerBook.dart';
// import 'screens/GroceryBook.dart';
// import 'screens/Historypage.dart';
// import 'screens/Mainscreen.dart';
// import 'screens/userscreen.dart';
// import 'screens/reset_password.dart';
// import 'screens/forgot_password.dart';
// import 'screens/logout_page.dart';
// import 'screens/otp_screen.dart';
// import 'screens/profit_loss.dart';
// import 'screens/farmer_report.dart';
// import 'screens/grocery_report.dart';
// import 'screens/sign_in_screen.dart';
//
//
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//
//       home: sign_in_screen(),
//     );
//   }
// }
//
//
//
//
//
//

import 'package:flutter/material.dart';

// Import your screens here
import 'screens/splash_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/product_list_screen.dart';
import 'screens/product_details_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/orders_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/home_screen.dart';
import 'screens/FarmerBook.dart';
import 'screens/GroceryBook.dart';
import 'screens/Historypage.dart';
import 'screens/Mainscreen.dart';
import 'screens/userscreen.dart';
import 'screens/reset_password.dart';
import 'screens/forgot_password.dart';
import 'screens/logout_page.dart';
import 'screens/otp_screen.dart';
import 'screens/profit_loss.dart';
import 'screens/farmer_report.dart';
import 'screens/grocery_report.dart';
import 'screens/sign_in_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    '/splash': (context) => SplashScreen(),
    '/onboarding': (context) => onboarding_screen(),
    '/login': (context) => LoginScreen(),
    '/signup': (context) => signup_screen(),
    '/dashboard': (context) => DashboardScreen(),
    '/product_list': (context) => ProductListScreen(),
//    '/product_details': (context) => product_details_screen(),
    '/cart': (context) => cart_screen(),
    '/profile': (context) => ProfileScreen(),
    '/orders': (context) => OrdersScreen(),
    '/settings': (context) => SettingsScreen(),
    '/home': (context) => home_screen(),
    '/farmer_book': (context) => FarmerBook(),
    '/grocery_book': (context) => GroceryBook(),
    '/history': (context) => Historypage(),
    '/main': (context) => Mainscreen(),
    '/user': (context) => userscreen(),
    '/reset_password': (context) => reset_password(),
    '/forgot_password': (context) => forgot_password(),
    '/logout': (context) => logout_page(),
    '/otp': (context) => otp_screen(),
    '/profit_loss': (context) => profit_loss(),
    '/farmer_report': (context) => FarmerReportPage(),
    '/grocery_report': (context) => grocery_report(),
    '/sign_in': (context) => sign_in_screen(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/sign_in',
      routes: routes,
    );
  }
}
