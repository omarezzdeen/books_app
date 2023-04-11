import 'package:books_app/generated/json/base/json_field.dart';
import 'package:books_app/generated/json/book_details_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class BookDetailsEntity {
	String? kind;
	String? id;
	String? etag;
	String? selfLink;
	BookDetailsVolumeInfo? volumeInfo;
	BookDetailsLayerInfo? layerInfo;
	BookDetailsSaleInfo? saleInfo;
	BookDetailsAccessInfo? accessInfo;

	BookDetailsEntity();

	factory BookDetailsEntity.fromJson(Map<String, dynamic> json) => $BookDetailsEntityFromJson(json);

	Map<String, dynamic> toJson() => $BookDetailsEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookDetailsVolumeInfo {
	String? title;
	List<String>? authors;
	String? publisher;
	String? publishedDate;
	String? description;
	List<BookDetailsVolumeInfoIndustryIdentifiers>? industryIdentifiers;
	BookDetailsVolumeInfoReadingModes? readingModes;
	int? pageCount;
	int? printedPageCount;
	String? printType;
	List<String>? categories;
	String? maturityRating;
	bool? allowAnonLogging;
	String? contentVersion;
	BookDetailsVolumeInfoPanelizationSummary? panelizationSummary;
	BookDetailsVolumeInfoImageLinks? imageLinks;
	String? language;
	String? previewLink;
	String? infoLink;
	String? canonicalVolumeLink;

	BookDetailsVolumeInfo();

	factory BookDetailsVolumeInfo.fromJson(Map<String, dynamic> json) => $BookDetailsVolumeInfoFromJson(json);

	Map<String, dynamic> toJson() => $BookDetailsVolumeInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookDetailsVolumeInfoIndustryIdentifiers {
	String? type;
	String? identifier;

	BookDetailsVolumeInfoIndustryIdentifiers();

	factory BookDetailsVolumeInfoIndustryIdentifiers.fromJson(Map<String, dynamic> json) => $BookDetailsVolumeInfoIndustryIdentifiersFromJson(json);

	Map<String, dynamic> toJson() => $BookDetailsVolumeInfoIndustryIdentifiersToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookDetailsVolumeInfoReadingModes {
	bool? text;
	bool? image;

	BookDetailsVolumeInfoReadingModes();

	factory BookDetailsVolumeInfoReadingModes.fromJson(Map<String, dynamic> json) => $BookDetailsVolumeInfoReadingModesFromJson(json);

	Map<String, dynamic> toJson() => $BookDetailsVolumeInfoReadingModesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookDetailsVolumeInfoPanelizationSummary {
	bool? containsEpubBubbles;
	bool? containsImageBubbles;

	BookDetailsVolumeInfoPanelizationSummary();

	factory BookDetailsVolumeInfoPanelizationSummary.fromJson(Map<String, dynamic> json) => $BookDetailsVolumeInfoPanelizationSummaryFromJson(json);

	Map<String, dynamic> toJson() => $BookDetailsVolumeInfoPanelizationSummaryToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookDetailsVolumeInfoImageLinks {
	String? smallThumbnail;
	String? thumbnail;
	String? small;
	String? medium;
	String? large;

	BookDetailsVolumeInfoImageLinks();

	factory BookDetailsVolumeInfoImageLinks.fromJson(Map<String, dynamic> json) => $BookDetailsVolumeInfoImageLinksFromJson(json);

	Map<String, dynamic> toJson() => $BookDetailsVolumeInfoImageLinksToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookDetailsLayerInfo {
	List<BookDetailsLayerInfoLayers>? layers;

	BookDetailsLayerInfo();

	factory BookDetailsLayerInfo.fromJson(Map<String, dynamic> json) => $BookDetailsLayerInfoFromJson(json);

	Map<String, dynamic> toJson() => $BookDetailsLayerInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookDetailsLayerInfoLayers {
	String? layerId;
	String? volumeAnnotationsVersion;

	BookDetailsLayerInfoLayers();

	factory BookDetailsLayerInfoLayers.fromJson(Map<String, dynamic> json) => $BookDetailsLayerInfoLayersFromJson(json);

	Map<String, dynamic> toJson() => $BookDetailsLayerInfoLayersToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookDetailsSaleInfo {
	String? country;
	String? saleability;
	bool? isEbook;
	BookDetailsSaleInfoListPrice? listPrice;
	BookDetailsSaleInfoRetailPrice? retailPrice;
	String? buyLink;
	List<BookDetailsSaleInfoOffers>? offers;

	BookDetailsSaleInfo();

	factory BookDetailsSaleInfo.fromJson(Map<String, dynamic> json) => $BookDetailsSaleInfoFromJson(json);

	Map<String, dynamic> toJson() => $BookDetailsSaleInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookDetailsSaleInfoListPrice {
	double? amount;
	String? currencyCode;

	BookDetailsSaleInfoListPrice();

	factory BookDetailsSaleInfoListPrice.fromJson(Map<String, dynamic> json) => $BookDetailsSaleInfoListPriceFromJson(json);

	Map<String, dynamic> toJson() => $BookDetailsSaleInfoListPriceToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookDetailsSaleInfoRetailPrice {
	double? amount;
	String? currencyCode;

	BookDetailsSaleInfoRetailPrice();

	factory BookDetailsSaleInfoRetailPrice.fromJson(Map<String, dynamic> json) => $BookDetailsSaleInfoRetailPriceFromJson(json);

	Map<String, dynamic> toJson() => $BookDetailsSaleInfoRetailPriceToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookDetailsSaleInfoOffers {
	int? finskyOfferType;
	BookDetailsSaleInfoOffersListPrice? listPrice;
	BookDetailsSaleInfoOffersRetailPrice? retailPrice;
	bool? giftable;

	BookDetailsSaleInfoOffers();

	factory BookDetailsSaleInfoOffers.fromJson(Map<String, dynamic> json) => $BookDetailsSaleInfoOffersFromJson(json);

	Map<String, dynamic> toJson() => $BookDetailsSaleInfoOffersToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookDetailsSaleInfoOffersListPrice {
	int? amountInMicros;
	String? currencyCode;

	BookDetailsSaleInfoOffersListPrice();

	factory BookDetailsSaleInfoOffersListPrice.fromJson(Map<String, dynamic> json) => $BookDetailsSaleInfoOffersListPriceFromJson(json);

	Map<String, dynamic> toJson() => $BookDetailsSaleInfoOffersListPriceToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookDetailsSaleInfoOffersRetailPrice {
	int? amountInMicros;
	String? currencyCode;

	BookDetailsSaleInfoOffersRetailPrice();

	factory BookDetailsSaleInfoOffersRetailPrice.fromJson(Map<String, dynamic> json) => $BookDetailsSaleInfoOffersRetailPriceFromJson(json);

	Map<String, dynamic> toJson() => $BookDetailsSaleInfoOffersRetailPriceToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookDetailsAccessInfo {
	String? country;
	String? viewability;
	bool? embeddable;
	bool? publicDomain;
	String? textToSpeechPermission;
	BookDetailsAccessInfoEpub? epub;
	BookDetailsAccessInfoPdf? pdf;
	String? webReaderLink;
	String? accessViewStatus;
	bool? quoteSharingAllowed;

	BookDetailsAccessInfo();

	factory BookDetailsAccessInfo.fromJson(Map<String, dynamic> json) => $BookDetailsAccessInfoFromJson(json);

	Map<String, dynamic> toJson() => $BookDetailsAccessInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookDetailsAccessInfoEpub {
	bool? isAvailable;

	BookDetailsAccessInfoEpub();

	factory BookDetailsAccessInfoEpub.fromJson(Map<String, dynamic> json) => $BookDetailsAccessInfoEpubFromJson(json);

	Map<String, dynamic> toJson() => $BookDetailsAccessInfoEpubToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BookDetailsAccessInfoPdf {
	bool? isAvailable;

	BookDetailsAccessInfoPdf();

	factory BookDetailsAccessInfoPdf.fromJson(Map<String, dynamic> json) => $BookDetailsAccessInfoPdfFromJson(json);

	Map<String, dynamic> toJson() => $BookDetailsAccessInfoPdfToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}