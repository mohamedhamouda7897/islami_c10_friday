import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c10_friday/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c10_friday/providers/my_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  LanguageBottomSheet({super.key});

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
                  provider.changeLanguage("en");
                },
                child: Text(
                  AppLocalizations.of(context)!.english,
                  style: GoogleFonts.elMessiri(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: provider.languageCode == "en"
                          ? MyThemeData.primaryColor
                          : MyThemeData.blackColor),
                ),
              ),
              provider.languageCode == "en"
                  ? Icon(Icons.done, size: 30, color: MyThemeData.primaryColor)
                  : SizedBox()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.changeLanguage("ar");
                },
                child: Text(
                  AppLocalizations.of(context)!.arabic,
                  style: GoogleFonts.elMessiri(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: provider.languageCode == "en"
                          ? MyThemeData.blackColor
                          : MyThemeData.primaryColor),
                ),
              ),
              provider.languageCode == "en"
                  ? SizedBox()
                  : Icon(Icons.done, size: 30, color: MyThemeData.primaryColor)
            ],
          ),
        ],
      ),
    );
  }
}
