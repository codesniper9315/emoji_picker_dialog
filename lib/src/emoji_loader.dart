import 'dart:convert';

import 'package:emoji_picker_dialog/src/model/emoji_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../emoji_picker_dialog.dart';

class EmojiLoader extends ChangeNotifier {
  final String emojiJsonFile = 'lib/public/emoji.json';
  final String categoryJsonFile = 'lib/public/category.json';
  late List<EmojiCategory> categories;
  late List<EmojiItem> emojiItems;

  void init() async {
    categories = [];
    emojiItems = [];

    var categoryJsonText = await rootBundle.loadString(categoryJsonFile);
    Map<String, dynamic> categoryData = jsonDecode(categoryJsonText);
    categories = EmojiCategory.getCategoryList(categoryData);

    var emojiJsonText = await rootBundle.loadString(emojiJsonFile);
    List<dynamic> emojiData = jsonDecode(emojiJsonText);
    emojiItems = EmojiItem.getList(emojiData);
  }
}
