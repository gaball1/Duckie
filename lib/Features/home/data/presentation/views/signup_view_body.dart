import 'package:englearning/Features/home/data/presentation/views/login.dart';
import 'package:englearning/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  _SignupViewBodyState createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  bool _obscurePassword = true;
  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(AssetsData.logo2)),
            SizedBox(height: 30),
            buildLabel(" Name"),
            buildTextField("Enter your Name"),
            SizedBox(height: 15),
            buildLabel(" Email"),
            buildTextField("Enter your Email"),
            SizedBox(height: 15),
            buildLabel(" Password"),
            buildTextField("Enter your password", isPassword: true),
            SizedBox(height: 15),
            buildLabel(" Birthdate"),
            buildDateField(),
            SizedBox(height: 25),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 118, 61, 1),
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.white, width: 2),
                  ),
                  elevation: 10,
                ),
                onPressed: () {
                  Get.to(() => LoginView()); // Navigate to Login page
                },
                child: Text(
                  "Create account",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(text,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
    );
  }

  Widget buildTextField(String hint, {bool isPassword = false}) {
    return Material(
      elevation: 6,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(15),
      child: TextField(
        obscureText: isPassword ? _obscurePassword : false,
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(_obscurePassword
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }

  Widget buildDateField() {
    return Material(
      elevation: 6,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(15),
      child: TextField(
        controller: _dateController,
        readOnly: true,
        decoration: InputDecoration(
          hintText: "Select your birthdate",
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          suffixIcon: Icon(Icons.calendar_today),
        ),
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
          );
          if (pickedDate != null) {
            setState(() {
              _dateController.text =
                  "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
            });
          }
        },
      ),
    );
  }
}
