import 'package:flutter/material.dart';
import 'package:nutri_app/database/modules/alimento/alimento.dart';
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
          '${alimento.kcal.toStringAsFixed(2)} kcal',
          style: AppTextStyles.normal,
          overflow: TextOverflow.fade,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '${alimento.carboidratos.toStringAsFixed(2)} g',
          style: AppTextStyles.normal,
          overflow: TextOverflow.fade,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '${alimento.proteinas.toStringAsFixed(2)} g',
          style: AppTextStyles.normal,
          overflow: TextOverflow.fade,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '${alimento.gtotais.toStringAsFixed(2)} g',
          style: AppTextStyles.normal,
          overflow: TextOverflow.fade,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '${alimento.gsaturadas.toStringAsFixed(2)} g',
          style: AppTextStyles.normal,
          overflow: TextOverflow.fade,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '${alimento.gtrans.toStringAsFixed(2)} g',
          style: AppTextStyles.normal,
          overflow: TextOverflow.fade,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '${alimento.fibra.toStringAsFixed(2)} g',
          style: AppTextStyles.normal,
          overflow: TextOverflow.fade,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '${alimento.sodio.toStringAsFixed(2)} mg',
          style: AppTextStyles.normal,
          overflow: TextOverflow.fade,
        ),
      ],
    );
  }
}
