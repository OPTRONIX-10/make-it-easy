import 'package:flutter/material.dart';
import 'package:make_it_easy/app/shared/constants.dart';
import 'package:make_it_easy/app/widgets/common_widgets/text_widget.dart';
import 'package:make_it_easy/models/itemModel.dart';

ValueNotifier<List<ItemModel>> itemListNotifier = ValueNotifier([]);
List<int> itemGrandTotal = [];

class AddedItemsList extends StatelessWidget {
  AddedItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    int grandTotal = 0;
    return Container(
        height: 280,
        padding: EdgeInsets.symmetric(vertical: 20),
        child: ValueListenableBuilder(
            valueListenable: itemListNotifier,
            builder: (BuildContext context, List<ItemModel> _newList, _) {
              grandTotal = _newList.fold<int>(
                0,
                (total, itemsList) =>
                    total + (itemsList.weight * (itemsList.perKg ?? 0)),
              );

              itemGrandTotal.add(grandTotal);
              print(itemGrandTotal); // A
              return ListView.builder(
                  itemCount: itemListNotifier.value.length,
                  itemBuilder: (context, index) {
                    final itemsList = _newList[index];
                    final total = itemsList.weight * itemsList.perKg ?? 0;

                    //print(newList);
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: appTheme,
                          radius: 30,
                          child: TextWidget(
                              text: '${total}/-',
                              fontSize: 14,
                              textColor: Colors.white,
                              isBold: true),
                        ),
                        title: Text(itemsList.itemName),
                        subtitle: Text('${itemsList.weight.toString()} Kg'),
                        trailing: Text('Rs ${itemsList.perKg.toString()}/Kg'),
                      ),
                    );
                  });
            }));
  }
}
