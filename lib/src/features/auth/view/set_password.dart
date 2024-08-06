import 'package:flutter/material.dart';
import 'package:ride_app/core/resources/colors.dart';

class SetPasswrd extends StatefulWidget {
  const SetPasswrd({super.key});

  @override
  State<SetPasswrd> createState() => _SetPasswrdState();
}

bool _obscureText1 = true;
bool _obscureText2 = true;

TextEditingController password = TextEditingController();
TextEditingController confirmpassword = TextEditingController();


class _SetPasswrdState extends State<SetPasswrd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Row(
          children: [
            Icon(
              Icons.arrow_back_ios_new,
              size: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 4),
              child: Text("Back"),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const Text(
            "Set Password",
            style: TextStyle(fontSize: 24),
          ),
          const Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "Set your password",
              style: TextStyle(fontSize: 16, color: color.greySubtitle),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: double.infinity,height: 60,
              child: TextField(
                controller: password,
                obscureText: _obscureText1,
                decoration: InputDecoration(
                  hintText: 'Enter Your Password',
                  hintStyle: TextStyle(color: color.greySubtitle,fontSize: 14),
                  suffix: InkWell(
                    onTap: () {
                      setState(() {
                        _obscureText1 = !_obscureText1;
                      });
                    },
                    child:   Icon(_obscureText1  ? Icons.visibility_off_outlined
                                                  : Icons.visibility_outlined,
                                              color: Colors.grey,
                                            )),
                  
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: color.greySubtitle),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: double.infinity,height: 60,
              child: TextField(
                controller: confirmpassword,
                obscureText: _obscureText2,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(color: color.greySubtitle,fontSize: 14),
                  suffix: InkWell(
                    onTap: () {
                      setState(() {
                        _obscureText2 = !_obscureText2;
                      });
                    },
                    child:   Icon(_obscureText2  ? Icons.visibility_off_outlined
                                                  : Icons.visibility_outlined,
                                              color: Colors.grey,
                                            )),
                  
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: color.greySubtitle),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ),
         const Padding(
            padding: const EdgeInsets.only(bottom: 30,top: 8,left: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('daAtleast 1 number or a special characterta',style: TextStyle(color: color.greySubtitle,fontSize: 14),)),
          ),
                Align(
                  alignment: Alignment.center,
            child:Container(width: 400,height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: 
            color.primaryColor),
            child:const Center(child: Text('Register',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),)),)
          ),
        ],
      ),
    );
  }
}
