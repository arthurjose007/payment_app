import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_app/component/widgets/custom_button.dart';
import 'package:payment_app/component/widgets/custom_button_for_bottomsheet.dart';
import 'package:payment_app/features/homepage.dart';

import '../component/colors.dart';

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 80, left: 20, right: 20),
      height: height,
      width: width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/paymentbackground.png"),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Container(
              width: double.infinity,
              height: height * 0.14,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/success.png"),
                    fit: BoxFit.fitWidth),
              )),
          const Text(
            "Success !",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: AppColor.mainColor),
          ),
          Text(
            "Payment is completed for 2 bills",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: AppColor.idColor),
          ),
          SizedBox(
            height: height * 0.045,
          ),
          Container(
              height: 160,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 3,
                      color: Colors.grey.withOpacity(
                        0.6,
                      ))),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 10, left: 20, bottom: 10),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  25,
                                ),
                                color: Colors.green),
                            child: const Icon(
                              Icons.done,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "KenGen Power",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: AppColor.mainColor),
                              ),
                              Text(
                                "ID:454554",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: AppColor.idColor),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "\$1248.00",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: AppColor.mainColor),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 2,
                            color: Colors.grey.withOpacity(0.5),
                          )
                        ],
                      );
                    }),
              )),
          SizedBox(
            height: height * 0.05,
          ),
          Column(
            children: [
              Text(
                "Total Amount",
                style: TextStyle(fontSize: 16, color: AppColor.idColor),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "\$4334.00",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: AppColor.mainColor),
              ),
              SizedBox(
                height: height * 0.13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomBottomSheet(
                      onTap: () {}, text: "share", icon: Icons.share),
                  SizedBox(
                    width: height * 0.06,
                  ),
                  CustomBottomSheet(
                      onTap: () {}, text: "print", icon: Icons.print_outlined),
                ],
              ),
              CustomButton(
                text: "Done",
                backgroundColor: Colors.white,
                textColor: AppColor.mainColor,
                onTap: (){
                  Navigator.of(context).pop();
                },
              )
            ],
          )
        ],
      ),
    ));
  }
}
