import 'package:flutter_academy_tasks/src/task1/mobile.dart';

void main(){

  var iPhone = Mobile(brand: 'IPhone',model: '11 PRO',price: 30000,discount: 3);
  var samsungGalaxy = Mobile(brand: 'Samsung Galaxy',model: 'S 20',price: 11000,discount: 0);
  var onePlus7 = Mobile(brand: 'One',model: 'Plus 7',price: 20000,discount: 2.5);

  testMobile(iPhone);
  testMobile(samsungGalaxy);
  testMobile(onePlus7);

}

void testMobile(Mobile mobile){
  mobile.printDetails();
  var actualPriveOfIPhone = mobile.getActualPrice();
  print('Actual Price Is : $actualPriveOfIPhone EGP \n');
}