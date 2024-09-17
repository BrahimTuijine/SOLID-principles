// ignore_for_file: public_member_api_docs, sort_constructors_first
//* BAD */

// class Rectangle {
//   final double height;
//   final double width;

//   Rectangle({required this.height, required this.width});
// }

// class Square {
//   final int side;

//   Square({required this.side});
// }

// class PrintShape {
//   void drawShape(Object object) {
//     if (object is Rectangle) {
//       print("this is Rectangle");
//     }
//     if (object is Square) {
//       print("this is Square");
//     }
//   }
// }

//*   GOOD * /

abstract class Shape {
  drawShape();
}

class Rectangle implements Shape {
  final double height;
  final double width;

  Rectangle({required this.height, required this.width});

  @override
  drawShape() => print("this is Rectangle ");
}

class Square implements Shape {
  final int side;

  Square({required this.side});

  @override
  drawShape() => print("this is Square");
}

class DrawShape {
  void call(Shape shape) => shape.drawShape();
}
