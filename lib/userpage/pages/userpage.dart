import 'package:flutter/material.dart';
import 'package:nutri_app/shared/themes/appcolors.dart';

class Userpage extends StatelessWidget {
  const Userpage({Key? key, required this.avatar, required this.nome})
      : super(key: key);
  final String avatar;
  final String nome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nome),
        centerTitle: true,
        backgroundColor: AppColors.salmao,
      ),
      body: Image.asset(
        avatar,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
