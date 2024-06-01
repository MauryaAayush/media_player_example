import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text("Quote",
          style: TextStyle(
              color: Colors.white, fontSize: 23, fontWeight: FontWeight.w600)),
      leading: Icon(
        Icons.menu,
        color: Colors.white,
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            )),
      ],
    );
  }
}
