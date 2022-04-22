import 'package:awb247/SellerScreen/seller_chat_screen.dart';
import 'package:flutter/material.dart';

String nameSellerTap = '';

class SellerInboxPage extends StatefulWidget {
  @override
  State<SellerInboxPage> createState() => _SellerInboxPageState();
}

class _SellerInboxPageState extends State<SellerInboxPage> {
  final List<AssetImage> imagesSeller = <AssetImage>[
    AssetImage('images/image3.jpg'),
    AssetImage('images/image1.jpg'),
    AssetImage('images/image4.jpg'),
    AssetImage('images/image2.jpeg'),
    AssetImage('images/image1.jpg'),
    AssetImage('images/image3.jpg'),
    AssetImage('images/image4.jpg'),
    AssetImage('images/image1.jpg'),
    AssetImage('images/profildefault.png'),
  ];

  final List<String> namesSeller = <String>[
    'Voka Skill',
    'Ali Aden',
    'Mohammed Abidar',
    'Mouad Bimezgan',
    'Said Ajrrar',
    'Karim boukhsan',
    'Dahmad Boutfonast',
    'Hmou Boutmokrissin',
    'Yassine Chamharouch'
  ];

  final List<String> writer = <String>[
    'Voka',
    'Me',
    'Me',
    'Mouad',
    'Said',
    'Me',
    'Dahmad',
    'Me',
    'Me'
  ];

  final List<String> lastmessages = <String>[
    'Ordim atafok ichrk yan iznzarni',
    'Ila sbah lkhir ihtina yan iwayad',
    'Asa9sa awdi sa9sat lmojarib',
    'Hay hay manzakin',
    'Ightlssa tslit lizar omlil',
    'Chrbil oumlil',
    'Srsat louz ola atay',
    'Taslit tkaad agharass',
    'Imik simik asaytar onzar'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0XFFFFFFFF),
        elevation: 0,
        leading: Icon(
          Icons.ac_unit,
          color: Color(0XFFFFFFFF).withOpacity(0),
        ),
        title: Center(
          child: Text(
            'Inbox',
            style: TextStyle(
              color: Color(0XFF060DD9),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.ac_unit,
            color: Color(0XFFFFFFFF).withOpacity(0),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
              decoration: BoxDecoration(
                color: Color(0XFFF3F3FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: writer.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, SellerChatScreen.id);
                        nameSellerTap = namesSeller[index];
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0XFFFFFFFF),
                          child: ClipRRect(
                            child: Image(
                              image: imagesSeller[index],
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              namesSeller[index],
                              style: TextStyle(
                                color: Color(0XFF262626),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  ' ${writer[index]}:',
                                  style: TextStyle(
                                    color: Color(0XFF262626),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  lastmessages[index],
                                  style: TextStyle(
                                    color: Color(0XFF262626),
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                  color: Color(0XFFFFFFFF),
                  thickness: 1.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
