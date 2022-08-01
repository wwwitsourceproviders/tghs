import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:tghs/screens/dashboard/dashboard.dart';
import 'package:tghs/screens/mainwindow/background/background.dart';
const users = const {
  'christopherthomas@tivolihigh.edu.jm': '12345',
  'hunter@gmail.com': 'hunter',
};
class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
   Duration get loginTime => Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    debugPrint('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String?> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return null;
    });
  }
  MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
            Background(resize:true,color:Color(0xFFf28500)),
            FlutterLogin(
            title: 'TGHS',
            logo: AssetImage('assets/logo-1.png'),
            onLogin: _authUser,
            onSubmitAnimationCompleted: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DashboardScreen(),
              ));
            },
            onRecoverPassword: _recoverPassword,
            theme:LoginTheme(
              switchAuthTextColor:Color(0xFF1630E9),
              accentColor: Color(0xFF1630E9),
              primaryColor: Color.fromRGBO(10, 10, 10, 0),
              buttonTheme: LoginButtonTheme(
                splashColor: Color(0xFF1630E9),
                backgroundColor: Color(0xFF1630E9),
                highlightColor: Colors.lightBlue,
                elevation: 9.0,
                highlightElevation: 6.0
              ),
              )
          ),
        ]
      ),
    );
  }
}
