import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'books_entity.g.dart';

@JsonSerializable()
class BooksEntity {
	String? title;
	String? subtitle;
	String? isbn13;
	String? price;
	String? image;
	String? url;

	BooksEntity();

	factory BooksEntity.fromJson(Map<String, dynamic> json) => _$BooksEntityFromJson(json);

	Map<String, dynamic> toJson() => _$BooksEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}