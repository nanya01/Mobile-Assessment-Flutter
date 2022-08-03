import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/presentation/widgets/custom_elevated_button.dart';

class UserTypeScreen extends StatefulWidget {
  const UserTypeScreen({Key? key}) : super(key: key);

  @override
  _UserTypeScreenState createState() => _UserTypeScreenState();
}

class _UserTypeScreenState extends State<UserTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "What Kind of user are you?",
            style: Theme.of(context).textTheme.headline1,
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
            onPressed: () {},
            buttonHeight: 136,
          ),
          SizedBox(
            height: 40.h,
          ),
          CustomElevatedButton(
            text: "E-Commerce",
            onPressed: () {},
            buttonHeight: 136,
          )
        ],
      ),
    );
  }
}
