

import 'package:flutter/material.dart';
import 'news_item_model.dart';
import 'program_studi_model.dart';

class Faculty {
  final String id;
  final String name;
  final String shortDescription;
  final String longDescription;
  final IconData icon;
  final String imageUrl;
  final List<NewsItem> newsItems;
  final List<ProgramStudi> programs; 

  const Faculty({
    required this.id,
    required this.name,
    required this.shortDescription,
    required this.longDescription,
    required this.icon,
    required this.imageUrl,
    required this.newsItems,
    required this.programs,
  });
}