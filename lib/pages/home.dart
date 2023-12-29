import 'package:flutter/material.dart';
import 'package:ghouse/configs/theme.dart';
import 'package:ghouse/pages/create_shoppinglist.dart';
import 'package:ghouse/pages/shopping_list.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("House Inventory", style: TextStyle(color: Colors.black),),
          ),
      body: SingleChildScrollView(
        child: setPage(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppTheme.SECONDARYCOLOR,
        selectedItemColor: AppTheme.PRIMARYCOLOR,
        unselectedItemColor: Colors.white,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Resumo"),
          /*BottomNavigationBarItem(icon: Icon(Icons.kitchen), label: "Cozinha"),*/
          BottomNavigationBarItem(
              icon: Icon(Icons.storefront_rounded), label: "Compras"),
          /* BottomNavigationBarItem(
              icon: Icon(Icons.home_repair_service), label: "Manutenções"),*/
        ],
      ),
      floatingActionButton: _currentIndex != 0
          ? FloatingActionButton(
              backgroundColor: AppTheme.PRIMARYCOLOR,
              onPressed: () {
                switch (_currentIndex) {
                  case 0:
                    break;
                  case 1:
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CreateShoppingList()));

                    break;
                }
              },
              child: Icon(Icons.add),
            )
          : null,
    );
  }

  Widget setPage(int page) {
    switch (page) {
      case 0:
        return Center(
          child: Text("Resumo"),
        );

      case 1:
        return ShoppingListView();
        return Center(
          child: Text("Cozinha"),
        );

      case 2:
        return ShoppingListView();

      case 3:
        return Center(
          child: Text("Manutenções"),
        );

      default:
        return Container();
    }
  }
}
