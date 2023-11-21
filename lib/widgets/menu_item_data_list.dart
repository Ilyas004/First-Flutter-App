import 'package:flutter/material.dart';

import '../model/menu_item.dart';
import '../util/constant.dart';

const List<MenuItem> firstListItem = [
  MenuItem(Icons.favorite, favorite),
  MenuItem(Icons.call, call),
  MenuItem(Icons.computer, device),
  MenuItem(Icons.folder, folderChat),
];

const List<MenuItem> secondListItem = [
  MenuItem(Icons.notifications, notifications),
  MenuItem(Icons.lock, confidentiality),
  MenuItem(Icons.data_usage, dataAndMemory),
  MenuItem(Icons.brush, decor),
  MenuItem(Icons.language, language),
  MenuItem(Icons.sticky_note_2, stickers),
];

const List<MenuItem> thirdListItem = [MenuItem(Icons.lock_clock, appleWatch)];

const List<MenuItem> fourthListItem = [
  MenuItem(Icons.help, help),
  MenuItem(Icons.question_answer, questionAnswer),
];