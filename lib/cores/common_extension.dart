
extension StringEx on String? {
  bool get empty {
    return this == null || this!.isEmpty;
  }

  bool get notEmpty {
    return this != null && this!.trim().isNotEmpty;
  }

  String get imageAsset {
    var png = this;

    if (!this!.contains(".")) {
      png = "$this.png";
    }
    return "assets/images/$png";
  }

  int get toInt {
    if (this == null) return 0;
    if (this == '') return 0;
    if (this == 'null') return 0;
    try {
      return int.parse(this!);
    } catch (e) {
      return this!.toDouble.toInt();
    } finally {
      0;
    }
  }

  double get toDouble {
    if (this == null) return 0.00;
    if (this == '') return 0.00;
    if (this == 'null') return 0.00;
    try {
      return double.parse(this!);
    } catch (e) {
      return 0.00;
    }
  }
}