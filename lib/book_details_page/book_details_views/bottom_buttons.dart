import 'package:book_store_app/cart_page/cart_page.dart';
import 'package:book_store_app/models/book_model.dart';
import 'package:flutter/material.dart';

//import 'package:google_fonts/google_fonts.dart';

class BuyAndDetailsButtons extends StatelessWidget {
  const BuyAndDetailsButtons({
    Key? key,
    required this.boughtBook, required this.desiredBookIndex,
  }) : super(key: key);
  final BookModel boughtBook;
  final int desiredBookIndex;
  static String price = BookModel.book[1].price;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20, left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 2,
                ),
                Container(
                  width: 150,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: const Offset(0, 9))
                      ]),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                    child: Icon(Icons.preview, color: Colors.black54),
                    onPressed: () => print('object'),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Container(
                  width: 150,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: const Offset(0, 9))
                      ]),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                    child: Icon(Icons.reviews, color: Colors.black54),
                    onPressed: () => print('object'),
                  ),
                ),
                const Spacer(
                  flex: 2,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Container(
              width: 350,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 9))
                  ]),
              child: TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
                child: Text("Buy now for $price\$",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
                onPressed: () {
                  BookModel.book[desiredBookIndex].inCart = true;
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CartPage()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}