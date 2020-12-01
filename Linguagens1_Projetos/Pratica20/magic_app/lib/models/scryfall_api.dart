class scryfall_api {
  String object;
  int totalCards;
  bool hasMore;
  List<Data> data;

  scryfall_api({this.object, this.totalCards, this.hasMore, this.data});

  scryfall_api.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    totalCards = json['total_cards'];
    hasMore = json['has_more'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    data['total_cards'] = this.totalCards;
    data['has_more'] = this.hasMore;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String object;
  String id;
  String oracleId;
  List<int> multiverseIds;
  int mtgoId;
  int arenaId;
  int tcgplayerId;
  int cardmarketId;
  String name;
  String lang;
  String releasedAt;
  String uri;
  String scryfallUri;
  String layout;
  bool highresImage;
  ImageUris imageUris;
  String manaCost;
  int cmc;
  String typeLine;
  String oracleText;
  String loyalty;
  List<String> colors;
  List<String> colorIdentity;
  List<String> keywords;
  List<AllParts> allParts;
  Legalities legalities;
  List<String> games;
  bool reserved;
  bool foil;
  bool nonfoil;
  bool oversized;
  bool promo;
  bool reprint;
  bool variation;
  String set;
  String setName;
  String setType;
  String setUri;
  String setSearchUri;
  String scryfallSetUri;
  String rulingsUri;
  String printsSearchUri;
  String collectorNumber;
  bool digital;
  String rarity;
  String cardBackId;
  String artist;
  List<String> artistIds;
  String illustrationId;
  String borderColor;
  String frame;
  bool fullArt;
  bool textless;
  bool booster;
  bool storySpotlight;
  List<String> promoTypes;
  int edhrecRank;
  Preview preview;
  Prices prices;
  RelatedUris relatedUris;
  PurchaseUris purchaseUris;
  int mtgoFoilId;
  List<CardFaces> cardFaces;
  List<String> frameEffects;
  List<String> producedMana;
  String flavorText;
  String power;
  String toughness;

  Data(
      {this.object,
        this.id,
        this.oracleId,
        this.multiverseIds,
        this.mtgoId,
        this.arenaId,
        this.tcgplayerId,
        this.cardmarketId,
        this.name,
        this.lang,
        this.releasedAt,
        this.uri,
        this.scryfallUri,
        this.layout,
        this.highresImage,
        this.imageUris,
        this.manaCost,
        this.cmc,
        this.typeLine,
        this.oracleText,
        this.loyalty,
        this.colors,
        this.colorIdentity,
        this.keywords,
        this.allParts,
        this.legalities,
        this.games,
        this.reserved,
        this.foil,
        this.nonfoil,
        this.oversized,
        this.promo,
        this.reprint,
        this.variation,
        this.set,
        this.setName,
        this.setType,
        this.setUri,
        this.setSearchUri,
        this.scryfallSetUri,
        this.rulingsUri,
        this.printsSearchUri,
        this.collectorNumber,
        this.digital,
        this.rarity,
        this.cardBackId,
        this.artist,
        this.artistIds,
        this.illustrationId,
        this.borderColor,
        this.frame,
        this.fullArt,
        this.textless,
        this.booster,
        this.storySpotlight,
        this.promoTypes,
        this.edhrecRank,
        this.preview,
        this.prices,
        this.relatedUris,
        this.purchaseUris,
        this.mtgoFoilId,
        this.cardFaces,
        this.frameEffects,
        this.producedMana,
        this.flavorText,
        this.power,
        this.toughness});

  Data.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    oracleId = json['oracle_id'];
    multiverseIds = json['multiverse_ids'].cast<int>();
    mtgoId = json['mtgo_id'];
    arenaId = json['arena_id'];
    tcgplayerId = json['tcgplayer_id'];
    cardmarketId = json['cardmarket_id'];
    name = json['name'];
    lang = json['lang'];
    releasedAt = json['released_at'];
    uri = json['uri'];
    scryfallUri = json['scryfall_uri'];
    layout = json['layout'];
    highresImage = json['highres_image'];
    imageUris = json['image_uris'] != null
        ? new ImageUris.fromJson(json['image_uris'])
        : null;
    manaCost = json['mana_cost'];
    cmc = json['cmc'];
    typeLine = json['type_line'];
    oracleText = json['oracle_text'];
    loyalty = json['loyalty'];
    colors = json['colors'].cast<String>();
    colorIdentity = json['color_identity'].cast<String>();
    keywords = json['keywords'].cast<String>();
    if (json['all_parts'] != null) {
      allParts = new List<AllParts>();
      json['all_parts'].forEach((v) {
        allParts.add(new AllParts.fromJson(v));
      });
    }
    legalities = json['legalities'] != null
        ? new Legalities.fromJson(json['legalities'])
        : null;
    games = json['games'].cast<String>();
    reserved = json['reserved'];
    foil = json['foil'];
    nonfoil = json['nonfoil'];
    oversized = json['oversized'];
    promo = json['promo'];
    reprint = json['reprint'];
    variation = json['variation'];
    set = json['set'];
    setName = json['set_name'];
    setType = json['set_type'];
    setUri = json['set_uri'];
    setSearchUri = json['set_search_uri'];
    scryfallSetUri = json['scryfall_set_uri'];
    rulingsUri = json['rulings_uri'];
    printsSearchUri = json['prints_search_uri'];
    collectorNumber = json['collector_number'];
    digital = json['digital'];
    rarity = json['rarity'];
    cardBackId = json['card_back_id'];
    artist = json['artist'];
    artistIds = json['artist_ids'].cast<String>();
    illustrationId = json['illustration_id'];
    borderColor = json['border_color'];
    frame = json['frame'];
    fullArt = json['full_art'];
    textless = json['textless'];
    booster = json['booster'];
    storySpotlight = json['story_spotlight'];
    promoTypes = json['promo_types'].cast<String>();
    edhrecRank = json['edhrec_rank'];
    preview =
    json['preview'] != null ? new Preview.fromJson(json['preview']) : null;
    prices =
    json['prices'] != null ? new Prices.fromJson(json['prices']) : null;
    relatedUris = json['related_uris'] != null
        ? new RelatedUris.fromJson(json['related_uris'])
        : null;
    purchaseUris = json['purchase_uris'] != null
        ? new PurchaseUris.fromJson(json['purchase_uris'])
        : null;
    mtgoFoilId = json['mtgo_foil_id'];
    if (json['card_faces'] != null) {
      cardFaces = new List<CardFaces>();
      json['card_faces'].forEach((v) {
        cardFaces.add(new CardFaces.fromJson(v));
      });
    }
    frameEffects = json['frame_effects'].cast<String>();
    producedMana = json['produced_mana'].cast<String>();
    flavorText = json['flavor_text'];
    power = json['power'];
    toughness = json['toughness'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    data['id'] = this.id;
    data['oracle_id'] = this.oracleId;
    data['multiverse_ids'] = this.multiverseIds;
    data['mtgo_id'] = this.mtgoId;
    data['arena_id'] = this.arenaId;
    data['tcgplayer_id'] = this.tcgplayerId;
    data['cardmarket_id'] = this.cardmarketId;
    data['name'] = this.name;
    data['lang'] = this.lang;
    data['released_at'] = this.releasedAt;
    data['uri'] = this.uri;
    data['scryfall_uri'] = this.scryfallUri;
    data['layout'] = this.layout;
    data['highres_image'] = this.highresImage;
    if (this.imageUris != null) {
      data['image_uris'] = this.imageUris.toJson();
    }
    data['mana_cost'] = this.manaCost;
    data['cmc'] = this.cmc;
    data['type_line'] = this.typeLine;
    data['oracle_text'] = this.oracleText;
    data['loyalty'] = this.loyalty;
    data['colors'] = this.colors;
    data['color_identity'] = this.colorIdentity;
    data['keywords'] = this.keywords;
    if (this.allParts != null) {
      data['all_parts'] = this.allParts.map((v) => v.toJson()).toList();
    }
    if (this.legalities != null) {
      data['legalities'] = this.legalities.toJson();
    }
    data['games'] = this.games;
    data['reserved'] = this.reserved;
    data['foil'] = this.foil;
    data['nonfoil'] = this.nonfoil;
    data['oversized'] = this.oversized;
    data['promo'] = this.promo;
    data['reprint'] = this.reprint;
    data['variation'] = this.variation;
    data['set'] = this.set;
    data['set_name'] = this.setName;
    data['set_type'] = this.setType;
    data['set_uri'] = this.setUri;
    data['set_search_uri'] = this.setSearchUri;
    data['scryfall_set_uri'] = this.scryfallSetUri;
    data['rulings_uri'] = this.rulingsUri;
    data['prints_search_uri'] = this.printsSearchUri;
    data['collector_number'] = this.collectorNumber;
    data['digital'] = this.digital;
    data['rarity'] = this.rarity;
    data['card_back_id'] = this.cardBackId;
    data['artist'] = this.artist;
    data['artist_ids'] = this.artistIds;
    data['illustration_id'] = this.illustrationId;
    data['border_color'] = this.borderColor;
    data['frame'] = this.frame;
    data['full_art'] = this.fullArt;
    data['textless'] = this.textless;
    data['booster'] = this.booster;
    data['story_spotlight'] = this.storySpotlight;
    data['promo_types'] = this.promoTypes;
    data['edhrec_rank'] = this.edhrecRank;
    if (this.preview != null) {
      data['preview'] = this.preview.toJson();
    }
    if (this.prices != null) {
      data['prices'] = this.prices.toJson();
    }
    if (this.relatedUris != null) {
      data['related_uris'] = this.relatedUris.toJson();
    }
    if (this.purchaseUris != null) {
      data['purchase_uris'] = this.purchaseUris.toJson();
    }
    data['mtgo_foil_id'] = this.mtgoFoilId;
    if (this.cardFaces != null) {
      data['card_faces'] = this.cardFaces.map((v) => v.toJson()).toList();
    }
    data['frame_effects'] = this.frameEffects;
    data['produced_mana'] = this.producedMana;
    data['flavor_text'] = this.flavorText;
    data['power'] = this.power;
    data['toughness'] = this.toughness;
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['small'] = this.small;
    data['normal'] = this.normal;
    data['large'] = this.large;
    data['png'] = this.png;
    data['art_crop'] = this.artCrop;
    data['border_crop'] = this.borderCrop;
    return data;
  }
}

class AllParts {
  String object;
  String id;
  String component;
  String name;
  String typeLine;
  String uri;

  AllParts(
      {this.object,
        this.id,
        this.component,
        this.name,
        this.typeLine,
        this.uri});

  AllParts.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    component = json['component'];
    name = json['name'];
    typeLine = json['type_line'];
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    data['id'] = this.id;
    data['component'] = this.component;
    data['name'] = this.name;
    data['type_line'] = this.typeLine;
    data['uri'] = this.uri;
    return data;
  }
}

