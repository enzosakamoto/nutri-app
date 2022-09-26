import 'package:flutter/material.dart';
import 'package:nutri_app/datapage/pages/datapage.dart';

class DataIconWidget extends StatelessWidget {
  const DataIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Datapage();
          }));
        },
        icon: const Icon(Icons.perm_media));
  }
}
