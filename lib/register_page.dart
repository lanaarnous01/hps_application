import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
  Widget buildPhoneNo() => TextField(
        controller: patientIDController,
        decoration: InputDecoration(
          labelText: 'Phone Number',
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
      );
  Widget buildName() => TextField(
        controller: emailController,
        decoration: InputDecoration(
          labelText: 'Name',
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.emailAddress,
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
                    'Nurse Registration',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
                SizedBox(height: 50),
                buildName(),
                SizedBox(
                  height: 50,
                ),
                buildEmail(),
                SizedBox(height: 50),
                buildPhoneNo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
