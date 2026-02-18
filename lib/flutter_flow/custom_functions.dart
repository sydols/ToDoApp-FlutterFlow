import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

/// This function takes a list of inspirational quotes and a second list of
/// their corresponding authors, generates a random number, and outputs a
/// string of a random quote and its corresponding author.
String randomQuote(
  List<String>? quotesList,
  List<String>? authorsList,
) {
  // This function takes a list of inspirational quotes and a second list of their corresponding authors, generates a random number, and outputs a string of a random quote and its corresponding author.
  if (quotesList == null ||
      authorsList == null ||
      quotesList.isEmpty ||
      authorsList.isEmpty ||
      quotesList.length != authorsList.length) {
    return 'Invalid input';
  }

  final randomIndex = math.Random().nextInt(quotesList.length);
  return '"${quotesList[randomIndex]}" - ${authorsList[randomIndex]}';
}
