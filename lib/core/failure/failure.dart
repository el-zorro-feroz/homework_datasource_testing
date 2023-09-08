// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Failure<T> {
  final T data;
  final StackTrace stackTrace;

  Failure({
    required this.data,
    required this.stackTrace,
  });
}
