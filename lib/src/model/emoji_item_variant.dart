class EmojiItemVariant {
  final String unified;
  final String image;
  final int sheetX;
  final int sheetY;
  final bool hasImgApple;
  final bool hasImgGoogle;
  final bool hasImgTwitter;
  final bool hasImgFacebook;

  EmojiItemVariant({
    required this.unified,
    required this.image,
    required this.sheetX,
    required this.sheetY,
    required this.hasImgApple,
    required this.hasImgGoogle,
    required this.hasImgFacebook,
    required this.hasImgTwitter,
  });

  EmojiItemVariant.fromJson(Map<String, dynamic> json)
      : unified = json['unified'],
        image = json['image'],
        sheetX = json['sheet_x'],
        sheetY = json['sheet_y'],
        hasImgApple = json['has_img_apple'],
        hasImgGoogle = json['has_img_google'],
        hasImgTwitter = json['has_img_twitter'],
        hasImgFacebook = json['has_img_facebook'];
}
