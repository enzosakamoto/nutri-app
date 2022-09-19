import 'package:flutter/material.dart';
import 'package:nutri_app/database/repository_mock/repository_mock.dart';
import 'package:nutri_app/shared/widgets/appbar_widget.dart';
import 'package:nutri_app/shared/widgets/drawer_widget.dart';
import 'package:nutri_app/shared/widgets/icon_back_widget.dart';
import 'package:nutri_app/shared/widgets/tabela_nutricional_widget.dart';

class Datapage extends StatelessWidget {
  const Datapage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RepositoryMock repositorio = RepositoryMock();
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            titulo: 'DATABASE',
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
                    alimento: repositorio.alimentos[index], gramas: 100)),
            itemCount: repositorio.alimentos.length,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Center(
              child: Text(
                'Todos os dados foram obtidos por fontes externas (Tabela TACO, MyFitnessPal e entre outros).',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
