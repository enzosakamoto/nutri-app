import 'package:flutter/material.dart';
import 'package:nutri_app/shared/themes/text_styles.dart';

class CategoriasTabelaWidget extends StatelessWidget {
  const CategoriasTabelaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> categorias = [
      'Valor Energético',
      'Carboidratos',
      'Proteínas',
      'Gorduras Totais',
      'Gorduras Saturadas',
      'Gorduras Trans',
      'Fibras',
      'Sódio',
    ];
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  categorias[index],
                  style: AppTextStyles.normal,
                  overflow: TextOverflow.ellipsis,
                )),
            itemCount: categorias.length,
          ),
        ],
      ),
    );
  }
}
