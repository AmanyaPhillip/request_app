import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/app_data.dart';

class SetupScreen extends StatefulWidget {
  final VoidCallback onSetupComplete;

  const SetupScreen({super.key, required this.onSetupComplete});

  @override
  State<SetupScreen> createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _unitNumberController = TextEditingController();
  String? _selectedTitle;
  String? _selectedProject;
  final List<String> _projects = kBuildings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Luxo requests'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome to Luxo requests',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1B1B1B),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Let\'s set up your profile to streamline your service requests.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 32),
              DropdownButtonFormField<String>(
                initialValue: _selectedTitle,
                decoration: const InputDecoration(
                  labelText: 'Title',
                ),
                items: ['Mr.', 'Mrs.'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedTitle = newValue;
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return 'Please select your title';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _firstNameController,
                decoration: const InputDecoration(
                  labelText: 'First Name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your first name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _lastNameController,
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your last name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                initialValue: _selectedProject,
                decoration: const InputDecoration(
                  labelText: 'Real Estate Project (Building)',
                ),
                items: _projects.map((project) {
                  return DropdownMenuItem(
                    value: project,
                    child: Text(project),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedProject = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select your building';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _unitNumberController,
                decoration: const InputDecoration(
                  labelText: 'Unit Number',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your unit number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _saveSetup,
                  child: const Text(
                    'Complete Setup',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _saveSetup() async {
    if (_formKey.currentState!.validate()) {
      final prefs = await SharedPreferences.getInstance();

      await prefs.setString('title', _selectedTitle!);
      await prefs.setString('firstName', _firstNameController.text);
      await prefs.setString('lastName', _lastNameController.text);
      await prefs.setString('phone', _phoneController.text);
      await prefs.setString('email', _emailController.text);
      await prefs.setString('project', _selectedProject!);
      await prefs.setString('unitNumber', _unitNumberController.text);
      await prefs.setBool('setup_completed', true);

      widget.onSetupComplete();
    }
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _unitNumberController.dispose();
    super.dispose();
  }
}
