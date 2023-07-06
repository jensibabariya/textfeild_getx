import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller.dart';

void main()
{
  runApp(MaterialApp(home: MyWidget(),));
}
class MyWidget extends StatelessWidget {
  final EmailValidationController _controller = Get.put(EmailValidationController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _controller.formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _controller.emailController,
                validator: (value) => _controller.validateEmail(value!),
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email Address',
                ),
              ), TextFormField(
                controller: _controller.passwordController,
                validator: (value) => _controller.validatePassword(value!),
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'password',
                ),
              ),
              TextFormField(
                controller: _controller.usernameController,
                validator: (value) => _controller.validateUsername(value!),
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
              ElevatedButton(
                onPressed: _controller.submitForm,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
