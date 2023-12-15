import 'package:flutter/material.dart';
import 'package:ghouse/configs/theme.dart';
import 'package:ghouse/models/list_line.dart';

class ShopItemWidget extends StatefulWidget {
  ShopListItem item;

  ShopItemWidget({required this.item});

  @override
  State<ShopItemWidget> createState() => _ShopItemWidgetState();
}

class _ShopItemWidgetState extends State<ShopItemWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 55,
      decoration: BoxDecoration(
          color: Color(0xfff2f2f2), borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.item.itemName),
            Checkbox(
              value: widget.item.isDone,
              onChanged: (value) {
                setState(() {
                  widget.item.isDone = value!;
                });
              },
              activeColor: AppTheme.PRIMARYCOLOR,
            )
          ],
        ),
      ),
    );
  }
}
