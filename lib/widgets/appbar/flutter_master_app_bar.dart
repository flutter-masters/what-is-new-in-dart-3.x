import 'package:flutter/material.dart';

class FlutterMastersAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const FlutterMastersAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      centerTitle: true,
      title: const Text(
        'Flutter masters',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}
