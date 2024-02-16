import 'package:flutter/material.dart';
import 'package:islami_c10_friday/hadeth_model.dart';
import 'package:islami_c10_friday/providers/my_provider.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName="hadethDetails";
  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    var model=ModalRoute.of(context)!.settings.arguments as HadethModel;
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
              model.title,
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
                  model.content[index],
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                );
              },
              itemCount: model.content.length,
            ),
          ),
        ),
      ],
    );
  }
}
