import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String confirmPassword = '';

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Implement your signup logic here (API call, auth state update, etc.)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Signing up as $email")),
      );
      // Navigate to login screen after successful signup
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(height: 80),
              const Icon(
                Icons.person_add,
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
                  if (value == null || value.isEmpty) return 'Password required';
                  if (value.length < 6) return 'Password must be at least 6 characters';
                  return null;
                },
                onSaved: (value) => password = value ?? '',
              ),
              const SizedBox(height: 24),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Confirm your password';
                  if (value != password) return 'Passwords do not match';
                  return null;
                },
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _submit,
                child: const Text('Sign Up'),
                style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(16)),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: const Text(
                  "Already have an account? Login",
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
