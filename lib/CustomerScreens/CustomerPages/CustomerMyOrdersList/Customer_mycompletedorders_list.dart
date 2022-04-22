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

class MyCompletedOrdersList extends StatefulWidget {
  const MyCompletedOrdersList({Key? key}) : super(key: key);

  @override
  _MyCompletedOrdersListState createState() => _MyCompletedOrdersListState();
}

class _MyCompletedOrdersListState extends State<MyCompletedOrdersList> {
  List<Myorder> Mycompletedorders = [
    Myorder(AssetImage('images/image3.jpg'), 'Mohammed Abidar', 'Home teachers',
        45, 'Completed'),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: Mycompletedorders.length,
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
                      image: Mycompletedorders[index].imageSeller,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Mycompletedorders[index].nameSeller,
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
                      Mycompletedorders[index].service,
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
                          Mycompletedorders[index].price.toString(),
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
                      Mycompletedorders[index].status,
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
                            onPressed: () {},
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
