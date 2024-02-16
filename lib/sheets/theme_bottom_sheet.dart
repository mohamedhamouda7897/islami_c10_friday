import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c10_friday/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c10_friday/providers/my_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  ThemeBottomSheet({super.key});

  bool isLight = true;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.changeTheme(ThemeMode.light);
                },
                child: Text(
                  AppLocalizations.of(context)!.light,
                  style: GoogleFonts.elMessiri(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: provider.myTheme == ThemeMode.light
                          ? MyThemeData.primaryColor
                          : MyThemeData.blackColor),
                ),
              ),
              provider.myTheme == ThemeMode.light
                  ? Icon(Icons.done, size: 30, color: MyThemeData.primaryColor)
                  : SizedBox()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.changeTheme(ThemeMode.dark);
                },
                child: Text(
                  AppLocalizations.of(context)!.dark,
                  style: GoogleFonts.elMessiri(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: provider.myTheme == ThemeMode.light
                          ? MyThemeData.blackColor
                          : MyThemeData.primaryColor),
                ),
              ),
              provider.myTheme == ThemeMode.light
                  ? SizedBox()
                  : Icon(Icons.done, size: 30, color: MyThemeData.primaryColor)
            ],
          ),
        ],
      ),
    );
  }
}
