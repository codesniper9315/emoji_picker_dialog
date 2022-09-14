import 'emoji_item_variant.dart';

class EmojiItem {
  final String name;
  final String unified;
  final String nonQualified;
  final String? docomo;
  final String? au;
  final String? softbank;
  final String? google;
  final String image;
  final int sheetX;
  final int sheetY;
  final String shortName;
  final List<String> shortNames;
  final String? text;
  final List<String>? texts;
  final String category;
  final String subcategory;
  final int sortOrder;
  final bool hasImgGoogle;
  final bool hasImgApple;
  final bool hasImgTwitter;
  final bool hasImgFacebook;
  final String? obsoletes;
  final String? obsoletedBy;
  final List<EmojiItemVariant>? skinVariants;

  EmojiItem({
    required this.name,
    required this.unified,
    required this.nonQualified,
    this.docomo,
    this.au,
    this.softbank,
    this.google,
    required this.image,
    required this.sheetX,
    required this.sheetY,
    required this.shortName,
    required this.shortNames,
    this.text,
    this.texts,
    required this.category,
    required this.subcategory,
    required this.sortOrder,
    required this.hasImgApple,
    required this.hasImgGoogle,
    required this.hasImgTwitter,
    required this.hasImgFacebook,
    this.obsoletes,
    this.obsoletedBy,
    this.skinVariants,
  });

  EmojiItem.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        unified = json['unified'],
        nonQualified = json['non_qualified'],
        docomo = json['docomo'],
        au = json['au'],
        softbank = json['softbank'],
        google = json['google'],
        image = json['image'],
        sheetX = json['sheet_x'],
        sheetY = json['sheet_y'],
        shortName = json['short_name'],
        shortNames = json['short_names'],
        text = json['text'],
        texts = json['texts'],
        category = json['category'],
        subcategory = json['subcategory'],
        sortOrder = json['sort_order'],
        hasImgApple = json['has_img_apple'],
        hasImgGoogle = json['has_img_google'],
        hasImgTwitter = json['has_img_twitter'],
        hasImgFacebook = json['has_img_facebook'],
        obsoletes = json['obsoletes'],
        obsoletedBy = json['obsoleted_by'],
        skinVariants = _getSkinVariants(json['skin_variants']);

  static List<EmojiItemVariant> _getSkinVariants(
    Map<String, dynamic> variantsJson,
  ) {
    List<EmojiItemVariant> variants = [];
    for (var element in variantsJson.values) {
      variants.add(EmojiItemVariant.fromJson(element));
    }
    return variants;
  }

  static List<EmojiItem> getList(List<dynamic> array) {
    List<EmojiItem> list = [];
    for (var element in array) {
      var item = EmojiItem.fromJson(element);
      list.add(item);
    }

    return list;
  }
}
