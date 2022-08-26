import 'package:flutter/material.dart';
import 'package:nutri_app/shared/widgets/appbar_widget.dart';
import 'package:nutri_app/shared/widgets/drawer_widget.dart';
import 'package:nutri_app/shared/widgets/icon_home_widget.dart';

class Historypage extends StatelessWidget {
  const Historypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50), child: AppBarWidget()),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                IconHomeWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
