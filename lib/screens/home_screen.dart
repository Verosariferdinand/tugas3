// lib/screens/home_screen.dart

import 'package:flutter/material.dart';
import '../models/faculty_model.dart';
import '../models/news_item_model.dart';
import '../models/program_studi_model.dart'; // <--- 1. TAMBAHKAN IMPORT INI
import '../utils/app_colors.dart';
import '../widgets/faculty_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Buat data dummy untuk fakultas
  final List<Faculty> faculties = const [
    const Faculty(
      id: 'FST',
      name: 'Fakultas Sains dan Teknologi',
      shortDescription: 'Teknik Industri, Teknik Mesin, Teknik Elektro, Agroteknologi, Teknologi Pangan, Teknik Sipil, dan Informatika.',
      longDescription: 'Fakultas Sains dan Teknologi (FST) UMSIDA menawarkan pendidikan di bidang rekayasa IPTEKS yang berlandaskan nilai-nilai Islam. Fakultas ini memiliki berbagai program studi, termasuk Teknik Industri, Teknik Mesin, Teknik Elektro, Agroteknologi, Teknologi Pangan, Teknik Sipil, dan Informatika, dengan penekanan pada integrasi antara keunggulan akademik dan nilai Islami.',
      icon: Icons.computer,
      imageUrl: 'assets/images/header_saintek.png',
      newsItems: const [
        NewsItem(
          title: 'Kaprodi Agro Pendampingan Ketahanan Pangan',
          subtitle: '2025',
          icon: Icons.article,
          url: 'https://fst.umsida.ac.id/kaprodi-agro-pendambingan-ketahanan-pangan/',
        ),
        NewsItem(
          title: 'Karya Inovasi Laboran Kilab 2025',
          subtitle: '2025',
          icon: Icons.article,
          url: 'https://fst.umsida.ac.id/diseminasi-karya-inovasi-laboran-kilab-2025/',
        ),
        NewsItem(
          title: 'Juara 2 Mobil Hemat Energi',
          subtitle: '2025',
          icon: Icons.article,
          url: 'https://fst.umsida.ac.id/tim-imei-umsida-kembali-menorehkan-raih-juara-2/',
        ),
      ],
      // --- 2. TAMBAHKAN DAFTAR PRODI ---
      programs: const [
        ProgramStudi(name: 'Teknik Industri'),
        ProgramStudi(name: 'Teknik Mesin'),
        ProgramStudi(name: 'Teknik Elektro'),
        ProgramStudi(name: 'Agroteknologi'),
        ProgramStudi(name: 'Teknologi Pangan'),
        ProgramStudi(name: 'Teknik Sipil'),
        ProgramStudi(name: 'Informatika'),
      ],
    ),
    const Faculty(
      id: 'FBHIS',
      name: 'Fakultas Bisnis, Hukum, dan Ilmu Sosial',
      shortDescription: 'Manajemen, Akuntansi, Ilmu Komunikasi, Administrasi Publik, Hukum, dan Bisnis Digital.',
      longDescription: 'FBHIS adalah Fakultas Bisnis, Hukum, dan Ilmu Sosial di Universitas Muhammadiyah Sidoarjo (UMSIDA) yang terbentuk pada tahun 2019 dari gabungan tiga fakultas sebelumnya, yaitu Ekonomi dan Bisnis, Ilmu Sosial dan Ilmu Politik, dan Hukum. Fakultas ini menawarkan berbagai program studi S1 dan S2, seperti Manajemen, Akuntansi, Ilmu Komunikasi, Administrasi Publik, Hukum, dan Bisnis Digital. FBHIS berfokus pada penciptaan lulusan yang kompetitif dengan menggabungkan keunggulan akademik, keterampilan praktis, soft skills, dan nilai-nilai keislaman, serta menekankan internasionalisasi melalui berbagai program dan fasilitasnya.',
      icon: Icons.business_center,
      imageUrl: 'assets/images/FBHIS.png',
      newsItems: const [
        NewsItem(
          title: 'Magister Ilmu Komunikasi',
          subtitle: '2025',
          icon: Icons.article,
          url: 'https://fbhis.umsida.ac.id/umsida-luncurkan-magister-ilmu-komunikasi/',
        ),
        NewsItem(
          title: 'Strategi Media Sosial',
          subtitle: '2025',
          icon: Icons.article,
          url: 'https://fbhis.umsida.ac.id/strategi-media-sosial-dibeberkan-dosen-umsida/',
        ),
        NewsItem(
          title: 'Peran Auditor Di USIM',
          subtitle: '2025',
          icon: Icons.article,
          url: 'https://fbhis.umsida.ac.id/dosen-fbhis-umsida-kupas-peran-auditor-di-usim/',
        ),
      ],
      // --- 2. TAMBAHKAN DAFTAR PRODI ---
      programs: const [
        ProgramStudi(name: 'Manajemen'),
        ProgramStudi(name: 'Akuntansi'),
        ProgramStudi(name: 'Ilmu Komunikasi'),
        ProgramStudi(name: 'Administrasi Publik'),
        ProgramStudi(name: 'Hukum'),
        ProgramStudi(name: 'Bisnis Digital'),
      ],
    ),
    const Faculty(
      id: 'FPIP',
      name: 'Fakultas Psikologi dan Ilmu Pendidikan',
      shortDescription: 'Psikologi, Pendidikan Guru Pendidikan Anak Usia Dini (PG-PAUD), Pendidikan Guru Sekolah Dasar (PGSD), Pendidikan Bahasa Inggris (PBI), Pendidikan IPA, dan Pendidikan Teknologi Informasi (PTI).',
      longDescription: 'Fakultas Psikologi dan Ilmu Pendidikan (FPIP) di Universitas Muhammadiyah Sidoarjo (Umsida) adalah fakultas unik di Indonesia yang menggabungkan dua bidang studi: Psikologi dan Keguruan dan Ilmu Pendidikan (FKIP). Fakultas ini memiliki enam program studi, yaitu Psikologi, Pendidikan Guru Pendidikan Anak Usia Dini (PG-PAUD), Pendidikan Guru Sekolah Dasar (PGSD), Pendidikan Bahasa Inggris (PBI), Pendidikan IPA, dan Pendidikan Teknologi Informasi (PTI). FPIP bertujuan mencetak lulusan yang profesional, berintegritas, dan memiliki keterampilan praktis di bidang psikologi terapan dan pendidikan.',
      icon: Icons.psychology,
      imageUrl: 'assets/images/fpip.png',
      newsItems: const [
        NewsItem(
          title: 'Psikologi dan Pendidikan Bersinergi',
          subtitle: '2025',
          icon: Icons.article,
          url: 'https://fpip.umsida.ac.id/inspire-psikologi-dan-pendidikan-bersinergi/',
        ),
        NewsItem(
          title: 'Pembelajaran',
          subtitle: '2025',
          icon: Icons.article,
          url: 'https://fpip.umsida.ac.id/pembelajaran-mendalam-jadi-fokus-utama-ppg-46/',
        ),
        NewsItem(
          title: 'Kolaborasi Keluarga dan Transformasi Pendidikan',
          subtitle: '2025',
          icon: Icons.article,
          url: 'https://fpip.umsida.ac.id/kolaborasi-keluarga-dan-transformasi-pendidikan/',
        ),
      ],
      // --- 2. TAMBAHKAN DAFTAR PRODI ---
      programs: const [
        ProgramStudi(name: 'Psikologi'),
        ProgramStudi(name: 'Pendidikan Guru PAUD (PG-PAUD)'),
        ProgramStudi(name: 'Pendidikan Guru SD (PGSD)'),
        ProgramStudi(name: 'Pendidikan Bahasa Inggris (PBI)'),
        ProgramStudi(name: 'Pendidikan IPA'),
        ProgramStudi(name: 'Pendidikan Teknologi Informasi (PTI)'),
      ],
    ),
    const Faculty(
      id: 'FAI',
      name: 'Fakultas Agama Islam',
      shortDescription: 'Pendidikan Agama Islam (PAI), Pendidikan Bahasa Arab (PBA), Pendidikan Guru Madrasah Ibtidaiyah (PGMI), Perbankan Syariah (PBS), dan Magister Manajemen Pendidikan Agama Islam (MMPI).',
      longDescription: 'Fakultas Agama Islam (FAI) UMSIDA berfokus pada pengembangan pendidikan dan ekonomi Islam yang unggul dan inovatif, dengan tujuan menghasilkan lulusan profesional dan berkarakter baik. Fakultas ini memiliki lima program studi, dengan sebagian besar sudah terakreditasi unggul, yaitu Pendidikan Agama Islam (PAI), Pendidikan Bahasa Arab (PBA), Pendidikan Guru Madrasah Ibtidaiyah (PGMI), Perbankan Syariah (PBS), dan Magister Manajemen Pendidikan Agama Islam (MMPI). FAI UMSIDA juga aktif mendukung pengembangan bakat dan minat mahasiswa melalui program internasional dan kompetisi, seperti pertukaran pelajar ke Malaysia dan kejuaraan pencak silat, serta program Merdeka Belajar Kampus Merdeka (MBKM).',
      icon: Icons.mosque,
      imageUrl: 'assets/images/FAI.png',
      newsItems: const [
        NewsItem(
          title: 'Kongres PMMBN',
          subtitle: '2025',
          icon: Icons.article,
          url: 'https://fai.umsida.ac.id/mhs-fai-umsida-wakili-jatim-kongres-pmmbn-2025/',
        ),
        NewsItem(
          title: 'Media Pembelajaran Inovatif',
          subtitle: '2025',
          icon: Icons.article,
          url: 'https://fai.umsida.ac.id/poster-media-pembelajaran-inovatif-mhs-pai-umsida/',
        ),
        NewsItem(
          title: 'Menjalin Ukhwah dan Membangun Ikatan',
          subtitle: '2025',
          icon: Icons.article,
          url: 'https://fai.umsida.ac.id/sabar-vol-5-menjalin-ukhuwah-dan-membangun-ikatan/',
        ),
      ],
      // --- 2. TAMBAHKAN DAFTAR PRODI ---
      programs: const [
        ProgramStudi(name: 'Pendidikan Agama Islam (PAI)'),
        ProgramStudi(name: 'Pendidikan Bahasa Arab (PBA)'),
        ProgramStudi(name: 'Pendidikan Guru MI (PGMI)'),
        ProgramStudi(name: 'Magister Manajemen Pendidikan Islam (MMPI)'),
        ProgramStudi(name: 'Perbankan Syariah (PBS)'),
      ],
    ),
    const Faculty(
      id: 'FKG',
      name: 'Fakultas Kedokteran Gigi',
      shortDescription: 'Kedokteran Gigi (S1) dan Profesi Dokter Gigi.',
      longDescription: 'Fakultas Kedokteran Gigi (FKG) Universitas Muhammadiyah Sidoarjo (Umsida) merupakan fakultas baru yang berfokus mencetak dokter gigi profesional, unggul, dan inovatif berdasarkan nilai-nilai Islam. FKG Umsida memiliki dua program studi, yaitu Sarjana Kedokteran Gigi (S1) dan Profesi Dokter Gigi, dengan fokus pada pendekatan student-centered learning. Fakultas ini juga menekankan pentingnya teknologi, penelitian, dan pengabdian masyarakat, dengan keunggulan khusus pada pencegahan penyakit melalui praktik klinis dan riset, terutama di daerah pedesaan (rural).',
      icon: Icons.medical_services,
      imageUrl: 'assets/images/FKG.png',
      newsItems: const [
        NewsItem(
          title: 'Minuman Dingin Untuk Cuaca Panas Bagus ga sih?',
          subtitle: '2025',
          icon: Icons.article,
          url: 'https://fkg.umsida.ac.id/minuman-dingin-saat-cuaca-panas/',
        ),
        NewsItem(
          title: 'Kesehatan Mulut di Era Modern',
          subtitle: '2025',
          icon: Icons.article,
          url: 'https://fkg.umsida.ac.id/menjaga-kesehatan-mulut-di-era-gaya-hidup-modern/',
        ),
      ],
      // --- 2. TAMBAHKAN DAFTAR PRODI ---
      programs: const [
        ProgramStudi(name: 'Sarjana Kedokteran Gigi (S1)'),
        ProgramStudi(name: 'Profesi Dokter Gigi'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portal UMSIDA'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUniversityInfoCard(context),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Daftar Fakultas',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            ListView.builder(
              itemCount: faculties.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final faculty = faculties[index];
                return FacultyCard(faculty: faculty);
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildUniversityInfoCard(BuildContext context) {
    // 3. PERBAIKI BORDER RADIUS (lebih rapi)
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(16),
      shape: const RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          gradient: LinearGradient(
            colors: [primaryBlue.withOpacity(0.1), Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selamat Datang di UMSIDA',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: primaryBlue,
                    ),
              ),
              const SizedBox(height: 12),
              Text(
                'UMSIDA adalah Universitas Muhammadiyah Sidoarjo, sebuah perguruan tinggi swasta di Jawa Timur yang berdiri tahun 1984 dengan akreditasi "Unggul". Universitas ini memiliki 5 fakultas dengan 27 program studi dan berfokus pada pengembangan sumber daya manusia, ilmu pengetahuan, dan teknologi yang berbasis nilai Islam.',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: darkText.withOpacity(0.8),
                      height: 1.5,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}