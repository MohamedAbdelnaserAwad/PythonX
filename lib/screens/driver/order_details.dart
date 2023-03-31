import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/colors.dart';
import 'order_statues.dart';

class OrderDetailsDriver extends StatefulWidget {
  const OrderDetailsDriver({Key? key}) : super(key: key);

  @override
  State<OrderDetailsDriver> createState() => _OrderDetailsDriverState();
}

class _OrderDetailsDriverState extends State<OrderDetailsDriver> {
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
        padding: EdgeInsets.only(right: 12.w, left: 16.w, top: 28.h,bottom: 80.h),
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
              height: 28.h,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.r),
                color: textFieldColor,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 30.h),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30.r,
                          backgroundColor: circleAvatarColor,
                          child: const Icon(Icons.restaurant_menu),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Column(
                          children: [
                            Text(
                              'Order Number',
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              'Today at 7:12 PM',
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                color: obsecureColor,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text(
                          '120.00 AED',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 6.h,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.r),
                color: textFieldColor,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 30.h),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30.r,
                          backgroundColor: circleAvatarColor,
                          child: const Icon(Icons.home),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Home',
                              style: TextStyle(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w500,
                                color: obsecureColor,
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            SizedBox(
                              width: 210.w,
                              child: Text(
                                'Lotus Business Center, 3516 W. Gray St. Utica',
                                overflow: TextOverflow.ellipsis ,
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 22.r,
                          backgroundColor: circleAvatarMapColor,
                          child: const Icon(Icons.map,
                          color: Colors.white,),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 16.h,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.r),
                color: textFieldColor,
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 17.w, vertical: 22.h,),
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 30.r,
                      backgroundImage: const AssetImage('assets/images/pic.png'),

                      ),
                    SizedBox(width: 12.w,),
                    Text(
                      'Chandler Bing',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,

                      ),
                    ),
                    const Spacer(),
                    CircleAvatar(
                      radius: 22.r,
                      backgroundColor:  mainColor,
                      child: const Icon(Icons.message_rounded,
                        color: Colors.white,),
                    ),
                    SizedBox(width: 11.w,),
                    CircleAvatar(
                      radius: 22.r,
                      backgroundColor: circleAvatarCallColor,
                      child: const Icon(Icons.call,
                        color: Colors.white,),
                    ),



                  ],
                ),
              ),

            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18.r),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OrderStatuesDriver(),
                        ));
                  },
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
