import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final patientIDController = TextEditingController();

  Widget buildEmail() => TextField(
        controller: emailController,
        decoration: InputDecoration(
          labelText: 'Email',
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.done,
      );
  Widget buildPatientID() => TextField(
        controller: patientIDController,
        decoration: InputDecoration(
          labelText: 'Patient ID',
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
      );

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 85, 85),
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomRight,
                    colors: [Colors.redAccent, Colors.white])),
            child: ListView(
              padding: EdgeInsets.all(32),
              children: [
                SizedBox(height: 90),
                Padding(
                  padding: const EdgeInsets.all(35),
                  child: Text(
                    'Welcome to HPS',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
                SizedBox(height: 50),
                buildEmail(),
                SizedBox(height: 50),
                buildPatientID(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