class Legalities {
  String standard;
  String future;
  String historic;
  String pioneer;
  String modern;
  String legacy;
  String pauper;
  String vintage;
  String penny;
  String commander;
  String brawl;
  String duel;
  String oldschool;

  Legalities(
      {this.standard,
        this.future,
        this.historic,
        this.pioneer,
        this.modern,
        this.legacy,
        this.pauper,
        this.vintage,
        this.penny,
        this.commander,
        this.brawl,
        this.duel,
        this.oldschool});

  Legalities.fromJson(Map<String, dynamic> json) {
    standard = json['standard'];
    future = json['future'];
    historic = json['historic'];
    pioneer = json['pioneer'];
    modern = json['modern'];
    legacy = json['legacy'];
    pauper = json['pauper'];
    vintage = json['vintage'];
    penny = json['penny'];
    commander = json['commander'];
    brawl = json['brawl'];
    duel = json['duel'];
    oldschool = json['oldschool'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['standard'] = this.standard;
    data['future'] = this.future;
    data['historic'] = this.historic;
    data['pioneer'] = this.pioneer;
    data['modern'] = this.modern;
    data['legacy'] = this.legacy;
    data['pauper'] = this.pauper;
    data['vintage'] = this.vintage;
    data['penny'] = this.penny;
    data['commander'] = this.commander;
    data['brawl'] = this.brawl;
    data['duel'] = this.duel;
    data['oldschool'] = this.oldschool;
    return data;
  }
}

class Preview {
  String source;
  String sourceUri;
  String previewedAt;

