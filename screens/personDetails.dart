import 'package:flutter/material.dart';
import 'package:true_card/core/colors.dart';
import 'package:true_card/screens/selectCategories.dart';
import 'package:true_card/widgets/commonHeader.dart';
import 'package:true_card/widgets/customInputField.dart';
import 'package:true_card/widgets/elevatedButton.dart';
import 'package:true_card/widgets/stepProgress.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController salaryController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String? selectedCategory = null;
  final List<String> categories = [
    "Salaried",
    "Self-Employed",
    "Student",
    "Retired",
    "Unemployed"
  ];


  bool isValidEmail(String email) {
    return RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(email);
  }

  bool isValidPhone(String phone) {
    return RegExp(r'^[6-9]\d{9}$').hasMatch(phone); // 1 digit [6-9] + 9 digits = 10 total
  }


  bool isValidSalary(String salary) {
    return RegExp(r'^\d+$').hasMatch(salary); // Matches 1 or more digits
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyBackground,
      body: SafeArea(
          child: SingleChildScrollView(
        //header

        child: Column(
          children: [
            Commonheader(title: "Personal Details"),
            SizedBox(
              height: 10,
            ),

            //Step Progress

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stepprogress(count: "1", percentage: 33),
            ),
            SizedBox(
              height: 10,
            ),

            //Basic details

            Container(
              padding: EdgeInsets.all(15),
              width: double.maxFinite,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Tell us about yourself",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: AppColors.fontBlack)),
                  Text(
                      "We need some basic information to find the best credit card options for you.",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColors.subFontGrey)),
                  SizedBox(
                    height: 15,
                  ),
                  CustomInputField(
                    label: "Name",
                    hint: "Enter your name",
                    controller: nameController,
                    inputType: false,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomInputField(
                    label: "Email Address",
                    hint: "Enter your email address",
                    controller: emailController,
                    inputType: false,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomInputField(
                    label: "Contact Number",
                    hint: "Enter contact number",
                    controller: phoneController,
                    inputType: true,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Employment status",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: AppColors.fontBlack,
                        ),
                      ),
                      SizedBox(height: 8),
                      //Drop down employment status
                      DropdownButtonFormField<String>(
                        dropdownColor: Colors.white,
                        style: TextStyle(
                            color: AppColors.adminBackground,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: AppColors.subFontGrey, width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.adminBackground, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            )),
                        value: selectedCategory,
                        hint: Text(
                          "Select Category",
                          style: TextStyle(
                              fontSize: 16, color: AppColors.subFontGrey),
                        ),
                        items: categories.map(
                          (e) {
                            return DropdownMenuItem<String>(
                              value: e,
                              child: Text(e),
                            );
                          },
                        ).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedCategory = value;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomInputField(
                      label: "Annual Income",
                      hint: "Enter your annual income",
                      inputType: true,
                      controller: salaryController)
                ],
              ),
            ),
            //secure text
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.security_sharp,
                    size: 20,
                    color: AppColors.subFontGrey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Text(
                          "Your information is secure and will only be used to find the best credit card matches for you.",
                          style: TextStyle(
                              color: AppColors.subFontGrey,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)))
                ],
              ),
            ),
            //Continue button
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(20),
              color: Colors.white,
              child: Column(
                children: [
                  elevatedButton(
                      onPressed: () {
                        String name = nameController.text.trim();
                        String email = emailController.text.trim();
                        String salary = salaryController.text.trim();
                        String phone = phoneController.text.trim();

                        if (selectedCategory == null ||
                            selectedCategory!.isEmpty ||
                            name.isEmpty ||
                            email.isEmpty ||
                            salary.isEmpty ||
                            phone.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Please fill all the fields.",
                                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              backgroundColor: AppColors.adminBackground,
                            ),
                          );
                          return;
                        }

// Now all fields are filled – validate formats
                        if (!isValidEmail(email)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Please enter a valid email.",
                                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              backgroundColor: AppColors.adminBackground,
                            ),
                          );
                          return;
                        }

                        if (!isValidSalary(salary)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Please enter a valid salary.",
                                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              backgroundColor: AppColors.adminBackground,
                            ),
                          );
                          return;
                        }

                        if (!isValidPhone(phone)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Please enter a valid phone number.",
                                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              backgroundColor: AppColors.adminBackground,
                            ),
                          );
                          return;
                        }

// All validations passed
                        print("All fields are valid!");

                      },
                      title: "Continue"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("All fields are required to continue",
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColors.subFontGrey,
                          fontWeight: FontWeight.w500))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
