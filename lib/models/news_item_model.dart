import 'package:flutter/material.dart';

class NewsItem {
  final String title;
  final String subtitle;
  final String url;
  final IconData icon;

  const NewsItem({
    required this.title,
    required this.subtitle,
    required this.url,
    required this.icon,
  });
}