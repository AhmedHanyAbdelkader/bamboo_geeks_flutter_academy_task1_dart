abstract class MobileDevice {
  num getActualPrice();
  void printDetails();
}

class Mobile extends MobileDevice {
  final String brand;
  final String model;
  final num price;
  final num discount;

  Mobile({this.brand, this.model, this.price, this.discount});

  @override
  num getActualPrice() => price;

  @override
  void printDetails() =>
      print('Mobile $brand $model  ${calcDiscount()} EGP ');

  num calcDiscount() {
    if (discount == 0) {
      return price;
    } else {
      var dis = discount / 100;
      var p = dis * price;
      var discountResult = price - p;
      return discountResult;
    }
  }
}
