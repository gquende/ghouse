import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../configs/theme.dart';
import '../controllers/shopping_list_controller.dart';
import '../mocks/mocks.dart';
import '../models/list_categories.dart';
import '../repository/shopping_list_repository.dart';

class CreateShoppingList extends StatefulWidget {
  @override
  State<CreateShoppingList> createState() => _CreateShoppingListState();
}

class _CreateShoppingListState extends State<CreateShoppingList> {
  ListCategory? categorySelected = null;
  int priority = 1;
  ShoppingListController controller =
      ShoppingListController(GetIt.instance.get<ShoppingListRepository>());

  @override
  void initState() {
    // TODO: implement initState

    categorySelected = shoplistCategories.first;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.SECONDARYCOLOR,
        title: Text("Criar Lista"),
        centerTitle: true,
      ),
      body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Stack(
            children: [
              Container(
                height: size.height,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Categoria"),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(0, 0.3),
                                    spreadRadius: 1,
                                    blurRadius: 1)
                              ]),
                          width: size.width,
                          height: 55,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton<ListCategory>(
                                isExpanded: true,
                                underline: SizedBox(),
                                value: categorySelected,
                                items: shoplistCategories
                                    .map((e) => DropdownMenuItem(
                                        value: e, child: Text(e.name)))
                                    .toList(),
                                onChanged: (value) => setState(() {
                                      categorySelected = value;
                                    })),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Nome"),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: size.width,
                          height: 55,
                          decoration: BoxDecoration(
                              color: Color(0xffe5e5e5),
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextField(
                              controller: controller.nameFieldController,
                              decoration: InputDecoration(
                                  hintText: "",
                                  contentPadding: EdgeInsets.only(bottom: 10),
                                  focusColor: Color(0xff000000),
                                  filled: true,
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  fillColor: Color(0xffe5e5e5),
                                  labelStyle:
                                      TextStyle(color: Color(0xff000000)),
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Quantidade"),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: size.width,
                          height: 55,
                          decoration: BoxDecoration(
                              color: Color(0xffe5e5e5),
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextField(
                              controller: controller.qtyController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  hintText: "",
                                  contentPadding: EdgeInsets.only(bottom: 10),
                                  focusColor: Color(0xff000000),
                                  filled: true,
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  fillColor: Color(0xffe5e5e5),
                                  labelStyle:
                                      TextStyle(color: Color(0xff000000)),
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Preço"),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: size.width,
                          height: 55,
                          decoration: BoxDecoration(
                              color: Color(0xffe5e5e5),
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextField(
                              controller: controller.priceController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  hintText: "",
                                  contentPadding: EdgeInsets.only(bottom: 10),
                                  focusColor: Color(0xff000000),
                                  filled: true,
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  fillColor: Color(0xffe5e5e5),
                                  labelStyle:
                                      TextStyle(color: Color(0xff000000)),
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Descrição"),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: size.width,
                          height: 55,
                          decoration: BoxDecoration(
                              color: Color(0xffe5e5e5),
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextField(
                              controller: controller.descriptionController,
                              decoration: InputDecoration(
                                  hintText: "",
                                  contentPadding: EdgeInsets.only(bottom: 10),
                                  focusColor: Color(0xff000000),
                                  filled: true,
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  fillColor: Color(0xffe5e5e5),
                                  labelStyle:
                                      TextStyle(color: Color(0xff000000)),
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Prioridade",
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Radio(
                                        value: 1,
                                        groupValue: priority,
                                        onChanged: (value) {
                                          setState(() {
                                            priority = value as int;
                                          });
                                        }),
                                    Text("1"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Radio(
                                        value: 2,
                                        groupValue: priority,
                                        onChanged: (value) {
                                          setState(() {
                                            priority = value as int;
                                          });
                                        }),
                                    Text("2"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Radio(
                                        value: 3,
                                        groupValue: priority,
                                        onChanged: (value) {
                                          setState(() {
                                            priority = value as int;
                                          });
                                        }),
                                    Text("3"),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: size.height * 0.79,
                  child: Container(
                    height: size.height * 0.1,
                    width: size.width,
                    color: AppTheme.SECONDARYCOLOR,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: size.width,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey),
                          child: Center(child: Text("Adicionar"))),
                    ),
                  )),
            ],
          )),
    );
  }
}
