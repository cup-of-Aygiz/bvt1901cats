import 'package:bvt1901_practice/features/adreses_page/presentation/components/address_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressesList extends StatelessWidget {
  const AddressesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 20.h,),
        Center(
          child: Wrap(
            children: [
              for (int i=0;i<3;i++)
                const AddressContainer()
            ],
          ),
        ),
      ],
    );
  }
}
