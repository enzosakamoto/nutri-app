import 'package:flutter/material.dart';
import 'package:nutri_app/database/singleton/usuario_singleton.dart';
import 'package:nutri_app/shared/widgets/appbar_widget.dart';
import 'package:nutri_app/shared/widgets/drawer_widget.dart';
import 'package:nutri_app/shared/widgets/icon_back_widget.dart';
import 'package:nutri_app/shared/widgets/tabela_nutricional_widget.dart';

class Historypage extends StatelessWidget {
  const Historypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UsuarioSingleton usuario = UsuarioSingleton();
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            titulo: 'HISTÓRICO',
          )),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                IconBackWidget(),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: TabelaNutricionalWidget(
                    alimento:
                        usuario.alimentos[usuario.alimentos.length - index - 1],
                    gramas: usuario
                        .listaGramas[usuario.listaGramas.length - index - 1])),
            itemCount: usuario.alimentos.length,
          ),
        ],
      ),
    );
  }
}
