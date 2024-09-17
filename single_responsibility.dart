//* Bad */

// class Invoice {
//   late Book book;
//   late int quantity;
//   late double discountRate;
//   late double taxRate;
//   late double total;
//   Invoice(Book book, int quantity, double discountRate, double taxate) {
//     this.book = book;
//     this.quantity = quantity;
//     this.discountRate = discountRate;
//     this.taxRate = taxRate;
//     this.total = this.calculateTotal();
//   }

//   double calculateTotal() {
//     double price = ((book.price - book.price * discountRate) * this.quantity);
//     double pricewithTaxes = price * (1 + taxRate);
//     return pricewithTaxes;
//   }

//   void printInvoice(printInvoice) {
//     print("$quantity" + '×' + "${book.name}" + "${book.price}\$");
//     print("Discount Rate $discountRate");
//     print("Tax Rate  $taxRate");
//     print("Total" " + total); }book. price + ");
//   }

//   void saveToFile(String filename) {}
// }

//* Good */

class Invoice {
  late Book book;
  late int quantity;
  late double discountRate;
  late double taxRate;
  late double total;
  Invoice(Book book, int quantity, double discountRate, double taxate) {
    this.book = book;
    this.quantity = quantity;
    this.discountRate = discountRate;
    this.taxRate = taxRate;
    this.total = this.calculateTotal();
  }

  double calculateTotal() {
    double price = ((book.price - book.price * discountRate) * this.quantity);
    double pricewithTaxes = price * (1 + taxRate);
    return pricewithTaxes;
  }
}

class PrintInvoice {
  final Invoice invoice;

  PrintInvoice({required this.invoice});

  void call(printInvoice) {
    print("${invoice.quantity}" +
        '×' +
        "${invoice.book.name}" +
        "${invoice.book.price}\$");
    print("Discount Rate ${invoice.discountRate}");
    print("Tax Rate  ${invoice.taxRate}");
    print("Total" " + total); }book. price + ");
  }
}

class SaveToFile {
  void call(String filename) {
    print('save this file $filename');
  }
}

class Book {
  String name;
  String authorName;
  int year;
  int price;
  String isbn;
  Book({
    required this.name,
    required this.authorName,
    required this.year,
    required this.price,
    required this.isbn,
  });
}
