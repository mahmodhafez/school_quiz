import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Edit Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: CircleAvatar(
                  radius: 44,
                  backgroundImage: AssetImage(
                    'assets/pic.jpg',
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Become an publisher',
                  style: TextStyle(
                      color: Colors.lightBlue, fontWeight: FontWeight.bold),
                ),
              ),
              const CustomInput(
                hint: 'email@example.com',
                icon: Icons.email_outlined,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomInput(
                hint: 'Name',
                icon: Icons.person,
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text('Change password'),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomInput(
                hint: 'Enter old password',
                icon: Icons.lock_outlined,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomInput(
                hint: 'Enter new password',
                icon: Icons.lock_outlined,
              ),
              const SizedBox(
                height: 70,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(360, 56),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Save',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
    required this.icon,
    required this.hint,
  });
  final IconData icon;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon),
        suffixIcon: const Icon(
          Icons.cancel_outlined,
          color: Colors.grey,
        ),
        fillColor: const Color(0xFFf2edf1),
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }
}
