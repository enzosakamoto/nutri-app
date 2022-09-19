import 'package:flutter/material.dart';
import 'package:nutri_app/database/modules/alimento/alimento.dart';
import 'package:nutri_app/database/repository_mock/repository_mock.dart';
import 'package:nutri_app/database/singleton/usuario_singleton.dart';
import 'package:nutri_app/homepage/widgets/popup_widget.dart';
import 'package:nutri_app/shared/widgets/drawer_widget.dart';
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
  UsuarioSingleton usuario = UsuarioSingleton();
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
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            titulo: 'NUTRI APP',
          )),
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Conversão de valores nutricionais',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
            ),
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
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: DropdownButtonFormField<String>(
                    isExpanded: true,
                    iconSize: 0,
                    decoration: InputDecoration(
                      label: const Text('Alimentos'),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: AppColors.salmao),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    value: itemSelecionado,
                    items: retornaNomes(repositorio.alimentos)
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(fontSize: 15),
                                overflow: TextOverflow.fade,
                              ),
                            ))
                        .toList(),
                    onChanged: (item) => setState(() {
                      itemSelecionado = item;
                      // print(itemSelecionado);
                    }),
                  ),
                )),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: TextFormField(
                      onChanged: (value) {
                        if (value == '' || value == ' ') gramas = 100;
                        if (value != '' && value != ' ') {
                          if (isNumeric(value)) {
                            gramas = double.parse(value);
                          } else {
                            showDialog(
                                context: context,
                                builder: (context) => const PopupWidget(
                                      texto:
                                          'Por favor, digite um valor válido!',
                                    ));
                          }
                        }
                      },
                      decoration: InputDecoration(
                        label: const Text('Gramas'),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3, color: AppColors.salmao),
                          borderRadius: BorderRadius.circular(15),
                        ),
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
                            if (itemSelecionado == null) {
                              showDialog(
                                  context: context,
                                  builder: (context) => const PopupWidget(
                                        texto:
                                            'Por favor, selecione um alimento!',
                                      ));
                            } else {
                              isVisible = true;
                              alimento =
                                  procuraAlimento(itemSelecionado.toString());
                              usuario.adicionaALimento(alimento);
                              usuario.adicionaGramas(gramas);
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
  return double.tryParse(s) != null;
}
