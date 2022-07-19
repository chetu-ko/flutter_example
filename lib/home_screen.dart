import 'package:flutter/material.dart';
import 'package:medium_work/costum_intro_screen/introscreen_main.dart';
import 'package:medium_work/data_table/data_table_main.dart';
import 'package:medium_work/dated_tabs/dated_tabs.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DatedTabsScreen(),
                ),
              );
            },
            child: const Text('DatedTabs'),
          ),
          OutlinedButton(
            onPressed: () {
               Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const IntroScreen(),
                ),
              );
            },
            child: const Text('IntroScreen'),
          ),
          OutlinedButton(
            onPressed: () {
               Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>  DataTableScreen(),
                ),
              );
            },
            child: const Text('DataTable'),
          ),
        ],
      ),
    );
  }
}
