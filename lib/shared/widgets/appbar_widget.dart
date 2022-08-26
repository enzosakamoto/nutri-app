import 'package:flutter/material.dart';
import 'package:nutri_app/shared/widgets/icon_data_widget.dart';
import 'package:nutri_app/shared/themes/appcolors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.salmao,
      title: const Text('NUTRI APP'),
      centerTitle: true,
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: DataIconWidget(),
        )
      ],
    );
  }
}
