import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


List<Map<String, dynamic>> recordList(BuildContext context){
  List<Map<String, dynamic>> myList = [
    {
      "Item": AppLocalizations.of(context)!.accommodation,
      "Icon": const Icon(
        Icons.home,
        color: Color.fromRGBO(128, 0, 0, 1),
        size: 32.0,
      )
    },
    {
      "Item": AppLocalizations.of(context)!.sportVenue,
      "Icon": const Icon(
        Icons.sports_soccer_sharp,
        color: Color.fromRGBO(128, 0, 0, 1),
        size: 32.0,
      )
    },
    {
      "Item": AppLocalizations.of(context)!.religiousCentre,
      "Icon": const Icon(
        Icons.church,
        color: Color.fromRGBO(128, 0, 0, 1),
        size: 32.0,
      )
    },
    {
      "Item": AppLocalizations.of(context)!.eatery,
      "Icon": const Icon(
        Icons.restaurant,
        color: Color.fromRGBO(128, 0, 0, 1),
        size: 32.0,
      )
    },
    {
      "Item": AppLocalizations.of(context)!.hospitals,
      "Icon": const Icon(
        Icons.local_hospital,
        color: Color.fromRGBO(128, 0, 0, 1),
        size: 32.0,
      )
    },
    {
      "Item": AppLocalizations.of(context)!.pharmacy,
      "Icon": const Icon(
        Icons.local_pharmacy,
        color: Color.fromRGBO(128, 0, 0, 1),
        size: 32.0,
      )
    },
    {
      "Item": AppLocalizations.of(context)!.market,
      "Icon": const Icon(
        Icons.store_mall_directory,
        color: Color.fromRGBO(128, 0, 0, 1),
        size: 32.0,
      )
    },
    {
      "Item": AppLocalizations.of(context)!.interest,
      "Icon": const Icon(
        Icons.interests,
        color: Color.fromRGBO(128, 0, 0, 1),
        size: 32.0,
      )
    },
  ];

  return myList;
}


List<Map<String, dynamic>> lasu( BuildContext context)
{
  List<Map<String, dynamic>> lasuHostel = [
    {
      "name": AppLocalizations.of(context)!.lasuhostel[0]['name'],
      "address": AppLocalizations.of(context)!.lasuhostel[0]['address'],
      "image": AppLocalizations.of(context)!.lasuhostel[0]['image']
    },
    {
      "name": AppLocalizations.of(context)!.lasuhostel[1]['name'],
      "address": AppLocalizations.of(context)!.lasuhostel[1]['address'],
      "image": AppLocalizations.of(context)!.lasuhostel[1]['image']
    }
  ];

  return lasuHostel;
}



List<Map<String, dynamic>> femaleHostel(BuildContext context){
  List<Map<String, dynamic>> unilagFemaleHostel = [
    {
      'name': AppLocalizations.of(context)!.unilagFemaleHostel[0]['name'],
      'address': AppLocalizations.of(context)!.unilagFemaleHostel[0]['address'],
      'image': AppLocalizations.of(context)!.unilagFemaleHostel[0]['image']
    },
    {
      'name': AppLocalizations.of(context)!.unilagFemaleHostel[1]['name'],
      'address': AppLocalizations.of(context)!.unilagFemaleHostel[1]['address'],
      'image': AppLocalizations.of(context)!.unilagFemaleHostel[1]['image']
    },
    {
      'name': AppLocalizations.of(context)!.unilagFemaleHostel[2]['name'],
      'address': AppLocalizations.of(context)!.unilagFemaleHostel[2]['address'],
      'image': AppLocalizations.of(context)!.unilagFemaleHostel[2]['image']
    },
    {
      'name': AppLocalizations.of(context)!.unilagFemaleHostel[3]['name'],
      'address': AppLocalizations.of(context)!.unilagFemaleHostel[3]['address'],
      'image': AppLocalizations.of(context)!.unilagFemaleHostel[3]['image']
    },
    {
      'name': AppLocalizations.of(context)!.unilagFemaleHostel[4]['name'],
      'address': AppLocalizations.of(context)!.unilagFemaleHostel[4]['address'],
      'image': AppLocalizations.of(context)!.unilagFemaleHostel[4]['image']
    },
    {
      'name': AppLocalizations.of(context)!.unilagFemaleHostel[5]['name'],
      'address': AppLocalizations.of(context)!.unilagFemaleHostel[5]['address'],
      'image': AppLocalizations.of(context)!.unilagFemaleHostel[5]['image']
    },
    {
      'name': AppLocalizations.of(context)!.unilagFemaleHostel[6]['name'],
      'address': AppLocalizations.of(context)!.unilagFemaleHostel[6]['address'],
      'image': AppLocalizations.of(context)!.unilagFemaleHostel[6]['image']
    },
    {
      'name': AppLocalizations.of(context)!.unilagFemaleHostel[7]['name'],
      'address': AppLocalizations.of(context)!.unilagFemaleHostel[7]['address'],
      'image': AppLocalizations.of(context)!.unilagFemaleHostel[7]['image']
    },

  ];

  return unilagFemaleHostel;
}

