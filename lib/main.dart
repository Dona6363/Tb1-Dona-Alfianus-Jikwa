import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LOGIN PAGE")),
      body: _currentPage == 0
          ? LoginWidget()
          : (_currentPage == 1 ? ResetPasswordPage() : HomePage()),
    );
  }
}

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final String email = "donajickwa@gmail.com"; // Email hardcode
  final String password = "41822010135"; // Password hardcode

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/logo.png', width: 200, height: 200),
          TextField(
            controller: emailController,
            decoration: InputDecoration(labelText: 'Username'),
          ),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ResetPasswordPage(),
              ));
            },
            child: Text('RESET PASSWORD'),
          ),
          ElevatedButton(
            onPressed: () {
              String inputEmail = emailController.text;
              String inputPassword = passwordController.text;

              if (inputEmail == email && inputPassword == password) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
              } else {

              }
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reset Password")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png', width: 200, height: 200),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'New Password'),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Confirm Password'),
            ),
            ElevatedButton(
              onPressed: () {

              },
              child: Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Tambahkan logika menu di sini.
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Tambahkan logika pencarian di sini.
            },
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {

          },
          child: Text('WELCOME'),
        ),
      ),
    );
  }
}