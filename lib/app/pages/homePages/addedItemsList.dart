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
    return Container(
      height: 280,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: ValueListenableBuilder(
          valueListenable: itemListNotifier,
          builder: (BuildContext context, List<ItemModel> newList, _) {
            return ListView.builder(
                itemCount: itemListNotifier.value.length,
                itemBuilder: (context, index) {
                  final itemsList = itemListNotifier.value[index];
                  final total = itemsList.weight * itemsList.perKg ?? 0;
                  itemGrandTotal.add(total);
                  print(itemGrandTotal);
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: appTheme,
                        radius: 30,
                        child: TextWidget(
                            text: '${itemsList.weight * itemsList.perKg}/-',
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
          }),
    );
  }
}
