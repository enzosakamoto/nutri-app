import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutri_app/shared/themes/text_styles.dart';

class ContainerTextoWidget extends StatelessWidget {
  const ContainerTextoWidget(
      {Key? key, required this.titulo, required this.conteudo})
      : super(key: key);
  final String titulo;
  final String conteudo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 210, 195, 195)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Text(
              titulo,
              style: AppTextStyles.texto18bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            conteudo,
            style: AppTextStyles.normal15,
            textAlign: TextAlign.justify,
          )
        ]),
      ),
    );
  }
}
