import 'package:flutter/material.dart';
import 'package:flutterfirst/flutter_cart_getx/utils/constants.dart';
import 'package:get/get.dart';

import '../../controller/product_controller.dart';
import '../../model/product.dart';

final ProductController controller = Get.put(ProductController());

class ProductListView extends StatelessWidget {


  Widget countButton(int index, void Function(int index) counter,
  {IconData icon = Icons.add}){
return  RawMaterialButton(
    onPressed: (){
      counter(index);
    },
  elevation: 2.0,
  fillColor: Colors.white,
  shape: CircleBorder(),
  child: Icon(icon,size: 25,),
);
  }

  @override
  Widget build(BuildContext context) {
    Widget listViewBody(Product item, int index){
      return Card(
        child: Row(
          children: [
            SizedBox(width: 20,),
            Image.asset(item.image,
                fit: BoxFit.contain,
                width: 60),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.name, style: kItemNameStyle,),
                Text(item.description,style: kItemColourStyle,),
                Text(item.price,style: kItemPriceStyle,)
              ],
            ),
            Spacer(),
            Row(
              children: [
                countButton(index,controller.increase),
                Obx(() =>
                Text(controller.allProducts[index].count.toString())),
                countButton(index, controller.decrease, icon: Icons.remove)
              ],
            )
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(15),
      itemCount: controller.allProducts.length,
      itemBuilder: (_, index) {
        Product item = controller.allProducts[index];
        if (controller.isItemListScreen) {
          return listViewBody(item, index);
        } else if (controller.isCartScreen && item.count > 0) {
          return listViewBody(item, index);
        } else {
          return Container();
        }
      },
    );

  }
}
