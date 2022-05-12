import 'package:bvt1901_practice/features/products_catalog/presetation/components/product_detals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetalsImage extends StatelessWidget {
  const ProductDetalsImage({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final ProductDetals widget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: 300.h,
        child: Image(
          image: NetworkImage(widget.productEntity.image),
          fit: BoxFit.fitHeight,
        ),
      ),
      onTap: () => showGeneralDialog(
        context: context,
        barrierDismissible: true, // закрыт при нажатии вне
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: InteractiveViewer(
              // для увеличения картинки
              child:
                  Image.network(widget.productEntity.image),
            ),
          );
        },
      ),
    );
  }
}

