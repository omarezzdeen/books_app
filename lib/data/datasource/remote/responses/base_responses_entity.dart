import 'package:books_app/data/datasource/remote/responses/books_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'base_responses_entity.g.dart';

@JsonSerializable()
class BaseResponsesEntity {
	String? error;
	String? total;
	List<BooksEntity>? books;

	BaseResponsesEntity();

	factory BaseResponsesEntity.fromJson(Map<String, dynamic> json) => _$BaseResponsesEntityFromJson(json);

	Map<String, dynamic> toJson() => _$BaseResponsesEntityToJson(this);

	BaseResponsesEntity copyWith({String? error, String? total, List<BooksEntity>? books}) {
		return BaseResponsesEntity()
			..error= error ?? this.error
			..total= total ?? this.total
			..books= books ?? this.books;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}