import 'package:flutter/material.dart';
import 'package:nutri_app/database/alimento/alimento.dart';
import 'package:nutri_app/shared/themes/text_styles.dart';

class ValoresTabelaWidget extends StatelessWidget {
  const ValoresTabelaWidget({Key? key, required this.alimento})
      : super(key: key);
  final Alimento alimento;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${alimento.kcal} kcal',
          style: AppTextStyles.normal,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          '${alimento.carboidratos} g',
          style: AppTextStyles.normal,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          '${alimento.proteinas} g',
          style: AppTextStyles.normal,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          '${alimento.gtotais} g',
          style: AppTextStyles.normal,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          '${alimento.gsaturadas} g',
          style: AppTextStyles.normal,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          '${alimento.gtrans} g',
          style: AppTextStyles.normal,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          '${alimento.fibra} g',
          style: AppTextStyles.normal,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          '${alimento.sodio} mg',
          style: AppTextStyles.normal,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
