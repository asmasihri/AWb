import 'package:flutter/material.dart';

class CustomerProfilPage extends StatefulWidget {
  const CustomerProfilPage({Key? key}) : super(key: key);

  @override
  _CustomerProfilPageState createState() => _CustomerProfilPageState();
}

class _CustomerProfilPageState extends State<CustomerProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF3C206E).withOpacity(0.20),
      appBar: AppBar(
        backgroundColor: Color(0XFF3C206E).withOpacity(0.0),
        elevation: 0,
        leading: Icon(
          Icons.ac_unit,
          color: Color(0XFFFFFFFF).withOpacity(0),
        ),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 50),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 50),
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
                        'Med Sami',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0XFF060DD9),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            GestureDetector(
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                      color: Color(0XFFF3F3FF),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Icon(
                                      Icons.person_outline,
                                      color: Color(0XFF060DD9),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    'Personal Information',
                                    style: TextStyle(
                                      color: Color(0XFF262626),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0XFF3C206E).withOpacity(0.25),
                              thickness: 1.0,
                              indent: 50,
                              endIndent: 20,
                            ),
                            GestureDetector(
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                      color: Color(0XFFF3F3FF),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Icon(
                                      Icons.credit_card,
                                      color: Color(0XFF060DD9),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    'Credit Card',
                                    style: TextStyle(
                                      color: Color(0XFF262626),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'General',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0XFF888888),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            GestureDetector(
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                      color: Color(0XFFF3F3FF),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Icon(
                                      Icons.settings,
                                      color: Color(0XFF060DD9),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    'Settigns',
                                    style: TextStyle(
                                      color: Color(0XFF262626),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0XFF3C206E).withOpacity(0.25),
                              thickness: 1.0,
                              indent: 50,
                              endIndent: 20,
                            ),
                            GestureDetector(
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                      color: Color(0XFFF3F3FF),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Icon(
                                      Icons.history,
                                      color: Color(0XFF060DD9),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    'History',
                                    style: TextStyle(
                                      color: Color(0XFF262626),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0XFF3C206E).withOpacity(0.25),
                              thickness: 1.0,
                              indent: 50,
                              endIndent: 20,
                            ),
                            GestureDetector(
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                      color: Color(0XFFF3F3FF),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Icon(
                                      Icons.group_add,
                                      color: Color(0XFF060DD9),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    'Invite friends',
                                    style: TextStyle(
                                      color: Color(0XFF262626),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                  color: Color(0XFFF3F3FF),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  Icons.logout,
                                  color: Color(0XFFE50505),
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Logout',
                                style: TextStyle(
                                  color: Color(0XFF262626),
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
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
            left: (MediaQuery.of(context).size.width - 100) / 2,
            top: 0,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0XFFFFFFFF),
              child: CircleAvatar(
                radius: 45,
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
