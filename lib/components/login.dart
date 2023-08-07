import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:galaxia/models/highlight_model.dart';
import 'package:galaxia/pages/signin.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  List<HighlightModel> highlight = [];

  void getHighlight() {
    highlight = HighlightModel.getHighlight();
  }

  @override
  Widget build(BuildContext context) {
    getHighlight();
    return _loginform(context);
  }

  Form _loginform(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  return 'Please enter your password';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: emailController.value.text,
                        password: passwordController.value.text);
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Signin()));
                },
                child: const Text('Or create a new Account'),
              ),
            ),
          ),
          externalSigninButtons(context)
        ],
      ),
    );
  }
}

//https://developers.google.com/identity/protocols/oauth2/scopes?hl=de#accesscontextmanager
GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
  'email',
  //'https://www.googleapis.com/auth/cloud-platform',
]);

Future<void> _handleGoogleLogIn(BuildContext context) async {
  try {
    GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
    AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    FirebaseAuth.instance.signInWithCredential(credential);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text("Logged in as:${FirebaseAuth.instance.currentUser}")),
    );
  } catch (error) {
    print(error);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Something went wrong please try again')),
    );
  }
}

ButtonBar externalSigninButtons(BuildContext context) {
  return ButtonBar(
    children: [
ElevatedButton(
  onPressed: () => _handleGoogleLogIn(context),
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
     padding: EdgeInsets.symmetric(horizontal: 16), // Erhöhe den horizontalen Abstand

  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'assets/GoogleIcon.png',
        width: 24,
        height: 24, 
      ),
      SizedBox(width: 8),
      Text(
        "Google",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    ],
  ),
)
    ],
  );
}
