import 'package:flutter/material.dart';
import 'package:email_auth/email_auth.dart';

class OtpLoginPage extends StatefulWidget {
  const OtpLoginPage({Key? key}) : super(key: key);

  @override
  State<OtpLoginPage> createState() => _OtpLoginPageState();
}

class _OtpLoginPageState extends State<OtpLoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  EmailAuth emailAuth =
      EmailAuth(sessionName: "Please Verify YOur Email for Signup ");

  void sendOTP() async {
    var res = await emailAuth.sendOtp(recipientMail: _emailController.text);
    if (res) {
      print("OTP Sent Successfully");
    } else {
      print(
          "Sorry! we can't send OTP in this email address, please provide valid mail address");
    }
  }

  void verifOTP() {
    var res = emailAuth.validateOtp(
        recipientMail: _emailController.text, userOtp: _otpController.text);

    if (res) {
      print("OTP verified");
    } else {
      print("Invalid OTP");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Please Verify Your Identity !"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  labelText: "Enter Email",
                  suffixIcon: TextButton(
                    onPressed: () => sendOTP(),
                    child: Text("Send OTP"),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 12,
              ),
              TextField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  labelText: "Enter Received OTP",
                ),
                controller: _otpController,
                keyboardType: TextInputType.number,
                obscureText: true,
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () => verifOTP(), child: Text("Verify OTP")),
            ],
          ),
        ),
      ),
    );
  }
}
