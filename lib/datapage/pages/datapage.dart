import 'package:flutter/material.dart';
import 'package:nutri_app/database/repository_mock/repository_mock.dart';
import 'package:nutri_app/shared/widgets/appbar_widget.dart';
import 'package:nutri_app/shared/widgets/icon_home_widget.dart';
import 'package:nutri_app/shared/widgets/tabela_nutricional_widget.dart';

class Datapage extends StatelessWidget {
  const Datapage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RepositoryMock repositorio = RepositoryMock();
    return Scaffold(
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
          ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: TabelaNutricionalWidget(
                    alimento: repositorio.alimentos[index], gramas: 100)),
            itemCount: repositorio.alimentos.length,
          ),
        ],
      ),
    );
  }
}
