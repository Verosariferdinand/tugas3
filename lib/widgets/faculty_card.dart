import 'package:flutter/material.dart';
import '../models/faculty_model.dart';
import '../screens/faculty_detail_screen.dart';
import '../utils/app_colors.dart';

class FacultyCard extends StatelessWidget {
  final Faculty faculty;

  const FacultyCard({
    super.key,
    required this.faculty,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell( // Efek "splash" saat diklik
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          // Aksi Navigasi saat diklik
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FacultyDetailScreen(faculty: faculty),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Lingkaran Ikon dengan warna Kuning
              CircleAvatar(
                radius: 28,
                backgroundColor: accentYellow.withOpacity(0.2),
                child: Icon(
                  faculty.icon,
                  size: 28,
                  color: primaryBlue,
                ),
              ),
              const SizedBox(width: 16),
              // Teks (Nama & Deskripsi)
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      faculty.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: primaryBlue,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      faculty.shortDescription,
                      style: TextStyle(
                        fontSize: 14,
                        color: darkText.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),
              // Ikon Panah dikanan
              const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
            ],
          ),
        ),
      ),
    );
  }
}