List<Map<String, dynamic>> maleHostel(BuildContext context)
{
  List<Map<String, dynamic>> unilagMaleHostel = [
    {
      'name': AppLocalizations.of(context)!.unilagMaleHostel[0]['name'],
      'address': AppLocalizations.of(context)!.unilagMaleHostel[0]['address'],
      'image': AppLocalizations.of(context)!.unilagMaleHostel[0]['image'],
    },
    {
      'name': AppLocalizations.of(context)!.unilagMaleHostel[1]['name'],
      'address': AppLocalizations.of(context)!.unilagMaleHostel[1]['address'],
      'image': AppLocalizations.of(context)!.unilagMaleHostel[1]['image'],
    },
    {
      'name': AppLocalizations.of(context)!.unilagMaleHostel[2]['name'],
      'address': AppLocalizations.of(context)!.unilagMaleHostel[2]['address'],
      'image': AppLocalizations.of(context)!.unilagMaleHostel[2]['image'],
    },
    {
      'name': AppLocalizations.of(context)!.unilagMaleHostel[3]['name'],
      'address': AppLocalizations.of(context)!.unilagMaleHostel[3]['address'],
      'image': AppLocalizations.of(context)!.unilagMaleHostel[3]['image'],
    },
    {
      'name': AppLocalizations.of(context)!.unilagMaleHostel[4]['name'],
      'address': AppLocalizations.of(context)!.unilagMaleHostel[4]['address'],
      'image': AppLocalizations.of(context)!.unilagMaleHostel[4]['image'],
    },
    {
      'name': AppLocalizations.of(context)!.unilagMaleHostel[5]['name'],
      'address': AppLocalizations.of(context)!.unilagMaleHostel[5]['address'],
      'image': AppLocalizations.of(context)!.unilagMaleHostel[5]['image'],
    },
    {
      'name': AppLocalizations.of(context)!.unilagMaleHostel[6]['name'],
      'address': AppLocalizations.of(context)!.unilagMaleHostel[6]['address'],
      'image': AppLocalizations.of(context)!.unilagMaleHostel[6]['image'],
    }
  ];

  return unilagMaleHostel;

}

Map<String, dynamic> sport(BuildContext context)
{
  Map<String, dynamic> sportCentres = {
    "Unilag": {
      "name": AppLocalizations.of(context)!.sportCentres['Unilag']['name'],
      "address": AppLocalizations.of(context)!.sportCentres['Unilag']['address'],
      "image": AppLocalizations.of(context)!.sportCentres['Unilag']['image']
    },
    "Lasu": {
      "name": AppLocalizations.of(context)!.sportCentres['Lasu']['name'],
      "address": AppLocalizations.of(context)!.sportCentres['Lasu']['address'],
      "image": AppLocalizations.of(context)!.sportCentres['Lasu']['image']
    }
  };

  return sportCentres;
}

Map<String, dynamic> religious(BuildContext context)
{
  Map<String, dynamic> religiousCentres = {
    'Unilag': [
      {
        'name': AppLocalizations.of(context)!.religiousCentres['Unilag'][0]['name'],
        'address': AppLocalizations.of(context)!.religiousCentres['Unilag'][0]['address'],
        'image': AppLocalizations.of(context)!.religiousCentres['Unilag'][0]['image'],
      },
      {
        'name': AppLocalizations.of(context)!.religiousCentres['Unilag'][1]['name'],
        'address': AppLocalizations.of(context)!.religiousCentres['Unilag'][1]['address'],
        'image': AppLocalizations.of(context)!.religiousCentres['Unilag'][1]['image'],
      },
      {
        'name': AppLocalizations.of(context)!.religiousCentres['Unilag'][2]['name'],
        'address': AppLocalizations.of(context)!.religiousCentres['Unilag'][2]['address'],
        'image': AppLocalizations.of(context)!.religiousCentres['Unilag'][2]['image'],
      },
    ],
    'Lasu': [
      {
        'name': AppLocalizations.of(context)!.religiousCentres['Lasu'][0]['name'],
        'address': AppLocalizations.of(context)!.religiousCentres['Lasu'][0]['address'],
        'image': AppLocalizations.of(context)!.religiousCentres['Lasu'][0]['image'],
      },
      {
        'name': AppLocalizations.of(context)!.religiousCentres['Lasu'][1]['name'],
        'address': AppLocalizations.of(context)!.religiousCentres['Lasu'][1]['address'],
        'image': AppLocalizations.of(context)!.religiousCentres['Lasu'][1]['image'],
      },
    ]
  };

  return religiousCentres;
}


