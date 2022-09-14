class EmojiCategory {
  final String name;
  final List<EmojiSubcategory>? subcategories;

  EmojiCategory({
    required this.name,
    this.subcategories,
  });

  EmojiCategory.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        subcategories = json['subcategories'];

  static List<EmojiCategory> getCategoryList(Map<String, dynamic> data) {
    List<EmojiCategory> list = [];
    for (var key in data.keys) {
      var subcategories = EmojiSubcategory.getSubcategoryList(data[key]);
      var json = {'name': key, 'subcategories': subcategories};
      var category = EmojiCategory.fromJson(json);
      list.add(category);
    }

    return list;
  }
}

class EmojiSubcategory {
  final String name;
  final List<String> items;

  EmojiSubcategory({
    required this.name,
    required this.items,
  });

  EmojiSubcategory.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        items = json['items'];

  static List<EmojiSubcategory> getSubcategoryList(Map<String, dynamic> data) {
    List<EmojiSubcategory> list = [];
    for (var key in data.keys) {
      var json = {'name': key, 'items': data[key]};
      var subcategory = EmojiSubcategory.fromJson(json);
      list.add(subcategory);
    }

    return list;
  }
}
