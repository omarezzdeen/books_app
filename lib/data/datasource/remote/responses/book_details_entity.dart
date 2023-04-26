import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'book_details_entity.g.dart';

@JsonSerializable()
class BookDetailsEntity {
	String? error;
	String? title;
	String? subtitle;
	String? authors;
	String? publisher;
	String? language;
	String? isbn10;
	String? isbn13;
	String? pages;
	String? year;
	String? rating;
	String? desc;
	String? price;
	String? image;
	String? url;

	BookDetailsEntity();

	factory BookDetailsEntity.fromJson(Map<String, dynamic> json) => _$BookDetailsEntityFromJson(json);

	Map<String, dynamic> toJson() => _$BookDetailsEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}