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

/// converts string input into double
double convertToDouble(String input) {
  return double.tryParse(input) ?? 0.0;
}

/// converts fahrenheit temp to celsius
double fToC(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

double cToF(double celsius) {
  return (celsius * 9 / 5) + 32;
}
