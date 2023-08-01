import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:streamflix/models/highlight_model.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});
  @override
  State<StatefulWidget> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _formKeySignin = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passworRepeatController = TextEditingController();
  List<HighlightModel> highlight = [];

  void getHighlight() {
    highlight = HighlightModel.getHighlight();
  }

  @override
  Widget build(BuildContext context) {
    getHighlight();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(highlight[0].image),
          fit: BoxFit.cover,
        )),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            color: Colors.black.withOpacity(0.7),
            child: ListView(
              children: [
                appBar(),
                _signinForm(context),
                externalSigninButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text("Signin"),
    );
  }

  Form _signinForm(BuildContext context) {
    return Form(
      key: _formKeySignin,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Email"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                      .hasMatch(value)) {
                    return 'Please enter a real email';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  } else if (!RegExp(r'([^\s]){8,}').hasMatch(value)) {
                    return 'Password contains illegal characters';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: passworRepeatController,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Repeat Password"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please repeat your password';
                  } else if (value != passwordController.value.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 16.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKeySignin.currentState!.validate()) {
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: emailController.value.text,
                              password: passwordController.value.text)
                          .then((value) => () async {
                                print("user created");
                                return value;
                              })
                          .onError((error, stackTrace) {
                        print("error: $error");
                        return Future.value();
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Please fill input')),
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//https://developers.google.com/identity/protocols/oauth2/scopes?hl=de#accesscontextmanager
GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
  'email',
  //'https://www.googleapis.com/auth/cloud-platform',
]);

Future<void> _handleGoogleSignIn() async {
  try {
    await _googleSignIn.signIn();
  } catch (error) {
    print(error);
  }
}

ButtonBar externalSigninButtons() {
  return const ButtonBar(
    children: [
      ElevatedButton(onPressed: _handleGoogleSignIn, child: Text("Google"))
    ],
  );
}