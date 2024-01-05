import 'package:banking_app/pages/show_screen.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return getContent();
  }

  Widget getContent() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(18, 60, 18, 0),
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Settings',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 32)),
              ],
            ),
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const ReadTermsOrPrivacyScreenView(
                              link: 'google.com',
                            )),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/Shield.png',
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text('Privacy Policy',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const ReadTermsOrPrivacyScreenView(
                              link: 'google.com',
                            )),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/doc.png',
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text('Terms of Use',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // page = ESelectedPage.termsPage;
                  // setState(() {});
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/Info.png',
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text('Subscription info',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // page = ESelectedPage.ratePage;
                  // setState(() {});
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/Star.png',
                      ),
                      const Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text('Rate app',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ]));
  }
}
