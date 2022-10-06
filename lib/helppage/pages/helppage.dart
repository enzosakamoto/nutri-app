import 'package:flutter/material.dart';
import 'package:nutri_app/shared/widgets/container_texto_widget.dart';
import 'package:nutri_app/shared/widgets/appbar_widget.dart';
import 'package:nutri_app/shared/widgets/drawer_widget.dart';
import 'package:nutri_app/shared/widgets/icon_back_widget.dart';

class Helppage extends StatelessWidget {
  const Helppage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            titulo: 'SOBRE O APP',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const ContainerTextoWidget(
                  titulo: 'História',
                  conteudo:
                      'A ideia desse aplicativo surgiu como forma de facilitar as medições de macros da minha dieta. Eu sabia que existiam outros aplicativos que faziam o mesmo, mas sempre achei eles nada intuitivos. Portanto, tentei desenvolver algo mais complexo utilizando Flutter, como forma de estudar e aplicar na prática esse Framework. Meu próximo passo é disponibilizar esse aplicativo para dispositivos móveis.',
                  centralizado: false,
                ),
                const SizedBox(
                  height: 40,
                ),
                const ContainerTextoWidget(
                  titulo: 'Agradecimentos especiais',
                  conteudo:
                      'A Victoria, ao Alves (Pab) e o Heitor, por me ajudarem com o desenvolvimento desse aplicativo.',
                  centralizado: false,
                ),
                const SizedBox(
                  height: 40,
                ),
                const ContainerTextoWidget(
                  titulo: 'Contato',
                  conteudo:
                      'github.com/enzosakamoto\nlinkedin.com/in/enzosakamoto/',
                  centralizado: false,
                ),
                const SizedBox(
                  height: 80,
                ),
                Center(child: Image.asset('assets/images/lontra.gif')),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
