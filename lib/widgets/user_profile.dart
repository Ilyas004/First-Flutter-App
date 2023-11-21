import 'package:flutter/material.dart';
import 'package:lesson_project/util/constant.dart';
import 'package:lesson_project/widgets/menu_item_data_list.dart';

import '../model/menu_item.dart';

class UserProfile extends StatelessWidget {
  UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text(
            setting,
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          width: double.infinity,
          child: ListView(
            physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
            children: [
              _UserInfo(),
              const SizedBox(
                height: 30,
              ),
              _MenuWidget(firstListItem),
              const SizedBox(
                height: 30,
              ),
              _MenuWidget(secondListItem),
              const SizedBox(
                height: 30,
              ),
              _MenuWidget(thirdListItem),
              const SizedBox(
                height: 30,
              ),
              _MenuWidget(fourthListItem),
            ],
          ),
        ));
  }
}



Widget _MenuWidget(List<MenuItem> listItem) {
  return Container(
    color: Colors.white,
    width: double.infinity,
    child: Column(
      children: listItem.map((item) => _MenuWidgetItem(item)).toList(),
    ),
  );
}

Widget _MenuWidgetItem(MenuItem itemData) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    child: Row(
      children: [
        Icon(itemData.icon),
        const SizedBox(width: 15),
        Expanded(child: Text(itemData.text)),
        const Icon(Icons.chevron_right)
      ],
    ),
  );
}

Widget _UserInfo() {
  return Stack(
    children: [
      Container(
        padding: EdgeInsets.only(bottom: 10),
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            const SizedBox(height: 30),
            _UserAvatar(),
            const SizedBox(height: 30),
            _UserName(),
            const SizedBox(height: 10),
            _UserPhone(),
            const SizedBox(height: 10),
            _UserNickName(),
          ],
        ),
      ),
      const Positioned(
        top: 20, right: 25,
        child: Text(
          "Изм.",
          style: TextStyle(color: Colors.blueAccent, fontSize: 18), ),
      )
    ],
  );
}

Widget _UserAvatar() {
  return Container(width: 100, height: 100, child: const Placeholder());
}

Widget _UserName() {
  return const Text(
    'Rashidov Ilyas',
    style: TextStyle(
        fontSize: 25, color: Colors.black, fontWeight: FontWeight.w600),
  );
}

Widget _UserPhone() {
  return const Text(
    '+7(988)792 74 30',
    style: TextStyle(color: Colors.grey, fontSize: 15),
  );
}

Widget _UserNickName() {
  return const Text(
    '@Ilyas024',
    style: TextStyle(color: Colors.grey, fontSize: 16),
  );
}
