import 'package:address/widgets/common_text.dart';
import 'package:address/widgets/common_text_field.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressDetailsScreen extends StatefulWidget {
  const AddressDetailsScreen({super.key});

  @override
  State<AddressDetailsScreen> createState() => _AddressDetailsScreenState();
}

class _AddressDetailsScreenState extends State<AddressDetailsScreen> {
  late bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFf0f4f4),
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              const CommonTextWidget(text: "Name"),
              const CommonTextFieldWidget(hintText: "Name"),
              const SizedBox(
                height: 30,
              ),
              const CommonTextWidget(text: "Email address"),
              const CommonTextFieldWidget(hintText: "example@gmail.com"),
              const SizedBox(
                height: 30,
              ),
              const CommonTextWidget(text: "State"),
              const SizedBox(
                height: 50,
              ),
              const CommonTextWidget(text: "District"),
              const SizedBox(
                height: 50,
              ),
              const CommonTextWidget(text: "Landmark"),
              const CommonTextFieldWidget(hintText: "Landmark"),
              const SizedBox(
                height: 30,
              ),
              const CommonTextWidget(text: "Address"),
              const SizedBox(
                height: 80,
              ),
              //you can add the address field here

              const SizedBox(
                height: 30,
              ),
              const CommonTextWidget(text: "Phone number"),
              const CommonTextFieldWidget(hintText: "Phone number"),
              const SizedBox(
                height: 30,
              ),
              const CommonTextWidget(text: "Upload photo"),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: DottedBorder(
                  color: Colors.grey,
                  child: const SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.upload_file,
                            color: Colors.black,
                          ),
                          Text("Please upload a valid jpeg")
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: const Color(0xFF147C94),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value ?? false;
                        });
                      }),
                  RichText(
                    text: const TextSpan(
                        text: "I accept and agree to the",
                        style: TextStyle(color: Colors.black45, fontSize: 13),
                        children: <TextSpan>[
                          TextSpan(
                              text: "Terms & Conditions",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold))
                        ]),
                  )
                ],
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 0,
                        backgroundColor: const Color(0xFF147C94)),
                    onPressed: () {},
                    child: const Text(
                      "REGISTER",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