Map<String, dynamic> eatery(BuildContext context)
{
  Map<String, dynamic> restaurantsCentre = {
    'Unilag':[
      {
        'name': AppLocalizations.of(context)!.restaurantsCentre['Unilag'][0]['name'],
        'address': AppLocalizations.of(context)!.restaurantsCentre['Unilag'][0]['address'],
        'image': AppLocalizations.of(context)!.restaurantsCentre['Unilag'][0]['image']
      },
      {
        'name': AppLocalizations.of(context)!.restaurantsCentre['Unilag'][1]['name'],
        'address': AppLocalizations.of(context)!.restaurantsCentre['Unilag'][1]['address'],
        'image': AppLocalizations.of(context)!.restaurantsCentre['Unilag'][1]['image']
      },
      {
        'name': AppLocalizations.of(context)!.restaurantsCentre['Unilag'][2]['name'],
        'address': AppLocalizations.of(context)!.restaurantsCentre['Unilag'][2]['address'],
        'image': AppLocalizations.of(context)!.restaurantsCentre['Unilag'][2]['image']
      },
      {
        'name': AppLocalizations.of(context)!.restaurantsCentre['Unilag'][3]['name'],
        'address': AppLocalizations.of(context)!.restaurantsCentre['Unilag'][3]['address'],
        'image': AppLocalizations.of(context)!.restaurantsCentre['Unilag'][3]['image']
      },
    ],
    'Lasu': [
        {
          "name": AppLocalizations.of(context)!.restaurantsCentre['Lasu'][0]['name'],
          "address": AppLocalizations.of(context)!.restaurantsCentre['Lasu'][0]['address'],
          "image": AppLocalizations.of(context)!.restaurantsCentre['Lasu'][0]['image'],
        },
        {
          "name": AppLocalizations.of(context)!.restaurantsCentre['Lasu'][1]['name'],
          "address": AppLocalizations.of(context)!.restaurantsCentre['Lasu'][1]['address'],
          "image": AppLocalizations.of(context)!.restaurantsCentre['Lasu'][1]['image'],
        },
        {
          "name": AppLocalizations.of(context)!.restaurantsCentre['Lasu'][2]['name'],
          "address": AppLocalizations.of(context)!.restaurantsCentre['Lasu'][2]['address'],
          "image": AppLocalizations.of(context)!.restaurantsCentre['Lasu'][2]['image'],
        },
        {
          "name": AppLocalizations.of(context)!.restaurantsCentre['Lasu'][3]['name'],
          "address": AppLocalizations.of(context)!.restaurantsCentre['Lasu'][3]['address'],
          "image": AppLocalizations.of(context)!.restaurantsCentre['Lasu'][3]['image'],
        }
    ]
  };

  return restaurantsCentre;
}

Map<String, dynamic> hospital(BuildContext context)
{

  Map<String, dynamic> hospitals = {
    'Unilag': [
      {
        'name': AppLocalizations.of(context)!.hospital['Unilag'][0]['name'],
        'address': AppLocalizations.of(context)!.hospital['Unilag'][0]['address'],
        'image': AppLocalizations.of(context)!.hospital['Unilag'][0]['image'],
      },
    ],
    'Lasu': [
      {
        'name': AppLocalizations.of(context)!.hospital['Lasu'][0]['name'],
        'address': AppLocalizations.of(context)!.hospital['Lasu'][0]['address'],
        'image': AppLocalizations.of(context)!.hospital['Lasu'][0]['image'],
      },
      {
        'name': AppLocalizations.of(context)!.hospital['Lasu'][1]['name'],
        'address': AppLocalizations.of(context)!.hospital['Lasu'][1]['address'],
        'image': AppLocalizations.of(context)!.hospital['Lasu'][1]['image'],
      },
    ]
  };

  return hospitals;
}


Map<String, dynamic> pharm(BuildContext context)
{
  Map<String, dynamic> pharmacy = {
    'Unilag': [
      {
        'name': AppLocalizations.of(context)!.clinic['Unilag'][0]['name'],
        'address': AppLocalizations.of(context)!.clinic['Unilag'][0]['address'],
        'image': AppLocalizations.of(context)!.clinic['Unilag'][0]['image'],
      },
      {
        'name': AppLocalizations.of(context)!.clinic['Unilag'][1]['name'],
        'address': AppLocalizations.of(context)!.clinic['Unilag'][1]['address'],
        'image': AppLocalizations.of(context)!.clinic['Unilag'][1]['image'],
      }
    ]
  };
  return pharmacy;
}

