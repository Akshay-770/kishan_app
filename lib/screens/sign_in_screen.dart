// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class sign_in_screen extends StatefulWidget {
//   const sign_in_screen({super.key});
//
//   @override
//   State<sign_in_screen> createState() => _SignInScreenState();
// }
//
// class _SignInScreenState extends State<sign_in_screen> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//
//   bool _showPassword = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFFFE2A3),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Sign In",
//                   style: GoogleFonts.poppins(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 32,
//                     color: Colors.black87,
//                   ),
//                 ),
//                 const SizedBox(height: 32),
//                 TextField(
//                   controller: _emailController,
//                   keyboardType: TextInputType.emailAddress,
//                   style: GoogleFonts.poppins(fontSize: 16),
//                   decoration: InputDecoration(
//                     labelText: "Email",
//                     labelStyle: GoogleFonts.poppins(),
//                     prefixIcon: const Icon(Icons.email_outlined),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 TextField(
//                   controller: _passwordController,
//                   obscureText: !_showPassword,
//                   style: GoogleFonts.poppins(fontSize: 16),
//                   decoration: InputDecoration(
//                     labelText: "Password",
//                     labelStyle: GoogleFonts.poppins(),
//                     prefixIcon: const Icon(Icons.lock_outline),
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                         _showPassword ? Icons.visibility : Icons.visibility_off,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           _showPassword = !_showPassword;
//                         });
//                       },
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 32),
//                 SizedBox(
//                   width: double.infinity,
//                   height: 54,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       // Handle sign in logic here
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.orange,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                     child: Text(
//                       "Sign In",
//                       style: GoogleFonts.poppins(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 Center(
//                   child: TextButton(
//                     onPressed: () {
//                       // Navigate to forgot password screen
//                     },
//                     child: Text(
//                       "Forgot Password?",
//                       style: GoogleFonts.poppins(
//                         color: Colors.orange,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 Center(
//                   child: Text.rich(
//                     TextSpan(
//                       text: "Don't have an account? ",
//                       style: GoogleFonts.poppins(color: Colors.black87),
//                       children: [
//                         TextSpan(
//                           text: "Sign Up",
//                           style: GoogleFonts.poppins(
//                               color: Colors.orange,
//                               fontWeight: FontWeight.bold),
//                           // add gesture recognizer for tap if routing is needed
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
//


import 'package:flutter/material.dart';

class sign_in_screen extends StatelessWidget {
  const sign_in_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFD166), // Yellow background
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Image.asset(
                "assets/icon/kisan_logo.png",
                height: 48,
              ),
              const SizedBox(height: 26),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding:
                const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.9),
                      blurRadius: 48,
                      spreadRadius: 4,
                      offset: const Offset(0, 0),
                    ),
                    BoxShadow(
                      color: const Color(0xFFFFD166),
                      blurRadius: 80,
                      spreadRadius: 20,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Sign In",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(width: 6),
                        Icon(Icons.login, color: Colors.amber, size: 24),
                      ],
                    ),
                    const SizedBox(height: 28),
                    // Email input
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 14),
                      ),
                    ),
                    const SizedBox(height: 18),
                    // Password input
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 14),
                      ),
                    ),
                    const SizedBox(height: 26),
                    // Sign In Button with gradient
                    SizedBox(
                      width: double.infinity,
                      height: 47,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Colors.orange, Colors.deepOrange],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.orange.withOpacity(0.12),
                              blurRadius: 8,
                              offset: const Offset(2, 6),
                            )
                          ],
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          onPressed: () {/* Sign in logic here */},
                          child: const Text(
                            "Sign In",
                            style: TextStyle(fontSize: 19, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Sign up link
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account? ",
                            style: TextStyle(fontSize: 15),
                          ),
                          GestureDetector(
                            onTap: () {/* Navigate to sign up */},
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
