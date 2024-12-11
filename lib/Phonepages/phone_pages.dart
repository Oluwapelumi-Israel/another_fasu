import 'package:flutter/material.dart';
import 'package:fasu/Phonepages/phone_list_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PhoneLayout extends StatefulWidget {
  final void Function() adjust;
  final int notify;
  final void Function() cancel;
  const PhoneLayout(
      {super.key,
      required this.adjust,
      required this.notify,
      required this.cancel});

  @override
  State<PhoneLayout> createState() => _PhoneLayoutState();
}

class _PhoneLayoutState extends State<PhoneLayout> {
  int isActive = 0;

  @override
  void initState() {
    super.initState();
    isActive = 0;
  }

  Widget displayWidget(int value) {
    if (value == 0) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/images_fasu-removebg-preview.png',
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.height * 0.4,
              ),
            ),
            Expanded(
              child: Image.asset(
                'assets/images/images_mascot-removebg-preview.png',
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.height * 0.4,
              ),
            ),
          ],
        ),
      );
    } else if (value == 1) {
      return const Expanded(child: PhoneList());
    }
    return const Center(
      child: Text('Notification'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(255, 215, 0, 1),
              Color.fromRGBO(0, 0, 255, 1),
            ]),
      ),
      child: widget.notify == 0
          ? Notification(adjust: () {
              setState(() {
                widget.cancel();
              });
            })
          : Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                actions: [
                  IconButton(
                    color: const Color.fromRGBO(128, 0, 0, 1),
                    onPressed: () {
                      widget.adjust();
                    },
                    icon: const Icon(
                      size: 35,
                      Icons.language,
                    ),
                  )
                ],
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: Text(
                  AppLocalizations.of(context)!.fasuGame,
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(
                    color: Color.fromRGBO(128, 0, 0, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                centerTitle: true,
              ),
              body: Center(
                child: Column(
                  children: [
                    isActive == 1
                        ? const SizedBox(
                            height: 20,
                          )
                        : const Spacer(
                            flex: 1,
                          ),
                    displayWidget(isActive),
                    isActive == 1
                        ? const SizedBox()
                        : const Spacer(
                            flex: 1,
                          ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isActive = 0;
                            });
                          },
                          icon: const Icon(
                            Icons.home,
                          ),
                          iconSize: 40.0,
                          color: isActive == 0
                              ? const Color.fromRGBO(128, 0, 0, 1)
                              : Colors.white,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isActive = 1;
                            });
                          },
                          icon: const Icon(Icons.list),
                          iconSize: 40.0,
                          color: isActive == 1
                              ? const Color.fromRGBO(128, 0, 0, 1)
                              : Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
    );
  }
}

class Notification extends StatefulWidget {
  final void Function() adjust;
  const Notification({super.key, required this.adjust});

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  String langValue = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(255, 215, 0, 1),
            Color.fromRGBO(0, 0, 255, 1),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                child: Text(
                  AppLocalizations.of(context)!.notify,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(128, 0, 0, 1),
                ),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      widget.adjust();
                    });
                  },
                  child: Text(
                    AppLocalizations.of(context)!.ok,
                    style: const TextStyle(color: Colors.white),
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
