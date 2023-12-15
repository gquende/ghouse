import 'package:flutter/material.dart';
import 'package:ghouse/configs/theme.dart';
import 'package:ghouse/models/list_line.dart';
import 'package:ghouse/pages/widgets/shop_item.dart';

class ShoppingListView extends StatefulWidget {
  const ShoppingListView({super.key});

  @override
  State<ShoppingListView> createState() => _ShoppingListViewState();
}

class _ShoppingListViewState extends State<ShoppingListView> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Compras",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 30,
              ),
              /*
              Container(
                width: size.width,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xfff2f2f2),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 5),
                  child: TextField(
                      controller: search,
                      decoration: InputDecoration(
                        disabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 15),
                        suffixIcon: Container(
                          width: 55,
                          height: 50,
                          decoration: BoxDecoration(
                              color: AppTheme.PRIMARYCOLOR,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5))),
                          child: Icon(
                            Icons.search,
                            color: AppTheme.SECONDARYCOLOR,
                          ),
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              */
              Container(
                width: size.width,
                height: 50,
                decoration: BoxDecoration(
                    color: AppTheme.PRIMARYCOLOR,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Geral",
                        style: TextStyle(color: AppTheme.SECONDARYCOLOR),
                      ),
                      Text(
                        "${DateTime.now().toString().substring(0, 10)}",
                        style: TextStyle(color: AppTheme.SECONDARYCOLOR),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: List.generate(
                    5,
                    (index) => Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: ShopItemWidget(
                              item: ShopListItem(
                            uuid: "${index} - Teste",
                            isDone: false,
                            listUUID: "1",
                            itemName: "${index} - Teste",
                            description: "Teste",
                            qty: 10,
                            price: 10.3,
                            priority: 1,
                          )),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
