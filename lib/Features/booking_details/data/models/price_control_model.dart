class PriceControlModel {
  final String title;
  final int price;
  final void Function()? onTap1, onTap2;

  PriceControlModel({
    required this.title,
    required this.price,
    this.onTap1,
    this.onTap2,
  });
}
