class Scryfall_api {
  int totalCards;

  List<Data> data;

  Scryfall_api({this.totalCards, this.data});

  Scryfall_api.fromJson(Map<String, dynamic> json) {
    totalCards = json['total_cards'];

    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }
}

class Data {
  ImageUris imageUris;

  Data({this.imageUris});

  Data.fromJson(Map<String, dynamic> json) {
    imageUris = json['image_uris'] != null
        ? new ImageUris.fromJson(json['image_uris'])
        : new ImageUris.fromJson(
        (List<dynamic>.from(json['card_faces'])[0]['image_uris']));
  }
}

class ImageUris {
  String small;
  String normal;
  String large;
  String png;
  String artCrop;
  String borderCrop;

  ImageUris(
      {this.small,
        this.normal,
        this.large,
        this.png,
        this.artCrop,
        this.borderCrop});

  ImageUris.fromJson(Map<String, dynamic> json) {
    small = json['small'];
    normal = json['normal'];
    large = json['large'];
    png = json['png'];
    artCrop = json['art_crop'];
    borderCrop = json['border_crop'];
  }
}