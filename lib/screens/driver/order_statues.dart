import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/colors.dart';

class OrderStatuesDriver extends StatefulWidget {
  const OrderStatuesDriver({Key? key}) : super(key: key);

  @override
  State<OrderStatuesDriver> createState() => _OrderStatuesDriverState();
}

class _OrderStatuesDriverState extends State<OrderStatuesDriver> {
  List<Map<String, dynamic>> statuesList = [
    {'name': 'Deliver', 'color': mainColor, 'selected': false},
    {'name': 'Deliver', 'color': secondTogColor, 'selected': false},
    {'name': 'Deliver', 'color': thirdTogColor, 'selected': false}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back,
                size: 18,
              ),
              SizedBox(
                width: 3.w,
              ),
              const Text('Back'),
            ],
          ),
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(right: 12.w, left: 16.w, top: 28.h, bottom: 80.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Details ',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Please chose statues after order delivered',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: obsecureColor,
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: statuesList
                  .map((e) => InkWell(
                onTap: (){
                  setState(() {
                    e['selected'] = !e['selected'];
                    statuesList.forEach((element) {
                      if(e != element ){
                        element['selected'] = false;
                      }
                    });
                  });
                },
                    child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.w,
                          ),
                          child: Container(
                            width: 100.w,
                            height: 36.h,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              border: Border.all(color: e['color']),
                              color: e['selected'] ? e['color'] : null,
                            ),
                            child: Center(child: Text(e['name'])),
                          ),
                        ),
                  ))
                  .toList(),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18.r),
                child: ElevatedButton(
                  onPressed:
                  statuesList.any((element) => element['selected'] == true) ? () {}:null,
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: 18.sp),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
