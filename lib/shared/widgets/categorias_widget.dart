import 'package:flutter/material.dart';
import 'package:nutri_app/shared/themes/text_styles.dart';

class CategoriasTabelaWidget extends StatelessWidget {
  const CategoriasTabelaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Valor Energético',
          style: AppTextStyles.normal,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Carboidratos',
          style: AppTextStyles.normal,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Proteínas',
          style: AppTextStyles.normal,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Gorduras Totais',
          style: AppTextStyles.normal,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Gorduras Saturadas',
          style: AppTextStyles.normal,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Gorduras Trans',
          style: AppTextStyles.normal,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Fibras',
          style: AppTextStyles.normal,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Sódio',
          style: AppTextStyles.normal,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
