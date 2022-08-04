import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/presentation/resources/asset_path.dart';
import 'package:mobile_assessment_flutter/presentation/widgets/custom_elevated_button.dart';

import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/routes_manager.dart';
import '../resources/styles.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 84.h,
            ),
            Text(
              "Congratulations!",
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "Your account has been successfully created.",
              style: getLightStyle(
                  color: ColorManager.black400, fontSize: FontSize.s16),
            ),
            SizedBox(
              height: 37.h,
            ),
            Center(
                child: Image.asset(
              AssetsPath.ready,
              width: 312,
              height: 312,
            )),
            SizedBox(
              height: 66.h,
            ),
            Center(
                child: SizedBox(
                    width: 194,
                    child: CustomElevatedButton(
                        text: "Continue",
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(Routes.loginRoute);
                        })))
          ],
        ),
      ),
    ));
  }
}
