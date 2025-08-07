import 'package:json_annotation/json_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime?, int?> {
  const DateTimeConverter();

  @override
  DateTime? fromJson(int? millis) => millis == null ? null : DateTime.fromMillisecondsSinceEpoch(millis);

  @override
  int? toJson(DateTime? dateTime) => dateTime?.millisecondsSinceEpoch;
}
