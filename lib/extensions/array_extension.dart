extension IntArrayExtension on int? {
  bool isIndexValid() {
    return (this != null && this != -1);
  }
}
