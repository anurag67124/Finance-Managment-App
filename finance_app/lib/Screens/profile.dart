import 'dart:ui';
import 'package:finance_app/Screens/login.dart';
import 'package:finance_app/Screens/settings.dart';
import 'package:intl/intl.dart';
import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/theme.dart';
import 'edit_profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  static Color my_color1 = kPrimaryColor;
  Currency my_Currency = Currency(
      code: "INR",
      name: "Rupees",
      symbol: "₹",
      flag: "INR",
      number: 356,
      decimalDigits: 7,
      namePlural: "Rupees",
      symbolOnLeft: true,
      decimalSeparator: ".",
      thousandsSeparator: ",",
      spaceBetweenAmountAndSymbol: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 240,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomCenter,
                              colors: <Color>[
                                my_color1,
                                my_color1.withOpacity(0.8)
                              ])),
                    ),
                    Positioned(
                      bottom: -100,
                      child: Container(
                        width: MediaQuery.of(context).size.width - 140,
                        height: 170,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: my_color1,
                                  spreadRadius: 0.5,
                                  blurRadius: 5,
                                  offset: Offset(4, 8))
                            ],
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: <Color>[
                                  kWhiteColor,
                                  Color.fromARGB(234, 233, 233, 233)
                                ])),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [kPrimaryColor, kDarkGreyColor],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                ),
                              ),
                              child: Center(
                                  child: Text(
                                "P",
                                style:
                                    TextStyle(fontSize: 50, color: kWhiteColor),
                              )),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Profile",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 140,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: kPrimaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 20)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditProfile()));
                  },
                  child: Text(
                    "Edit Profile",
                  )),
              //
              SizedBox(
                height: 20,
              ),
              Container(
                child: InkWell(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Settings()))
                  },
                  child: ListTile(
                    leading: Container(
                      width: 40,

                      height: 40,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: my_color1,
                      ), // BoxDecoration

                      child: const Icon(Icons.settings),
                    ), // Container

                    title: Text("Settings"),

                    trailing: Container(
                      width: 30,

                      height: 30,

                      // BoxDecoration
                    ), // Container
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  showCurrencyPicker(
                    context: context,
                    showFlag: true,
                    showCurrencyName: true,
                    showCurrencyCode: true,
                    onSelect: (Currency currency) {
                      print('Select currency: ${currency.name}');
                      setState(() {});
                      my_Currency = currency;
                    },
                  );
                },
                child: ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: kDarkGreyColor,
                    ), // BoxDecoration
                    child: Image.asset('images/Currency.png'),
                  ), // Container
                  title: Text(
                    "Currency : ${my_Currency.name}",
                  ),
                  trailing: Container(
                    width: 30,
                    height: 30,
                    // BoxDecoration
                  ), // Container
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: kDarkGreyColor,
                  ), // BoxDecoration

                  child: const Icon(Icons.logout_rounded),
                ), // Container

                title: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LogInScreen()));
                    },
                    child: Text("Logout")),

                trailing: Container(
                  width: 30,
                  height: 30,
                  // BoxDecoration
                ), // Container
              ),
              // ListTile(
              //               leading: Container(
              //                 width: 40,

              //                 height: 40,

              //                 decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(100),
              //                   color: Colors.grey,
              //                 ), // BoxDecoration

              //                 child: const Icon(Icons.account_circle),
              //               ), // Container

              //               title: Text("Mahesh Komma"),

              //               trailing: Container(
              //                 width: 30,

              //                 height: 30,

              // // BoxDecoration
              //               ), // Container
              //             ), ListTile(
              //               leading: Container(
              //                 width: 40,

              //                 height: 40,

              //                 decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(100),
              //                   color: Colors.grey,
              //                 ), // BoxDecoration

              //                 child: const Icon(Icons.account_circle),
              //               ), // Container

              //               title: Text("Mahesh Komma"),

              //               trailing: Container(
              //                 width: 30,

              //                 height: 30,

              // // BoxDecoration
              //               ), // Container
              //             )
            ],
          ),
        ),
      ),
    );
  }
}
