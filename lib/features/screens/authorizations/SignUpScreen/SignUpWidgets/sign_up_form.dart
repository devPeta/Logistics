import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
import 'package:logistic/Utilities/konstant/kTextStyle.dart';
import 'package:logistic/Utilities/validator/kValidator.dart';
import 'package:logistic/features/controller/signup/signup_controller.dart';
import 'package:logistic/features/screens/MyNavigator.dart';
import '../../../../../Utilities/konstant/kTextString.dart';
import 'package:get/get.dart';
class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
        key: controller.signupFormKey,
        child: Column(
          children: [
            Row(
              children: [
                ///FirstName
                Expanded(
                  child: TextFormField(
                    controller: controller.firstNameController,
                    validator: (value) => KValidator.validateEmptyText('First Name', value),
                    style: kTextStyle.kTextFieldTextStyle,
                    expands: false,
                    decoration: const InputDecoration(
                      label: Text(TTexts.firstName),
                      prefixIcon: Icon(Icons.supervisor_account),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
                const SizedBox(width: kSizes.spaceBtwItems,),
                ///LastName
                Expanded(
                  child: TextFormField(
                    controller: controller.lastNameController,
                    style: kTextStyle.kTextFieldTextStyle,
                    validator: (value) => KValidator.validateEmptyText('Last Name', value),
                    expands: false,
                    decoration: const InputDecoration(
                      label: Text(TTexts.lastName),
                      prefixIcon: Icon(Icons.supervisor_account),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: kSizes.spaceBtwItems,
            ),

            ///Username
            TextFormField(
              controller: controller.userNameController,
              style: kTextStyle.kTextFieldTextStyle,
              validator: (value) => KValidator.validateEmptyText('User name', value),
              decoration: const InputDecoration(
                label: Text(TTexts.userName),
                prefixIcon: Icon(Icons.manage_accounts_outlined),
              ),
            keyboardType: TextInputType.name,
            ),
            const SizedBox(
              height: kSizes.spaceBtwItems,
            ),

            ///Email
            TextFormField(
              controller: controller.emailController,
              style: kTextStyle.kTextFieldTextStyle,
              validator: (value) => KValidator.validateEmail(value),
              decoration: const InputDecoration(
                label: Text(TTexts.email),
                prefixIcon: Icon(Icons.mail),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: kSizes.spaceBtwItems,
            ),

            ///PhoneNumber
            TextFormField(
              controller: controller.phoneNumberController,
              style: kTextStyle.kTextFieldTextStyle,
              validator: (value) => KValidator.validatePhoneNumber(value),
              decoration: const InputDecoration(
                label: Text(TTexts.phoneNo),
                prefixIcon: Icon(Icons.call),
              ),
            keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: kSizes.spaceBtwItems,
            ),

            ///Password
            Obx(
                  ()=>
               TextFormField(
                controller: controller.passwordController,
                validator: (value) => KValidator.validatePassword(value),
                obscureText: controller.hidePasswordController.value,
                style: kTextStyle.kTextFieldTextStyle,
                decoration: InputDecoration(
                  label: const Text(TTexts.password),
                  prefixIcon: const Icon(Icons.power_input_outlined),
                  suffixIcon: IconButton(
                      onPressed: () => controller.hidePasswordController.value = !controller.hidePasswordController.value,
                      icon: Icon(controller.hidePasswordController.value ?
                      Icons.visibility_off : Icons.visibility,))
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            const SizedBox(
              height: kSizes.spaceBtwItems,
            ),

            ///Sign Up Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => controller.registerUser(),
                  child: const Text(TTexts.signUp, style: TextStyle( color: Color(0xFFFFFFFF), fontSize: 16, fontWeight: FontWeight.w500 ),)),
            ),
          ],
        ));
  }
}