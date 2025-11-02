// lib/screens/faculty_detail_screen.dart

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/faculty_model.dart';
import '../models/news_item_model.dart';
import '../models/program_studi_model.dart'; // <--- IMPORT PRODI MODEL
import '../utils/app_colors.dart';

class FacultyDetailScreen extends StatelessWidget {
  final Faculty faculty;

  const FacultyDetailScreen({
    super.key,
    required this.faculty,
  });

  // Fungsi untuk membuka URL (sudah ada)
  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      print('Could not launch $urlString');
    }
  }

  // --- TAMBAHKAN FUNGSI BARU INI ---
  // Fungsi untuk menampilkan Bottom Sheet daftar prodi
  void _showProdiSheet(BuildContext context, Faculty faculty) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Agar tinggi sheet bisa dinamis
      // Membuat sudut atas membulat
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          // Batasi tinggi sheet agar tidak full screen
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.6,
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Tinggi sheet sesuai konten
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Handle (garis abu-abu di atas)
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Judul Sheet
              Text(
                'Program Studi',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                faculty.name,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.grey[600]),
              ),
              const Divider(height: 24),

              // Daftar Prodi
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true, // Penting di dalam Column
                  itemCount: faculty.programs.length,
                  itemBuilder: (context, index) {
                    final ProgramStudi program = faculty.programs[index];
                    return ListTile(
                      leading:
                          const Icon(Icons.school_outlined, color: secondaryBlue),
                      title: Text(program.name),
                      onTap: () {
                        // Nanti Anda bisa buat tiap prodi punya URL sendiri
                        Navigator.pop(context); // Tutup sheet saat di-klik
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
  // --- BATAS FUNGSI BARU ---

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(faculty.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header (Image.asset)
            Image.asset(
              faculty.imageUrl,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),

            // Deskripsi
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ... (Text 'Tentang Fakultas' dan longDescription) ...
                  Text(
                    'Tentang Fakultas',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    faculty.longDescription,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.5),
                  ),
                  const SizedBox(height: 24),
                  
                  // ... (Text 'Berita & Agenda' dan ListView.builder) ...
                  Text(
                    'Berita & Agenda',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 12),
                  ListView.builder(
                    itemCount: faculty.newsItems.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final NewsItem newsItem = faculty.newsItems[index];
                      return Column(
                        children: [
                          ListTile(
                            leading: Icon(newsItem.icon, color: secondaryBlue),
                            title: Text(newsItem.title),
                            subtitle: Text(newsItem.subtitle),
                            trailing: const Icon(Icons.arrow_forward_ios, size: 14),
                            onTap: () {
                              _launchURL(newsItem.url);
                            },
                          ),
                          const Divider(),
                        ],
                      );
                    },
                  ),

                  const SizedBox(height: 30),

                  // --- UBAH TOMBOL DI SINI ---
                  Center(
                    child: ElevatedButton.icon(
                      // 1. Ganti Ikon
                      icon: const Icon(Icons.school),
                      // 2. Ganti Label
                      label: const Text('Lihat Program Studi'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: accentYellow,
                        foregroundColor: darkText,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // 3. Ganti onPressed
                      onPressed: () {
                        // Panggil fungsi bottom sheet
                        _showProdiSheet(context, faculty);
                      },
                    ),
                  )
                  // --- BATAS PERUBAHAN TOMBOL ---
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}