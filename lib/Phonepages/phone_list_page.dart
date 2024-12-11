import 'package:fasu/useful_folders/lasu_hostel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fasu/list.dart';
import 'package:fasu/useful_folders/hostels.dart';
import 'package:fasu/useful_folders/pharmacy.dart';
import 'package:fasu/useful_folders/religious_centres.dart';
import 'package:fasu/useful_folders/restaurants.dart';

import '../useful_folders/hospitals.dart';
import '../useful_folders/places_of_interest.dart';
import '../useful_folders/sport_venue.dart';
import '../useful_folders/supermarket.dart';


class PhoneList extends StatefulWidget {
  const PhoneList({super.key});

  @override
  State<PhoneList> createState() => _PhoneListState();
}

class _PhoneListState extends State<PhoneList> {
  int isActive = -1;

  @override
  Widget build(BuildContext context) {

    return ListView(
      children: [
        listSelection(AppLocalizations.of(context)!.accommodation, context),
        isActive == 0 ? dropListSelection("Hostels") : const SizedBox(),
        const SizedBox(
          height: 10,
        ),
        listSelection(AppLocalizations.of(context)!.sportVenue, context),
        isActive == 1 ? dropListSelection("Sport Venues") : const SizedBox(),
        const SizedBox(
          height: 10,
        ),
        listSelection(AppLocalizations.of(context)!.religiousCentre, context),
        isActive == 2
            ? dropListSelection("Religious Centres")
            : const SizedBox(),
        const SizedBox(
          height: 10,
        ),
        listSelection(AppLocalizations.of(context)!.eatery, context),
        isActive == 3 ? dropListSelection("Eateries") : const SizedBox(),
        const SizedBox(
          height: 10,
        ),
        listSelection(AppLocalizations.of(context)!.hospitals, context),
        isActive == 4 ? dropListSelection("Hospitals") : const SizedBox(),
        const SizedBox(
          height: 10,
        ),
        listSelection(AppLocalizations.of(context)!.pharmacy, context),
        isActive == 5 ? dropListSelection("Pharmacy") : const SizedBox(),
        const SizedBox(
          height: 10,
        ),
        listSelection(AppLocalizations.of(context)!.market, context),
        isActive == 6 ? dropListSelection("Supermarket") : const SizedBox(),
        const SizedBox(
          height: 10,
        ),
        listSelection(AppLocalizations.of(context)!.interest, context),
        isActive == 7 ? dropListSelection("Places of interest") : const SizedBox(),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget listSelection(String name, BuildContext context) {
        List<Map<String, dynamic>>myList = recordList(context);
        for (int i = 0; i < myList.length; i++) {
          if (myList[i]["Item"].toString() == name) {
            return ListTile(
              onTap: () {
                setState(() {
                  if (isActive == -1) {
                    isActive = i;
                  } else if (isActive == i) {
                    isActive = -1;
                  } else {
                    isActive = i;
                  }
                });
              },
              leading: myList[i]["Icon"],
              title: Text(
                myList[i]['Item'].toString().toUpperCase(),
                style: const TextStyle(
                  color: Color.fromRGBO(128, 0, 0, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              trailing: const Icon(
                Icons.ads_click,
                color: Color.fromRGBO(128, 0, 0, 1),
              ),
            );
          }
        }

    return const SizedBox();
  }

  Widget dropListSelection(String name) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            if (name == 'Hostels') {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return const Hostels(schoolSelection: 0,);
                  },
                ),
              );
            }
            else if(name == 'Sport Venues')
            {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return const SportVenue(isVenue: 'Unilag',);
                  },
                ),
              );
            }
            else if(name == 'Religious Centres')
            {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return const ReligiousCentres(isVenue: 'Unilag',);
                  },
                ),
              );
            }
            else if(name == 'Eateries')
            {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return const Restaurants(isVenue: 'Unilag',);
                  },
                ),
              );
            }
            else if(name == 'Hospitals')
            {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return const HospitalCentres(isVenue: 'Unilag',);
                  },
                ),
              );
            }
            else if(name == 'Pharmacy')
            {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return Pharmacy();
                  },
                ),
              );
            }
            else if(name == 'Supermarket')
            {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return Supermarket(isActive: 'Unilag',);
                  },
                ),
              );
            }
            else if(name == 'Places of interest')
            {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return const Interest(isActive: 'Unilag');
                  },
                ),
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/UNILAGLOGO-removebg-preview.png',
                      height: 20.0,
                      width: 20.0,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "UNILAG ${name == 'Hostels'? AppLocalizations.of(context)!.home
                          :name == 'Sport Venues'? AppLocalizations.of(context)!.sportVenue
                          :name == 'Religious Centres'?AppLocalizations.of(context)!.religiousCentre
                          :name == 'Eateries'?AppLocalizations.of(context)!.eatery
                          :name == 'Hospitals'?AppLocalizations.of(context)!.hospitals
                          :name == 'Pharmacy'?AppLocalizations.of(context)!.pharmacy
                          :name == 'Supermarket'?AppLocalizations.of(context)!.market
                          :name == 'Places of interest'?AppLocalizations.of(context)!.interest
                          :name == ''}".toUpperCase(),
                      style: const TextStyle(
                        color: Color.fromRGBO(128, 0, 0, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(),
        InkWell(
          onTap: () {
            if (name == 'Hostels') {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return LasuHostel();
                  },
                ),
              );
            }
            else if(name == 'Sport Venues')
              {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) {
                      return const SportVenue(isVenue: 'Lasu',);
                    },
                  ),
                );
              }
            else if(name == 'Religious Centres')
            {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return const ReligiousCentres(isVenue: 'Lasu',);
                  },
                ),
              );
            }
            else if(name == 'Eateries')
            {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return const Restaurants(isVenue: 'Lasu',);
                  },
                ),
              );
            }
            else if(name == 'Hospitals')
            {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return const HospitalCentres(isVenue: 'Lasu',);
                  },
                ),
              );
            }
            // else if(name == 'Pharmacy')
            // {
            //   Navigator.of(context).push(
            //     CupertinoPageRoute(
            //       builder: (context) {
            //         return Pharmacy();
            //       },
            //     ),
            //   );
            // }
            else if(name == 'Supermarket')
            {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return Supermarket(isActive: 'Lasu',);
                  },
                ),
              );
            }
            else if(name == 'Places of interest')
            {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return const Interest(isActive: 'Lasu');
                  },
                ),
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Row(
                  children: [
                    Image.asset('assets/images/LASULOGO-removebg-preview.png',
                        height: 20.0, width: 20.0),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "LASU ${name == 'Hostels'? AppLocalizations.of(context)!.home
                              :name == 'Sport Venues'? AppLocalizations.of(context)!.sportVenue
                              :name == 'Religious Centres'?AppLocalizations.of(context)!.religiousCentre
                              :name == 'Eateries'?AppLocalizations.of(context)!.eatery
                              :name == 'Hospitals'?AppLocalizations.of(context)!.hospitals
                              :name == 'Pharmacy'?AppLocalizations.of(context)!.pharmacy
                              :name == 'Supermarket'?AppLocalizations.of(context)!.market
                              :name == 'Places of interest'?AppLocalizations.of(context)!.interest
                              :name == ''}".toUpperCase(),
                      style: const TextStyle(
                        color: Color.fromRGBO(128, 0, 0, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
