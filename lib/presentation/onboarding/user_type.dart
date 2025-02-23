import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/presentation/widgets/custom_elevated_button.dart';

import '../resources/routes_manager.dart';

class UserTypeScreen extends StatefulWidget {
  const UserTypeScreen({Key? key}) : super(key: key);

  @override
  _UserTypeScreenState createState() => _UserTypeScreenState();
}

class _UserTypeScreenState extends State<UserTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 84.h),
              Text(
                "What Kind of user are you?",
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                "we will adapt the app to suit your needs.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: 48.h,
              ),
              CustomElevatedButton(
                text: "Personal",
                buttonTextStyle: Theme.of(context).textTheme.headline1,
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(Routes.personalRegisterRoute);
                },
                buttonHeight: 136,
              ),
              SizedBox(
                height: 40.h,
              ),
              CustomElevatedButton(
                text: "E-Commerce",
                buttonTextStyle: Theme.of(context).textTheme.headline1,
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(Routes.eCommerceRegisterRoute);
                },
                buttonHeight: 136,
              )
            ],
          ),
        ),
      ),
    );
  }
}
