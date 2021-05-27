import 'package:flutter/material.dart';

class ActionsMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.phone_outlined,
                color: Theme.of(context).primaryColor,
                size: 18,
              ),
            ),
                Text(
                "Ligar",
                style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 10,
              ),
            ),
          ],
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: Theme.of(context).primaryColor,
                size: 18,
              ),
            ),
            Text(
              "Mensagem SMS",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 10,
              ),
            ),
          ],
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.videocam_outlined,
                color: Theme.of(context).primaryColor,
                size: 18,
              ),
            ),
            Text(
              "Vídeo",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 10,
              ),
            ),
          ],
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.email_outlined,
                color: Theme.of(context).primaryColor,
                size: 18,
              ),
            ),
            Text(
              "Enviar email",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ],
    );
  }
}