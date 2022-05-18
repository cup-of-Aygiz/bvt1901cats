import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/features/orders/domain/entity/order_entity.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class OrderContainer extends StatelessWidget {
  final OrderEntity orderEntity;

  const OrderContainer({
    Key? key,
    required this.orderEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //размер страницы без appbar
    double height = MediaQuery.of(context).size.height - 150.h;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: context.appColors.white,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: context.appColors.darkOcean,
          style: BorderStyle.solid,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 20.h),
            child: Text(
              DateFormat.yMMMd().format(DateTime.parse(orderEntity.orderDate)),
              style: AppTextStyle.normalW500S14,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Text(
              '№ ${orderEntity.orderNumber}',
              style: AppTextStyle.normalW700S20,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, bottom: 20.h),
            child: Text(
              orderEntity.deliveryAddress,
              style: AppTextStyle.normalW300S14,
            ),
          ),
          //будет заменено на список продуктов
          SizedBox(height: height-220.h,),
          SizedBox(height: 20.h),
          Container(
            color: context.appColors.darkOcean,
            //2 плохо смотрится
            height: 1.h,
            width: width,
            margin: EdgeInsets.symmetric(horizontal: 20.w),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w,top: 10.h),
            child: Text(
              '${context.appLocale.sum_with_delivery} ${orderEntity.price} ₽',
              style: AppTextStyle.normalW500S14,
            ),
          ),
        ],
      ),
    );
  }
}