  Preview({this.source, this.sourceUri, this.previewedAt});

  Preview.fromJson(Map<String, dynamic> json) {
    source = json['source'];
    sourceUri = json['source_uri'];
    previewedAt = json['previewed_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['source'] = this.source;
    data['source_uri'] = this.sourceUri;
    data['previewed_at'] = this.previewedAt;
    return data;
  }
}

class Prices {
  String usd;
  String usdFoil;
  String eur;
  String eurFoil;
  String tix;

  Prices({this.usd, this.usdFoil, this.eur, this.eurFoil, this.tix});

  Prices.fromJson(Map<String, dynamic> json) {
    usd = json['usd'];
    usdFoil = json['usd_foil'];
    eur = json['eur'];
    eurFoil = json['eur_foil'];
    tix = json['tix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['usd'] = this.usd;
    data['usd_foil'] = this.usdFoil;
    data['eur'] = this.eur;
    data['eur_foil'] = this.eurFoil;
    data['tix'] = this.tix;
    return data;
  }
}

class RelatedUris {
  String gatherer;
  String tcgplayerDecks;
  String edhrec;
  String mtgtop8;

  RelatedUris({this.gatherer, this.tcgplayerDecks, this.edhrec, this.mtgtop8});

  RelatedUris.fromJson(Map<String, dynamic> json) {
    gatherer = json['gatherer'];
    tcgplayerDecks = json['tcgplayer_decks'];
    edhrec = json['edhrec'];
    mtgtop8 = json['mtgtop8'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gatherer'] = this.gatherer;
    data['tcgplayer_decks'] = this.tcgplayerDecks;
    data['edhrec'] = this.edhrec;
    data['mtgtop8'] = this.mtgtop8;
    return data;
  }
}

class PurchaseUris {
  String tcgplayer;
  String cardmarket;
  String cardhoarder;

