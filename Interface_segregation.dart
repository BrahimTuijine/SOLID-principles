//** BAD */

// abstract class Payment {
//   void applePay();
//   void googlePay();
//   void creditCardPay();
// }

// class AndroidPayment implements Payment {
//   @override
//   void applePay() {}

//   @override
//   void creditCardPay() {}

//   @override
//   void googlePay() {}
// }

// class IosPayment implements Payment {
//   @override
//   void applePay() {}

//   @override
//   void creditCardPay() {}

//   @override
//   void googlePay() {}
// }

//** GOOD */

abstract class CreditCart {
  void creditCardPay();
}

abstract class Android {
  void androidPay();
}

abstract class Ios {
  void applePay();
}

class AndroidPayment implements Android {
  @override
  void androidPay() {}
}

class IosPayment implements Ios {
  @override
  void applePay() {}
}

class CreditCartPayment implements CreditCart {
  @override
  void creditCardPay() {}
}
