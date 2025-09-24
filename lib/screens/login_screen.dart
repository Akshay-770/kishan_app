import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Implement your login logic here (API call, auth state update, etc.)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Logging in $email")),
      );
      // Navigate to dashboard or home screen on successful login
      Navigator.pushReplacementNamed(context, '/dashboard');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(height: 80),
              const Icon(
                Icons.shopping_cart,
                size: 80,
                color: Colors.orange,
              ),
              const SizedBox(height: 32),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Email is required';
                  final validEmail = RegExp(r'\S+@\S+\.\S+');
                  if (!validEmail.hasMatch(value)) return 'Enter a valid email';
                  return null;
                },
                onSaved: (value) => email = value ?? '',
              ),
              const SizedBox(height: 24),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Password is required';
                  if (value.length < 6) return 'Minimum 6 characters required';
                  return null;
                },
                onSaved: (value) => password = value ?? '',
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _submit,
                child: const Text('Login'),
                style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(16)),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/signup');
                },
                child: const Text(
                  "Don't have an account? Sign Up",
                  style: TextStyle(color: Colors.orange),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