  PurchaseUris({this.tcgplayer, this.cardmarket, this.cardhoarder});

  PurchaseUris.fromJson(Map<String, dynamic> json) {
    tcgplayer = json['tcgplayer'];
    cardmarket = json['cardmarket'];
    cardhoarder = json['cardhoarder'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tcgplayer'] = this.tcgplayer;
    data['cardmarket'] = this.cardmarket;
    data['cardhoarder'] = this.cardhoarder;
    return data;
  }
}

class CardFaces {
  String object;
  String name;
  String manaCost;
  String typeLine;
  String oracleText;
  List<String> colors;
  String power;
  String toughness;
  String artist;
  String artistId;
  String illustrationId;
  ImageUris imageUris;
  List<String> colorIndicator;
  String loyalty;

  CardFaces(
      {this.object,
        this.name,
        this.manaCost,
        this.typeLine,
        this.oracleText,
        this.colors,
        this.power,
        this.toughness,
        this.artist,
        this.artistId,
        this.illustrationId,
        this.imageUris,
        this.colorIndicator,
        this.loyalty});

  CardFaces.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    name = json['name'];
    manaCost = json['mana_cost'];
    typeLine = json['type_line'];
    oracleText = json['oracle_text'];
    colors = json['colors'].cast<String>();
    power = json['power'];
    toughness = json['toughness'];
    artist = json['artist'];
    artistId = json['artist_id'];
    illustrationId = json['illustration_id'];
    imageUris = json['image_uris'] != null
        ? new ImageUris.fromJson(json['image_uris'])
        : null;
    colorIndicator = json['color_indicator'].cast<String>();
    loyalty = json['loyalty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    data['name'] = this.name;
    data['mana_cost'] = this.manaCost;
    data['type_line'] = this.typeLine;
    data['oracle_text'] = this.oracleText;
    data['colors'] = this.colors;
    data['power'] = this.power;
    data['toughness'] = this.toughness;
    data['artist'] = this.artist;
    data['artist_id'] = this.artistId;
    data['illustration_id'] = this.illustrationId;
    if (this.imageUris != null) {
      data['image_uris'] = this.imageUris.toJson();
    }
    data['color_indicator'] = this.colorIndicator;
    data['loyalty'] = this.loyalty;
    return data;
  }
}