Map<String, dynamic> market(BuildContext context)
{
  Map<String, dynamic> supermarket = {
    'Unilag': [
      {
        'name': AppLocalizations.of(context)!.supermarket['Unilag'][0]['name'],
        'address': AppLocalizations.of(context)!.supermarket['Unilag'][0]['address'],
        'image': AppLocalizations.of(context)!.supermarket['Unilag'][0]['image'],
      }
    ],
    'Lasu': [
      {
        "name": AppLocalizations.of(context)!.supermarket['Lasu'][0]['name'],
        "address": AppLocalizations.of(context)!.supermarket['Lasu'][0]['address'],
        "image": AppLocalizations.of(context)!.supermarket['Lasu'][0]['image'],
      },
      {
        "name": AppLocalizations.of(context)!.supermarket['Lasu'][1]['name'],
        "address": AppLocalizations.of(context)!.supermarket['Lasu'][1]['address'],
        "image": AppLocalizations.of(context)!.supermarket['Lasu'][1]['image'],
      },
      {
        "name": AppLocalizations.of(context)!.supermarket['Lasu'][2]['name'],
        "address": AppLocalizations.of(context)!.supermarket['Lasu'][2]['address'],
        "image": AppLocalizations.of(context)!.supermarket['Lasu'][2]['image'],
      }
    ]
  };

  return supermarket;
}

List<Map<String, dynamic>> lasuInterest(BuildContext context)
{
  List<Map<String, dynamic>> interestLasu = [
    {
      'name':AppLocalizations.of(context)!.interestLasu[0]['name'],
      'address': AppLocalizations.of(context)!.interestLasu[0]['address'],
      'description': AppLocalizations.of(context)!.interestLasu[0]['description'],
      'images': AppLocalizations.of(context)!.interestLasu[0]['images'],
    },
    {
      'name':AppLocalizations.of(context)!.interestLasu[1]['name'],
      'address': AppLocalizations.of(context)!.interestLasu[1]['address'],
      'description': AppLocalizations.of(context)!.interestLasu[1]['description'],
      'images': AppLocalizations.of(context)!.interestLasu[1]['images'],
    },
    {
      'name':AppLocalizations.of(context)!.interestLasu[2]['name'],
      'address': AppLocalizations.of(context)!.interestLasu[2]['address'],
      'description': AppLocalizations.of(context)!.interestLasu[2]['description'],
      'images': AppLocalizations.of(context)!.interestLasu[2]['images'],
    },
    {
      'name':AppLocalizations.of(context)!.interestLasu[3]['name'],
      'address': AppLocalizations.of(context)!.interestLasu[3]['address'],
      'description': AppLocalizations.of(context)!.interestLasu[3]['description'],
      'images': AppLocalizations.of(context)!.interestLasu[3]['images'],
    },
    {
      'name':AppLocalizations.of(context)!.interestLasu[4]['name'],
      'address': AppLocalizations.of(context)!.interestLasu[4]['address'],
      'description': AppLocalizations.of(context)!.interestLasu[4]['description'],
      'images': AppLocalizations.of(context)!.interestLasu[4]['images'],
    },
    {
      'name':AppLocalizations.of(context)!.interestLasu[5]['name'],
      'address': AppLocalizations.of(context)!.interestLasu[5]['address'],
      'description': AppLocalizations.of(context)!.interestLasu[5]['description'],
      'images': AppLocalizations.of(context)!.interestLasu[5]['images'],
    },

  ];

  return interestLasu;
}

List<Map<String, dynamic>> unilagInterest(BuildContext context)
{
  List<Map<String, dynamic>> interestUnilag = [
    {
      'name':AppLocalizations.of(context)!.interestUnilag[0]['name'],
      'address':AppLocalizations.of(context)!.interestUnilag[0]['address'],
      'description': AppLocalizations.of(context)!.interestUnilag[0]['description'],
      'images': AppLocalizations.of(context)!.interestUnilag[0]['images'],
    },
    {
      'name':AppLocalizations.of(context)!.interestUnilag[1]['name'],
      'address':AppLocalizations.of(context)!.interestUnilag[1]['address'],
      'description': AppLocalizations.of(context)!.interestUnilag[1]['description'],
      'images': AppLocalizations.of(context)!.interestUnilag[1]['images'],
    },
  ];

  return interestUnilag;
}