import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pythonx_task/shared/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool isVisible = true;
  var formKey = GlobalKey<FormState>();
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
                size: 20,
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
        padding: EdgeInsets.only(right: 12.w, left: 12.w,bottom: 100.h),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Please Sign in',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 34.h,
              ),
              TextFormField(
                onChanged: (value){
                  setState(() {

                  });
                },
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Username',
                  fillColor: textFieldColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                ),
                validator: (value){
                  if(value == null){
                    return 'Please enter your email and try again';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30.h,),
              TextFormField(
                onChanged: (value){
                  setState(() {

                  });
                },
                obscureText: isVisible,

                decoration: InputDecoration(
                  suffixIcon: isVisible ? IconButton(
                    icon: const Icon(Icons.visibility),
                    onPressed: (){
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                  )  :
                  IconButton(
                    icon: const Icon(Icons.visibility),
                    color: obsecureColor,
                    onPressed: (){
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                  )  ,
                  filled: true,
                  hintText: 'Password',
                  fillColor: textFieldColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                ),
                validator: (value){
                  if(value == null){
                    return 'Please enter your Password and try again';
                  }
                  return null;
                },
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18.r),
                  child: ElevatedButton(
                    onPressed:formKey.currentState?.validate()??false? () {}:null,
                    child: Text(
                      'Sign in',
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
