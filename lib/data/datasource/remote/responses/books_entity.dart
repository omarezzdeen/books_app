import 'package:books_app/generated/json/base/json_field.dart';
import 'package:books_app/generated/json/books_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class BooksEntity {
	String? kind;
	int? totalItems;
	List<BooksItems>? items;

	BooksEntity();

	factory BooksEntity.fromJson(Map<String, dynamic> json) => $BooksEntityFromJson(json);

	Map<String, dynamic> toJson() => $BooksEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BooksItems {
	String? kind;
	String? id;
	String? etag;
	String? selfLink;
	BooksItemsVolumeInfo? volumeInfo;
	BooksItemsSaleInfo? saleInfo;
	BooksItemsAccessInfo? accessInfo;
	BooksItemsSearchInfo? searchInfo;

	BooksItems();

	factory BooksItems.fromJson(Map<String, dynamic> json) => $BooksItemsFromJson(json);

	Map<String, dynamic> toJson() => $BooksItemsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BooksItemsVolumeInfo {
	String? title;
	List<String>? authors;
	String? publisher;
	String? publishedDate;
	String? description;
	List<BooksItemsVolumeInfoIndustryIdentifiers>? industryIdentifiers;
	BooksItemsVolumeInfoReadingModes? readingModes;
	int? pageCount;
	String? printType;
	List<String>? categories;
	String? maturityRating;
	bool? allowAnonLogging;
	String? contentVersion;
	BooksItemsVolumeInfoPanelizationSummary? panelizationSummary;
	BooksItemsVolumeInfoImageLinks? imageLinks;
	String? language;
	String? previewLink;
	String? infoLink;
	String? canonicalVolumeLink;

	BooksItemsVolumeInfo();

	factory BooksItemsVolumeInfo.fromJson(Map<String, dynamic> json) => $BooksItemsVolumeInfoFromJson(json);

	Map<String, dynamic> toJson() => $BooksItemsVolumeInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BooksItemsVolumeInfoIndustryIdentifiers {
	String? type;
	String? identifier;

	BooksItemsVolumeInfoIndustryIdentifiers();

	factory BooksItemsVolumeInfoIndustryIdentifiers.fromJson(Map<String, dynamic> json) => $BooksItemsVolumeInfoIndustryIdentifiersFromJson(json);

	Map<String, dynamic> toJson() => $BooksItemsVolumeInfoIndustryIdentifiersToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BooksItemsVolumeInfoReadingModes {
	bool? text;
	bool? image;

	BooksItemsVolumeInfoReadingModes();

	factory BooksItemsVolumeInfoReadingModes.fromJson(Map<String, dynamic> json) => $BooksItemsVolumeInfoReadingModesFromJson(json);

	Map<String, dynamic> toJson() => $BooksItemsVolumeInfoReadingModesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BooksItemsVolumeInfoPanelizationSummary {
	bool? containsEpubBubbles;
	bool? containsImageBubbles;

	BooksItemsVolumeInfoPanelizationSummary();

	factory BooksItemsVolumeInfoPanelizationSummary.fromJson(Map<String, dynamic> json) => $BooksItemsVolumeInfoPanelizationSummaryFromJson(json);

	Map<String, dynamic> toJson() => $BooksItemsVolumeInfoPanelizationSummaryToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BooksItemsVolumeInfoImageLinks {
	String? smallThumbnail;
	String? thumbnail;

	BooksItemsVolumeInfoImageLinks();

	factory BooksItemsVolumeInfoImageLinks.fromJson(Map<String, dynamic> json) => $BooksItemsVolumeInfoImageLinksFromJson(json);

	Map<String, dynamic> toJson() => $BooksItemsVolumeInfoImageLinksToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BooksItemsSaleInfo {
	String? country;
	String? saleability;
	bool? isEbook;
	BooksItemsSaleInfoListPrice? listPrice;
	BooksItemsSaleInfoRetailPrice? retailPrice;
	String? buyLink;
	List<BooksItemsSaleInfoOffers>? offers;

	BooksItemsSaleInfo();

	factory BooksItemsSaleInfo.fromJson(Map<String, dynamic> json) => $BooksItemsSaleInfoFromJson(json);

	Map<String, dynamic> toJson() => $BooksItemsSaleInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BooksItemsSaleInfoListPrice {
	double? amount;
	String? currencyCode;

	BooksItemsSaleInfoListPrice();

	factory BooksItemsSaleInfoListPrice.fromJson(Map<String, dynamic> json) => $BooksItemsSaleInfoListPriceFromJson(json);

	Map<String, dynamic> toJson() => $BooksItemsSaleInfoListPriceToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BooksItemsSaleInfoRetailPrice {
	double? amount;
	String? currencyCode;

	BooksItemsSaleInfoRetailPrice();

	factory BooksItemsSaleInfoRetailPrice.fromJson(Map<String, dynamic> json) => $BooksItemsSaleInfoRetailPriceFromJson(json);

	Map<String, dynamic> toJson() => $BooksItemsSaleInfoRetailPriceToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BooksItemsSaleInfoOffers {
	int? finskyOfferType;
	BooksItemsSaleInfoOffersListPrice? listPrice;
	BooksItemsSaleInfoOffersRetailPrice? retailPrice;
	bool? giftable;

	BooksItemsSaleInfoOffers();

	factory BooksItemsSaleInfoOffers.fromJson(Map<String, dynamic> json) => $BooksItemsSaleInfoOffersFromJson(json);

	Map<String, dynamic> toJson() => $BooksItemsSaleInfoOffersToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BooksItemsSaleInfoOffersListPrice {
	int? amountInMicros;
	String? currencyCode;

	BooksItemsSaleInfoOffersListPrice();

	factory BooksItemsSaleInfoOffersListPrice.fromJson(Map<String, dynamic> json) => $BooksItemsSaleInfoOffersListPriceFromJson(json);

	Map<String, dynamic> toJson() => $BooksItemsSaleInfoOffersListPriceToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BooksItemsSaleInfoOffersRetailPrice {
	int? amountInMicros;
	String? currencyCode;

	BooksItemsSaleInfoOffersRetailPrice();

	factory BooksItemsSaleInfoOffersRetailPrice.fromJson(Map<String, dynamic> json) => $BooksItemsSaleInfoOffersRetailPriceFromJson(json);

	Map<String, dynamic> toJson() => $BooksItemsSaleInfoOffersRetailPriceToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BooksItemsAccessInfo {
	String? country;
	String? viewability;
	bool? embeddable;
	bool? publicDomain;
	String? textToSpeechPermission;
	BooksItemsAccessInfoEpub? epub;
	BooksItemsAccessInfoPdf? pdf;
	String? webReaderLink;
	String? accessViewStatus;
	bool? quoteSharingAllowed;

	BooksItemsAccessInfo();

	factory BooksItemsAccessInfo.fromJson(Map<String, dynamic> json) => $BooksItemsAccessInfoFromJson(json);

	Map<String, dynamic> toJson() => $BooksItemsAccessInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BooksItemsAccessInfoEpub {
	bool? isAvailable;

	BooksItemsAccessInfoEpub();

	factory BooksItemsAccessInfoEpub.fromJson(Map<String, dynamic> json) => $BooksItemsAccessInfoEpubFromJson(json);

	Map<String, dynamic> toJson() => $BooksItemsAccessInfoEpubToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BooksItemsAccessInfoPdf {
	bool? isAvailable;

	BooksItemsAccessInfoPdf();

	factory BooksItemsAccessInfoPdf.fromJson(Map<String, dynamic> json) => $BooksItemsAccessInfoPdfFromJson(json);

	Map<String, dynamic> toJson() => $BooksItemsAccessInfoPdfToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BooksItemsSearchInfo {
	String? textSnippet;

	BooksItemsSearchInfo();

	factory BooksItemsSearchInfo.fromJson(Map<String, dynamic> json) => $BooksItemsSearchInfoFromJson(json);

	Map<String, dynamic> toJson() => $BooksItemsSearchInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}