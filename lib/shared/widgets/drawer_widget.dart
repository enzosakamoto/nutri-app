import 'package:flutter/material.dart';
import 'package:nutri_app/shared/themes/appcolors.dart';
import 'package:nutri_app/shared/widgets/menu_item_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: AppColors.salmao,
        child: ListView(
          children: [
            const SizedBox(
              height: 48,
            ),
            menuItemWidget(texto: 'Histórico', icone: Icons.history)
          ],
        ),
      ),
    );
  }
}
