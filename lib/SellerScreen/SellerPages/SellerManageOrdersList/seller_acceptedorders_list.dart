import 'package:awb247/SellerScreen/seller_accepteddetail_screen.dart';
import 'package:flutter/material.dart';

class Myorder {
  AssetImage imageCustomer;
  String nameCustomer;

  int price;
  String paymentType;

  Myorder(this.imageCustomer, this.nameCustomer, this.price, this.paymentType);
}

class AcceptedOrdersList extends StatefulWidget {
  const AcceptedOrdersList({Key? key}) : super(key: key);

  @override
  _AcceptedOrdersListState createState() => _AcceptedOrdersListState();
}

class _AcceptedOrdersListState extends State<AcceptedOrdersList> {
  List<Myorder> Acceptedorders = [
    Myorder(AssetImage('images/image2.jpeg'), 'Voka Skill', 132, 'Paid Online'),
    Myorder(AssetImage('images/image3.jpg'), 'Mohammed Abidar', 145, 'Cash'),
    Myorder(AssetImage('images/image4.jpg'), 'Mouad Bimezgan', 98, 'Cash'),
    Myorder(AssetImage('images/image1.jpg'), 'Said Ajrrar', 201, 'Paid Online'),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: Acceptedorders.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            decoration: BoxDecoration(
              color: Color(0XFFFFFFFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0XFFFFFFFF),
                  child: ClipRRect(
                    child: Image(
                      image: Acceptedorders[index].imageCustomer,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                Text(
                  Acceptedorders[index].nameCustomer,
                  style: TextStyle(
                      color: Color(0XFF262626),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Divider(
                  color: Color(0XFF3C206E).withOpacity(0.25),
                  thickness: 1.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price',
                      style: TextStyle(
                          color: Color(0XFF888888),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          Acceptedorders[index].price.toString(),
                          style: TextStyle(
                              color: Color(0XFF060DD9),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' \$',
                          style: TextStyle(
                              color: Color(0XFF060DD9),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payment Type',
                      style: TextStyle(
                          color: Color(0XFF888888),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      Acceptedorders[index].paymentType,
                      style: TextStyle(
                          color: Color(0XFF060DD9),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Divider(
                  color: Color(0XFF3C206E).withOpacity(0.25),
                  thickness: 1.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 16,
                      margin: EdgeInsets.only(bottom: 5),
                      child: FlatButton(
                        height: 15,
                        onPressed: () {
                          setState(() {
                            Navigator.pushNamed(
                                context, SellerAcceptedDetailsScreen.id);
                          });
                        },
                        child: Text(
                          'Order details',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Color(0XFF262626),
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  child: Row(
                    children: [
                      Expanded(
                        child: Material(
                          elevation: 5.0,
                          shadowColor: Color(0XFF060DD9).withOpacity(0.25),
                          color: Color(0XFFF3F3FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            side: BorderSide(
                              color: Color(0XFF060DD9).withOpacity(0.25),
                              width: 1.0,
                            ),
                          ),
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              'Chat',
                              style: TextStyle(
                                color: Color(0XFF262626),
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Material(
                          elevation: 5.0,
                          shadowColor: Color(0XFF060DD9).withOpacity(0.25),
                          color: Color(0XFFF3F3FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            side: BorderSide(
                              color: Color(0XFF060DD9).withOpacity(0.25),
                              width: 1.0,
                            ),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              // setState(() {
                              //   Navigator.pushNamed(
                              //       context, CustomerOrederDetailsScreen.id);
                              // });
                            },
                            child: Text(
                              'Complete',
                              style: TextStyle(
                                color: Color(0XFFE262626),
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          );
        },
      ),
    );
  }
}
