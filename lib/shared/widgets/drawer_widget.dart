import 'package:flutter/material.dart';
import 'package:nutri_app/database/singleton/usuario_singleton.dart';
import 'package:nutri_app/shared/themes/appcolors.dart';
import 'package:nutri_app/shared/widgets/header.dart';
import 'package:nutri_app/shared/widgets/menu_item_widget.dart';
import 'package:nutri_app/userpage/pages/userpage.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UsuarioSingleton usuario = UsuarioSingleton();
    return Drawer(
      child: Material(
        color: AppColors.salmao,
        child: ListView(
          children: [
            headerBuilder(
                avatar: usuario.avatar,
                nome: usuario.nome,
                email: usuario.email,
                onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Userpage(
                          avatar: usuario.avatar,
                          nome: usuario.nome,
                        )))),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  menuItemWidget(
                      texto: 'Home',
                      icone: Icons.home,
                      onClicked: () => selectedItem(context, 0)),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  menuItemWidget(
                      texto: 'Histórico',
                      icone: Icons.history,
                      onClicked: () => selectedItem(context, 1)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
