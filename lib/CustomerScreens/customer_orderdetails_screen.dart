import 'package:flutter/material.dart';

class CustomerOrderDetailsScreen extends StatefulWidget {
  const CustomerOrderDetailsScreen({Key? key}) : super(key: key);
  static const String id = 'customer_orderdetails_screen';

  @override
  State<CustomerOrderDetailsScreen> createState() =>
      _CustomerOrderDetailsScreenState();
}

class _CustomerOrderDetailsScreenState
    extends State<CustomerOrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Order Detail ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0XFF060DD9),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Color(0XFFFFFFFF),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Color(0XFF262626),
        ),
        actions: [
          Icon(Icons.ac_unit, color: Color(0XFFFFFFFF).withOpacity(0)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
              decoration: BoxDecoration(
                color: Color(0XFFF3F3FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Color(0XFFFFFFFF),
                    child: CircleAvatar(
                      radius: 36,
                      backgroundColor: Color(0XFFFFFFFF),
                      child: ClipRRect(
                        child: Image(
                          image: AssetImage('images/image2.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Text(
                    'Said Mamadou',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0XFF060DD9),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Mathematic ’s teacher',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0XFF262626),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  Divider(
                    color: Color(0XFFFFFFFF),
                    thickness: 1.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Order Description',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0XFF262626),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'What good is having a car if you cannot power its engine? What’s the use of the office air conditioning system if it is damaged. It goes without saying that it’s never wrong to want things in their perfect condition for the benefit of everybody who uses them as part of their daily lives.What good is having a car if you cannot power its engine? What’s the use of the office air conditioning system if it is damaged. It goes without saying that it’s never wrong to want things in their perfect condition for the benefit of everybody who uses them as part of their daily lives.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color(0XFF262626),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Divider(
                    color: Color(0XFFFFFFFF),
                    thickness: 1.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Status',
                        style: TextStyle(
                            color: Color(0XFF262626),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic),
                      ),
                      Text(
                        'In progress',
                        style: TextStyle(
                            color: Color(0XFF060DD9),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Price',
                        style: TextStyle(
                            color: Color(0XFF262626),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic),
                      ),
                      Row(
                        children: [
                          Text(
                            '132',
                            style: TextStyle(
                                color: Color(0XFF060DD9),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            ' \$',
                            style: TextStyle(
                                color: Color(0XFF060DD9),
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Payment by',
                        style: TextStyle(
                            color: Color(0XFF262626),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic),
                      ),
                      Text(
                        'Visa Card N2121-2121-2121',
                        style: TextStyle(
                            color: Color(0XFF060DD9),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Divider(
                    color: Color(0XFFFFFFFF),
                    thickness: 1.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                    height: 30,
                    child: Row(
                      children: [
                        Expanded(
                          child: Material(
                            elevation: 5.0,
                            shadowColor: Color(0XFF060DD9).withOpacity(0.25),
                            color: Color(0XFFF3F3FF),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              side: BorderSide(
                                color: Color(0XFF060DD9).withOpacity(0.25),
                                width: 1.0,
                              ),
                            ),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.chat_outlined,
                                      color: Color(0XFF060DD9)),
                                  Text(
                                    'Chat   ',
                                    style: TextStyle(
                                      color: Color(0XFF060DD9),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              side: BorderSide(
                                color: Color(0XFF060DD9).withOpacity(0.25),
                                width: 1.0,
                              ),
                            ),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.beenhere,
                                      color: Color(0XFF060DD9)),
                                  Text(
                                    'Completed',
                                    style: TextStyle(
                                      color: Color(0XFF060DD9),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
