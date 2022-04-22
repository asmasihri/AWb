import 'package:flutter/material.dart';

class CustomerCreateOrederScreen extends StatefulWidget {
  const CustomerCreateOrederScreen({Key? key}) : super(key: key);
  static const String id = 'customer_createorder_screen';

  @override
  State<CustomerCreateOrederScreen> createState() =>
      _CustomerCreateOrederScreenState();
}

class _CustomerCreateOrederScreenState
    extends State<CustomerCreateOrederScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Create an Order ',
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
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 40),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
                  decoration: BoxDecoration(
                    color: Color(0XFFF3F3FF),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Said Mamadou',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0XFF060DD9),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Mathematic ’s teacher',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0XFF262626),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 5, top: 5),
                              child: Text(
                                'Describe your order',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0XFF262626),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic),
                              ),
                            ),
                            Divider(
                              color: Color(0XFFF3F3FF),
                              thickness: 1.0,
                            ),
                            TextField(
                              maxLength: 1128,
                              minLines: 08,
                              maxLines: 10,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0.0, horizontal: 15.0),
                                hintText: 'Type your order description here...',
                                border: InputBorder.none,
                              ),
                            ),
                            Divider(
                              color: Color(0XFFF3F3FF),
                              thickness: 1.0,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Total Price',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color(0XFF262626),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Color(0XFFF3F3FF),
                              thickness: 1.0,
                            ),
                            GestureDetector(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(
                                        height: 24,
                                        width: 50,
                                        image: AssetImage('images/cash.jpg'),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text(
                                          'Cash',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Color(0XFF262626),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FontStyle.italic),
                                        ),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0XFF888888),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        height: 30,
                        width: MediaQuery.of(context).size.width * 0.30,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.near_me, color: Color(0XFF060DD9)),
                                Text(
                                  'Send ',
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
              ),
            ],
          ),
          Positioned(
            left: (MediaQuery.of(context).size.width - 80) / 2,
            top: 0,
            child: CircleAvatar(
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
          ),
        ],
      ),
    );
  }
}
