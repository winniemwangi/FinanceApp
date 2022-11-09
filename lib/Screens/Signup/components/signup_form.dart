import 'package:financeapp/components/account.dart';
import 'package:flutter/material.dart';

import '../../../components/account.dart';
import '../../../constants.dart';
import '../../Login/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstname = TextEditingController();
  final TextEditingController _lastname = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();



  bool? _success;
  String? _userEmail;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _firstname,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (email) {},
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter firstname';
              }
              return null;
            },
            decoration: const InputDecoration(
              hintText: "Firstname",
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              controller: _lastname,
              textInputAction: TextInputAction.done,
              // obscureText: true,
              cursorColor: kPrimaryColor,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter lastname';
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: "Lastname",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.person),
                ),
              ),


            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              controller: _emailController,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.emailAddress,
              // obscureText: true,
              cursorColor: kPrimaryColor,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter Email address';
                }
                return null;
              },
              decoration: const InputDecoration(

                hintText: "Email address",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.person),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              controller: _phoneController,
              // obscureText: true,
              cursorColor: kPrimaryColor,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter phonenumber';
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: "Phone number",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.call),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              controller: _passwordController,
              obscureText: true,
              cursorColor: kPrimaryColor,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter password';
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: "Password",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              controller: _passwordController,
              obscureText: true,
              cursorColor: kPrimaryColor,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter password';
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: "Confirm password",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          ElevatedButton(
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                _register();
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Processing')));
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              }
            },
            child: Text("Sign Up".toUpperCase()),
          ),

          const SizedBox(height: defaultPadding),
          Account(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  void _register() async {
    User? user;
    await
    _auth.createUserWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    )
    .then((value) => user=value.user!);
    if (user != null) {
      setState(() {
        _success = true;
        _userEmail = user?.email;
      });
    } else {
      setState(() {
        _success = true;
      });
    }
  }
}