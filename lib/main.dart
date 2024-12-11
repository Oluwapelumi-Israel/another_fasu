import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Phonepages/phone_pages.dart';
import 'Webpages/web_pages.dart';
import 'layout_out.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String lang = 'en';
  int isActive = 0;
  int isNotify = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale(lang),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('fr'),
        Locale('ar'),
        Locale('es'),
        Locale('pt')
      ],
      home: isActive == 0
          ? SelectLanguage(
              adjust: (x) {
                setState(() {
                  lang = x;
                  isActive = 1;
                });
              },
              cancel: (){
                setState(() {
                  isActive = 1;
                  isNotify = 1;
                });
              },
            )
          : DeviceLayoutBuilder(
              webLayout: const WebLayout(),
              phoneLayout: PhoneLayout(
                adjust: () {
                  setState(() {
                    isActive = 0;
                  });
                },
                notify: isNotify,
                cancel: (){
                  setState(() {
                    isNotify = 1;
                  });
                },
            ),
      ),
    );
  }
}


class SelectLanguage extends StatefulWidget {
  final void Function(String) adjust;
  final void Function() cancel;
  const SelectLanguage({super.key, required this.adjust, required this.cancel});

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
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
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: (){
                    setState(() {
                      widget.cancel();
                    });
                  },
                  icon: const Icon(
                      color: Color.fromRGBO(128, 0, 0, 1),
                      Icons.cancel_outlined,
                    size: 40
                  ),
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 12)),
                  color: Color.fromRGBO(128, 0, 0, 1),
                ),
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Color.fromRGBO(128, 0, 0, 1),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      langValue = 'en';
                      widget.adjust(langValue);
                    });
                  },
                  child: const Text(
                    'English',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 12)),
                  color: Color.fromRGBO(128, 0, 0, 1),
                ),
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Color.fromRGBO(128, 0, 0, 1),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      langValue = 'ar';
                      widget.adjust(langValue);
                    });
                  },
                  child: const Text(
                    'Arabic',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 12)),
                  color: Color.fromRGBO(128, 0, 0, 1),
                ),
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Color.fromRGBO(128, 0, 0, 1),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      langValue = 'es';
                      widget.adjust(langValue);
                    });
                  },
                  child: const Text(
                    'Spanish',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 12)),
                  color: Color.fromRGBO(128, 0, 0, 1),
                ),
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Color.fromRGBO(128, 0, 0, 1),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      langValue = 'pt';
                      widget.adjust(langValue);
                    });
                  },
                  child: const Text(
                    'Portuguese',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 12)),
                  color: Color.fromRGBO(128, 0, 0, 1),
                ),
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Color.fromRGBO(128, 0, 0, 1),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      langValue = 'fr';
                      widget.adjust(langValue);
                    });
                  },
                  child: const Text(
                    'French',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
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


