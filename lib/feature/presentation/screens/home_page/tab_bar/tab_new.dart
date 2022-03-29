import 'package:flutter/material.dart';

class TabNew extends StatelessWidget {
  const TabNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      child: GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        crossAxisCount: 2,
        children: [
          InkWell(
            onTap: () {},
            child: Image.asset(
              'assets/images/icon.png',
              width: 92,
              height: 97,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              'assets/images/icon.png',
              width: 92,
              height: 97,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              'assets/images/icon.png',
              width: 92,
              height: 97,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              'assets/images/icon.png',
              width: 92,
              height: 97,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              'assets/images/icon.png',
              width: 92,
              height: 97,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              'assets/images/icon.png',
              width: 92,
              height: 97,
            ),
          ),
        ],
      ),
    );
  }
}
