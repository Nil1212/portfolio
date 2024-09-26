import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import '../Styles/styles.dart';
import 'header.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();
  Future sendEmail() async {
    final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
    const serviceId = "service_8o5rg4p";
    const templateId = "template_me2f8zo";
    const userId = "M4Lt7-7VTvYVv_QRX";

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          "service_id": serviceId,
          "template_id": templateId,
          "user_id": userId,
          "template_params": {
            "name": nameController.text,
            "subject": subjectController.text,
            "message": messageController.text,
            "user_email": emailController.text,
          },
        }),
      );
      if (response.statusCode == 200) {
        nameController.clear();
        subjectController.clear();
        messageController.clear();
        emailController.clear();

      } else {
        print('Failed to send email: ${response.body}');

      }
    } catch (e) {
      print('Error: $e');

    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: contactKey,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              alignment: WrapAlignment.start,
              spacing: 20,
              runSpacing: 20,
              children: [
                FadeInUp(
                  globalKey: GlobalKey(),
                  repeat: true,
                  duration: const Duration(milliseconds: 400),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: double.infinity,
                      minWidth: 300,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Email Me',
                            style: TextStyle(
                                fontSize: 25,
                                color: MyColors.main,
                                fontWeight: FontWeight.bold),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                controller: nameController,
                                decoration: const InputDecoration(
                                  labelText: 'Your Name',
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                controller: emailController,
                                decoration: const InputDecoration(
                                  labelText: 'Your Email',
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                controller: subjectController,
                                decoration: const InputDecoration(
                                  labelText: 'Subject',
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                controller: messageController,
                                decoration: const InputDecoration(
                                  labelText: 'Message',
                                  border: UnderlineInputBorder(),
                                ),
                              ),

                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 35),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: MyColors.xMain,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 15),
                                  ),
                                  onPressed: () {
                                    sendEmail();
                                  },
                                  child: Text(
                                    'Send email',
                                    style: TextStyle(
                                        color: MyColors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
