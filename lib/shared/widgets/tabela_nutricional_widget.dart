import 'package:flutter/material.dart';
import 'package:nutri_app/database/modules/alimento/alimento.dart';
import 'package:nutri_app/database/repository_mock/repository_mock.dart';
import 'package:nutri_app/shared/widgets/categorias_widget.dart';
import 'package:nutri_app/shared/widgets/valores_tabela_widget.dart';
import 'package:nutri_app/shared/themes/text_styles.dart';

class TabelaNutricionalWidget extends StatelessWidget {
  const TabelaNutricionalWidget(
      {Key? key, required this.alimento, required this.gramas})
      : super(key: key);
  final Alimento alimento;
  final double gramas;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //height: 444,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 5,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                ConstrainedBox(
                    constraints:
                        const BoxConstraints(maxWidth: 150, maxHeight: 150),
                    child: Image.asset(alimento.caminhoImagem)),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        'Tabela Nutricional do ${alimento.nome} (porção de ${gramas}g)',
                        style: AppTextStyles.titulosBold,
                        overflow: TextOverflow.fade,
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CategoriasTabelaWidget(),
                    ValoresTabelaWidget(alimento: regrade3(alimento, gramas)),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
