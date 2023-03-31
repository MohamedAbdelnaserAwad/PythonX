import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/colors.dart';
import 'order_details.dart';

class DriverHomeScreen extends StatefulWidget {
  const DriverHomeScreen({Key? key}) : super(key: key);

  @override
  State<DriverHomeScreen> createState() => _DriverHomeScreenState();
}

class _DriverHomeScreenState extends State<DriverHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Good Afternoon',
              style: TextStyle(
                color: obsecureColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp
              ),
            ),
            Text('Jacob Jones',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500
            ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(right: 19.w,left: 10.w ,top: 12.h,bottom: 32.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New Orders',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 28.h,),
              ListView.separated(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder:(context, index) => InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderDetailsDriver()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.r),
                      color: textFieldColor,
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 12.w ,vertical: 30.h),
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
                              SizedBox(width: 12.w,),
                              Column(
                                children: [
                                  Text(
                                    'Order Number',
                                    style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 4.h,),
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
                          Padding(
                            padding:  EdgeInsets.only(left: 20.w,top: 14.h,),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/pin.svg",
                                  color: mainColor,
                                  width: 14.w,
                                  height: 14.h,
                                ),
                                SizedBox(width: 2.w,),
                                Text(
                                    'Lotus Business Center, 3516 W. Gray St. Utica',
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                    color: obsecureColor,
                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ), separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 16.h,);
              },),
            ],
          ),
        ),
      ),
    );
  }
}
