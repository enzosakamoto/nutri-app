import 'package:flutter/material.dart';

class PopupWidget extends StatelessWidget {
  const PopupWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Aviso'),
      content: const Text('Por favor, digite um valor válido!'),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'))
      ],
    );
  }
}
