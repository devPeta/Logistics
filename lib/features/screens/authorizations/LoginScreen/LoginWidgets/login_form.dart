import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
import 'package:logistic/Utilities/validator/kValidator.dart';
import 'package:logistic/features/controller/login/login_controller.dart';
import '../../../../../Utilities/konstant/kTextString.dart';
import 'package:logistic/Utilities/konstant/kTextStyle.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
          key: controller.loginFormKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///Email TextField
                Expanded(
                  child: TextFormField(
                  style: kTextStyle.kTextFieldTextStyle,
                    controller: controller.emailController,
                    validator: (value) => KValidator.validateEmail(value),
                    decoration:  const InputDecoration(
                      labelText: TTexts.email,
                      prefixIcon: Icon(Icons.mail),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(height: kSizes.iconSm,),
                  
                ///Password TextField
                Obx(
                      ()=> TextFormField(
                    style: kTextStyle.kTextFieldTextStyle,
                    controller: controller.passwordController,
                    validator: (value) =>  KValidator.validateEmptyText('Password',value),
                    decoration: InputDecoration(
                      labelText: TTexts.password,
                      suffixIcon: IconButton(onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                          icon: Icon(controller.hidePassword.value ?     Icons.visibility_off : Icons.visibility,)),
                      prefixIcon:const Icon(Icons.power_input_outlined),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
               ),
               const SizedBox(height: kSizes.iconSm,),
                  
                ///Button
                SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: controller.loginUser,
                child: const Text(TTexts.logIn,
                          style: TextStyle( color: Color(0xFFFFFFFF), fontSize: 16, fontWeight: FontWeight.w500 ),
                        ),
                    ),
                ),
              ],
            ),
          );
  }
}