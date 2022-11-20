import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:financeapp/constants.dart';
import 'package:financeapp/Screens/profile_items.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height), minTextAdapt: true);

    var profileInfo = Expanded(
      child: Column(
        children: <Widget>[
          Container(
            height: kSpacingUnit.w * 10,
            width: kSpacingUnit.w * 10,
            margin: EdgeInsets.only(top: kSpacingUnit.w * 3),
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: kSpacingUnit.w * 5,
                  backgroundImage: const AssetImage('assets/images/owner.jpeg'),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: kSpacingUnit.w * 2.5,
                    width: kSpacingUnit.w * 2.5,
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      heightFactor: kSpacingUnit.w * 1.5,
                      widthFactor: kSpacingUnit.w * 1.5,
                      child:const Icon(
                        LineAwesomeIcons.pen,
                        color: kDarkPrimaryColor,
                        // size: ScreenUtil().setSp(kSpacingUnit.w * 1.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: kSpacingUnit.w * 2),
          const Text(
            'Nicolas Adams',
            style: kTitleTextStyle,
          ),
          SizedBox(height: kSpacingUnit.w * 0.5),
          const Text(
            'nicolasadams@gmail.com',
            style: kCaptionTextStyle,
          ),
          SizedBox(height: kSpacingUnit.w * 2),
          Container(
            height: kSpacingUnit.w * 4,
            width: kSpacingUnit.w * 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kSpacingUnit.w * 3),
              color: Theme.of(context).accentColor,
            ),
            child: const Center(
              child: Text(
                'Upgrade to PRO',
                style: kButtonTextStyle,
              ),
            ),
          ),
        ],
      ),
    );

    // var themeSwitcher = ThemeSwitcher(
    //   builder: (context) {
    //     return AnimatedCrossFade(
    //       duration: Duration(milliseconds: 200),
    //       crossFadeState:
    //       // ThemeProvider.of(context).brightness == Brightness.dark
    //       //     ? CrossFadeState.showFirst
    //       //     : CrossFadeState.showSecond,
    //       firstChild: GestureDetector(
    //         onTap: () =>
    //             ThemeSwitcher.of(context).changeTheme(theme: kLightTheme),
    //         child:const Icon(
    //           LineAwesomeIcons.sun,
    //           // size: ScreenUtil().setSp(kSpacingUnit.w * 3),
    //         ),
    //       ),
    //       secondChild: GestureDetector(
    //         onTap: () =>
    //             ThemeSwitcher.of(context).changeTheme(theme: kDarkTheme),
    //         child:const Icon(
    //           LineAwesomeIcons.moon,
    //           // size: ScreenUtil().setSp(kSpacingUnit.w * 3),
    //         ),
    //       ),
    //     );
    //   },
    // );

    var header = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: kSpacingUnit.w * 3),
        const Icon(
          LineAwesomeIcons.arrow_left,
          // size: ScreenUtil().setSp(kSpacingUnit.w * 3),
        ),
        profileInfo,
        // themeSwitcher,
        SizedBox(width: kSpacingUnit.w * 3),
      ],
    );


        return Scaffold(
          body: Column(
            children: <Widget>[
              SizedBox(height: kSpacingUnit.w * 5),
              header,
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ProfileListItem(
                      icon: LineAwesomeIcons.user_shield,
                      text: 'Privacy',
                    ),
                    ProfileListItem(
                      icon: LineAwesomeIcons.history,
                      text: 'Purchase History',
                    ),
                    ProfileListItem(
                      icon: LineAwesomeIcons.question_circle,
                      text: 'Help & Support',
                    ),
                    ProfileListItem(
                      icon: LineAwesomeIcons.cog,
                      text: 'Settings',
                    ),
                    ProfileListItem(
                      icon: LineAwesomeIcons.user_plus,
                      text: 'Invite a Friend',
                    ),
                    ProfileListItem(
                      icon: LineAwesomeIcons.alternate_sign_out,
                      text: 'Logout',
                      hasNavigation: false,
                    ),
                  ],
                ),
              )
            ],
          ),
        );

  }
}