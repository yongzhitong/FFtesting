import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';

int? factorial(int? n) {
  if (n == null || n < 0) return null; // Return null for invalid input
  if (n == 0) return 1; // Base case: 0! = 1
  // Recursive case
  final result = factorial(n - 1);
  if (result == null)
    return null; // Propagate null if recursive call returns null
  return n * result;
}
