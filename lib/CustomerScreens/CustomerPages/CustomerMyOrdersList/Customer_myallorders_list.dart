import 'package:awb247/CustomerScreens/customer_orderdetails_screen.dart';
import 'package:flutter/material.dart';

class Myorder {
  AssetImage imageSeller;
  String nameSeller;
  String service;
  int price;
  String status;

  Myorder(
      this.imageSeller, this.nameSeller, this.service, this.price, this.status);
}

class MyAllOrdersList extends StatefulWidget {
  const MyAllOrdersList({Key? key}) : super(key: key);

  @override
  _MyAllOrdersListState createState() => _MyAllOrdersListState();
}

class _MyAllOrdersListState extends State<MyAllOrdersList> {
  List<Myorder> Myallorders = [
    Myorder(AssetImage('images/image2.jpeg'), 'Voka Skill', 'Mechanic', 132,
        'In progress'),
    Myorder(AssetImage('images/image3.jpg'), 'Mohammed Abidar', 'Home teachers',
        45, 'Completed'),
    Myorder(AssetImage('images/image4.jpg'), 'Mouad Bimezgan', 'Plumber', 80,
        'In progress'),
    Myorder(AssetImage('images/image1.jpg'), 'Said Ajrrar', 'Bricklayer', 231,
        'In progress'),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: Myallorders.length,
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
                      image: Myallorders[index].imageSeller,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Myallorders[index].nameSeller,
                      style: TextStyle(
                          color: Color(0XFF262626),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' (',
                      style: TextStyle(
                          color: Color(0XFF888888),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      Myallorders[index].service,
                      style: TextStyle(
                          color: Color(0XFF888888),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ')',
                      style: TextStyle(
                          color: Color(0XFF888888),
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
                          Myallorders[index].price.toString(),
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
                      'Status',
                      style: TextStyle(
                          color: Color(0XFF888888),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      Myallorders[index].status,
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
                              setState(() {
                                Navigator.pushNamed(
                                    context, CustomerOrderDetailsScreen.id);
                              });
                            },
                            child: Text(
                              'View',
                              style: TextStyle(
                                color: Color(0XFF262626),
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
