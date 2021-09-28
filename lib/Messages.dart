import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Messages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US' : {
      'hello' : 'hello',
    },
    'bn' : {
      'hello' : 'হ্যালো',
    },
    'fr_FR' : {
      'hello' : 'Bonjour',
    },

  };

}