Future<Object?> callOrReturnNull(Function() _) async {
  try {
    return await _();
  } catch (_) {
    return null;
  }
}
