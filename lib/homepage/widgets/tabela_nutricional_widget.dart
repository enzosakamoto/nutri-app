import 'package:flutter/material.dart';
import 'package:nutri_app/database/alimento/alimento.dart';
import 'package:nutri_app/homepage/widgets/categorias_widget.dart';
import 'package:nutri_app/homepage/widgets/valores_tabela_widget.dart';
import 'package:nutri_app/shared/themes/text_styles.dart';

class TabelaNutricionalWidget extends StatelessWidget {
  const TabelaNutricionalWidget({Key? key, required this.alimento})
      : super(key: key);
  final Alimento alimento;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: Row(
          children: [
            ConstrainedBox(
                constraints:
                    const BoxConstraints(maxWidth: 150, maxHeight: 150),
                child: Image.asset(alimento.caminhoImagem)),
            const SizedBox(
              width: 30,
            ),
            Expanded(
                child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        'Tabela Nutricional do ${alimento.nome} (porção de 100g)',
                        style: AppTextStyles.titulosBold,
                        overflow: TextOverflow.ellipsis,
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
                    ValoresTabelaWidget(alimento: alimento),
                  ],
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
