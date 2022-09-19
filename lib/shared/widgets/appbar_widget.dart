import 'package:flutter/material.dart';
import 'package:nutri_app/shared/widgets/icon_data_widget.dart';
import 'package:nutri_app/shared/themes/appcolors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.titulo}) : super(key: key);
  final String titulo;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.salmao,
      title: Text(titulo),
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
