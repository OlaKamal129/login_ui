import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:inst_meters/screens/home_screen/home_screen.dart';
import 'package:inst_meters/screens/meter_screen/meter_screen.dart';

import 'package:inst_meters/theme/app_colors.dart';
import 'package:inst_meters/widgets/app_text_styles.dart';
import 'package:inst_meters/widgets/custom_main_button.dart';
import 'package:inst_meters/widgets/custom_text_form_field.dart';
import 'package:inst_meters/widgets/drawer_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String routeName = "/loginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formState = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBgColor,
       appBar: AppBar(
        backgroundColor: AppColors.lightBgColor,
    leading: Builder(
      builder: (context) => IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    ),
  ),
       drawer: DrawerWidget(),
      body: SafeArea(
        
        child: SingleChildScrollView(
          child: Form(
            key: _formState,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 84,
                    width: 84,
                    child: Image.asset(
                      "assets/images/login.png",
                      width: 44,
                      height: 44,
                    ),
                  ),
                  SizedBox(height: 12),
                  Positioned(
                    left: 0,
                    child: Text(
                      "أهلاً بك من جديد",
                      textAlign: TextAlign.left,
                      style: AppTextStyles.styleS16W700(
                        color: AppColors.mainColors,
                      ).copyWith(fontSize: 28),
                    ),
                  ),
                  SizedBox(height: 12),
                  Center(
                    child: SizedBox(
                      height: 52,
                      width: 354,
                      child: Text(
                        " سجّل دخولك لعرض العدادات المكلف بها، وتوثيق تركيبها خطوة بخطوة",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.styleS14W400(
                          color: AppColors.lightSecTextColor,
                        ).copyWith(fontSize: 15),
                      ),
                    ),
                  ),

                  CustomTextFormField(
                    controller: emailController,

                    hintText: "اسم المستخدم",
                    prefixIcon: "assets/images/user.png",
                    validator: (p0) {
                      if (p0 == null || p0.isEmpty) {
                        return "يرجي ادخال اسم المستخدم!!";
                      }
                    },
                  ),
                  SizedBox(height: 30),
                  CustomTextFormField(
                    controller: passwordController,
                    hintText: "كلمة المرور",

                    isPassword: true,
                    validator: (p0) {
                      if (p0 == null || p0.isEmpty) {
                        return "يرجي ادخال كلمة المرور!!";
                      } else if (p0.length < 4) {
                        return "password must be atleast 6 characters";
                      }
                    },
                  ),
                  SizedBox(height: 100),
                  CustomMainButton(
                    isLoading: isLoading,
                    label: "تسجيل الدخول ",
                    image: Image.asset(
                      "assets/images/login.png",
                      width: 22,
                      height: 22,
                    ),
                    onPressed: () async {Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const MetersScreen()),
);},
                  ),
                  SizedBox(height: 24),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "نسيت كلمة المرور؟ تواصل مع المشرف"),
                      ],
                      style: Theme.of(
                        context,
                      ).textTheme.titleSmall!.copyWith(fontSize: 16),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).pushNamed(HomeScreen.routeName);
                        },
                    ),
                  ),
                  SizedBox(height: 24),
                  Center(
                    child: SizedBox(
                      height: 52,
                      width: 354,
                      child: Text(
                        "خدمة ميدانية لتسجيل العدادات المركبة والاحتفاظ ببيانات كل مهمة",
                        style: AppTextStyles.styleS14W400(
                          color: AppColors.lightSecTextColor,
                        ).copyWith(fontSize: 12),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //  void onRegister(){

  //   }
}
