import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff0D47A1),
              Color(0xff1976D2),
              Color(0xff42A5F5),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(25),

              child: Card(
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(25),

                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      //----------------------------------
                      // Bank Icon
                      //----------------------------------

                      CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.blue.shade100,
                        child: const Icon(
                          Icons.account_balance,
                          size: 50,
                          color: Colors.blue,
                        ),
                      ),

                      const SizedBox(height: 20),

                      const Text(
                        "My Bank",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        "Secure Banking Login",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(height: 35),

                      //----------------------------------
                      // Email
                      //----------------------------------

                      TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,

                        decoration: InputDecoration(

                          labelText: "Email",

                          hintText: "Enter Email",

                          prefixIcon: const Icon(Icons.email),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      //----------------------------------
                      // Password
                      //----------------------------------

                      TextField(

                        controller: passwordController,

                        obscureText: hidePassword,

                        decoration: InputDecoration(

                          labelText: "Password",

                          hintText: "Enter Password",

                          prefixIcon: const Icon(Icons.lock),

                          suffixIcon: IconButton(

                            icon: Icon(
                              hidePassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),

                            onPressed: () {

                              setState(() {

                                hidePassword = !hidePassword;

                              });

                            },
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text("Forgot Password?"),
                        ),
                      ),

                      const SizedBox(height: 15),

                      //----------------------------------
                      // Login Button
                      //----------------------------------

                      SizedBox(
                        width: double.infinity,
                        height: 55,

                        child: ElevatedButton(

                          style: ElevatedButton.styleFrom(

                            backgroundColor: Colors.blue,

                            shape: RoundedRectangleBorder(

                              borderRadius:
                                  BorderRadius.circular(15),

                            ),
                          ),

                          onPressed: () {

                            String email =
                                emailController.text.trim();

                            String password =
                                passwordController.text.trim();

                            ScaffoldMessenger.of(context)
                                .showSnackBar(
                              SnackBar(
                                content: Text(
                                    "Welcome $email"),
                              ),
                            );

                          },

                          child: const Text(

                            "LOGIN",

                            style: TextStyle(

                              fontSize: 18,

                              color: Colors.white,

                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center,

                        children: [

                          const Text(
                              "Don't have an account?"),

                          TextButton(
                            onPressed: () {},

                            child: const Text(
                              "Register",
                              style: TextStyle(
                                  fontWeight:
                                      FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
