import 'package:flutter/material.dart';

Widget headerBuilder(
    {required String avatar,
    required String nome,
    required String email,
    required VoidCallback onClicked}) {
  return InkWell(
      onTap: onClicked,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20)
            .add(const EdgeInsets.symmetric(vertical: 40)),
        child: Row(
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage(avatar))),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nome,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  email,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                )
              ],
            )
          ],
        ),
      ));
}
