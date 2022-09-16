import 'package:flutter/material.dart';
import 'package:nutri_app/database/alimento/alimento.dart';
import 'package:nutri_app/database/repository_mock/repository_mock.dart';
import 'package:nutri_app/homepage/widgets/popup_widget.dart';
import 'package:nutri_app/shared/widgets/drawer_widget.dart';
import 'package:nutri_app/shared/widgets/footer.dart';
import 'package:nutri_app/shared/widgets/tabela_nutricional_widget.dart';
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
  bool isVisible = false;
  double gramas = 100;
  Alimento alimento =
      Alimento('ERROR', 0, 0, 0, 0, 0, 0, 0, 0, 'assets/images/heitor.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: const FooterWidget(),
      drawer: const DrawerWidget(),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50), child: AppBarWidget()),
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Conversão de valores nutricionais',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            overflow: TextOverflow.fade,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Escolha um alimento do banco de dados e digite um valor de massa',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
            ),
          ),
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
                      items: retornaNomes(repositorio.alimentos)
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
                    onChanged: (value) {
                      if (value == '' || value == ' ') gramas = 100;
                      if (value != '' && value != ' ') {
                        if (isNumeric(value)) {
                          gramas = double.parse(value);
                        } else {
                          showDialog(
                              context: context,
                              builder: (context) => const PopupWidget());
                        }
                      }
                    },
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
                            if (itemSelecionado == null ||
                                isNumeric(controller.toString())) {
                              print('popup');
                            } else {
                              isVisible = true;
                              alimento =
                                  procuraAlimento(itemSelecionado.toString());
                            }
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
                  child: TabelaNutricionalWidget(
                    alimento: alimento,
                    gramas: gramas,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}
