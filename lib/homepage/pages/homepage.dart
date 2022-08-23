import 'package:flutter/material.dart';
import 'package:nutri_app/database/repository_mock/repository_mock.dart';
import 'package:nutri_app/homepage/widgets/tabela_nutricional_widget.dart';
import 'package:nutri_app/shared/themes/appcolors.dart';
import 'package:nutri_app/shared/widgets/appbar_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController controller = TextEditingController();
  String? itemSelecionado;
  RepositoryMock repositorio = RepositoryMock();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50), child: AppBarWidget()),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                    width: 300,
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        label: const Text('Alimentos'),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3, color: AppColors.salmao),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      value: itemSelecionado,
                      items: repositorio.nomes_alimentos
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ))
                          .toList(),
                      onChanged: (item) => setState(() {
                        itemSelecionado = item;
                        print(itemSelecionado);
                      }),
                    )),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: controller,
                    decoration: InputDecoration(
                      label: const Text('Gramas'),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: AppColors.salmao),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColors.salmao,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 5,
                        )
                      ]),
                  child: Center(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: const Text(
                          'Enviar!',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Visibility(
                  visible: isVisible,
                  child: TabelaNutricionalWidget(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
