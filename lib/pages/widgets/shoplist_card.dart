import 'package:flutter/material.dart';
import 'package:ghouse/configs/theme.dart';

class ShoplistCard extends StatelessWidget {
  ShoplistCard();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 7, spreadRadius: 1)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            child: Icon(
                              Icons.kitchen,
                              color: Colors.white,
                            ),
                            backgroundColor: AppTheme.PRIMARYCOLOR,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: size.width / 1.8,
                                child: Text(
                                  "Cozinha",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-Bold',
                                      color: Colors.black54),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
                                "20000.00 kZS",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins-Medium',
                                    color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                          ),
                          backgroundColor: Color(0xffe5e5e5),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
              Divider(
                height: 9,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "100% Concluido",
                            style: TextStyle(
                                fontFamily: 'Poppins-Medium',
                                fontSize: 16,
                                color: Colors.grey),
                            // style: Text(),
                          ),
                          Text(
                            "10000",
                            style: TextStyle(
                                fontFamily: 'Poppins-Medium',
                                fontSize: 18,
                                color: Colors.grey),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Restante",

                            style: TextStyle(
                                fontFamily: 'Poppins-Medium',
                                fontSize: 16,
                                color: Colors.grey),
                            // style: Text(),
                          ),
                          Text(
                            "wewewe",
                            style: TextStyle(
                                fontFamily: 'Poppins-Medium',
                                fontSize: 18,
                                color: AppTheme.PRIMARYCOLOR),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: (size.width - 40),
                        height: 12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xff67727d).withOpacity(0.1)),
                      ),
                      Container(
                        width: (size.width - 40) * (200 / 100),
                        height: 12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppTheme.PRIMARYCOLOR),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
