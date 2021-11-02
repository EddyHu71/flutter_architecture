extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }

  String replaceLast(String substring, String replacement) {
    int index = this.lastIndexOf(substring);
    if (index == -1) return this;
    return this.substring(0, index) +
        replacement +
        this.substring(index + substring.length);
  }

  String removeLast() {
    var charactersString = this.split('');
    charactersString.removeLast();
    return charactersString.join();
  }
}
