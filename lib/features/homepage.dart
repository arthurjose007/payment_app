import 'package:flutter/material.dart';
import 'package:payment_app/component/colors.dart';
import 'package:payment_app/component/widgets/custom_button.dart';
import 'package:payment_app/component/widgets/custom_text_size.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Stack(
          children: [
            Container(
              height: 300,
              width: width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/background.png"),
                      fit: BoxFit.cover),
                  color: Colors.red),
              child: Stack(
                children: [
                  Positioned(
                    right: -10,
                    bottom: 0,
                    child: Container(
                      height: 70,
                      width: width,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/curve.png"),
                            fit: BoxFit.cover),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: height * 0.08,
                          ),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                barrierColor: Colors.transparent,
                                backgroundColor: Colors.transparent,

                                //Colors.grey.withOpacity(0.5),
                                constraints: BoxConstraints(
                                  maxHeight:
                                      MediaQuery.of(context).size.height - 240,
                                  minHeight:
                                      MediaQuery.of(context).size.height - 240,
                                ),
                                builder: (context) => SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height - 240,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        bottom: 0,
                                        child: Container(
                                          color: const Color(0xFFeef1f4).withOpacity(0.7),
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height -
                                              300,
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                          left: MediaQuery.of(context)
                                              .size
                                              .width -
                                              107,
                                          child: Container(width: 60,height: 250,decoration: BoxDecoration(
                                          color:AppColor.mainColor ,
                                          borderRadius: BorderRadius.circular(29) ),))
                                    ],
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/lines.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.15,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 320,
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        height: 140,
                        width: width - 20,
                        margin:
                            const EdgeInsets.only(left: 8, right: 8, top: 13),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1, 1),
                                  blurRadius: 20),
                            ]),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: width * 0.6,
                                  height: 130,
                                  // color: Colors.blue,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      SizedBox(
                                        height: 65,
                                        // color: Colors.green,
                                        child: Row(
                                          children: [
                                            const SizedBox(
                                              width: 22,
                                            ),
                                            Container(
                                              height: 59,
                                              width: 60,
                                              margin:
                                                  const EdgeInsets.only(top: 5),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey,
                                                  width: 3,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: const DecorationImage(
                                                  image: AssetImage(
                                                    "images/brand1.png",
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  "KenGen Power",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: AppColor.mainColor,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                Text(
                                                  "ID: 846594",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: AppColor.mainColor,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 65,
                                        // color: Colors.grey,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: 8,
                                            ),
                                            SizedText(
                                              text: "Auto pay on 24th May 18",
                                              color: Colors.red,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 130,
                                  width: width * 0.34,
                                  // color: Colors.grey.shade600,
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Select",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: AppColor.mainColor,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 5,
                                            height: 35,
                                            decoration: BoxDecoration(
                                                color: AppColor.halfOval,
                                                borderRadius:
                                                    const BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(30),
                                                        bottomLeft:
                                                            Radius.circular(
                                                                30))),
                                          )
                                        ],
                                      ),
                                      const Column(
                                        children: [
                                          Text(
                                            "\$1248.00",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900,
                                              color: AppColor.mainColor,
                                            ),
                                          ),
                                          Text(
                                            "Due in 3 days",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: AppColor.mainColor,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ));
                  },
                ),
              ),
            ),
            const Positioned(
                bottom: 10,
                child: CustomButton(
                  text: "Pay all bills",
                  textColor: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
