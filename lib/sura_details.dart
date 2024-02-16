import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c10_friday/providers/my_provider.dart';
import 'package:islami_c10_friday/sura_model.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "SuraDetails";

  SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as SuraModel;

    var provider = Provider.of<MyProvider>(context);
    if (verses.isEmpty) {
      loadFile(model.index);
    }

    print(verses.length);
    return Stack(
      children: [
        Image.asset(
         provider.getBackgroundImagePath(),
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              model.name,
            ),
          ),
          body: Card(
            color: Colors.white.withOpacity(.7),
            elevation: 12,
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.background)),
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                thickness: 1,
                endIndent: 50,
                indent: 50,
                color: Color(0xFFB7935F),
              ),
              itemBuilder: (context, index) {
                return Text(
                  verses[index],
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                );
              },
              itemCount: verses.length,
            ),
          ),
        ),
      ],
    );
  }

  Future<void> loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.split("\n");
    verses = lines;
    print(sura);
    setState(() {});
  }
}
