import 'package:flutter/material.dart';
import '../models/faculty_model.dart';
import '../models/news_item_model.dart';
import '../models/program_studi_model.dart'; 
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
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF1E3A8A),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeroImage(context),
            _buildUniversityInfoCard(context),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Daftar Fakultas',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: const Color(0xFF1E3A8A),
                      fontWeight: FontWeight.bold,
                    ),
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

  Widget _buildHeroImage(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF1E3A8A).withOpacity(0.3),
              blurRadius: 20,
              offset: const Offset(0, 10),
              spreadRadius: 0,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/images/containerfoto.png', // Ganti dengan path gambar Anda
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              // Placeholder jika gambar tidak ditemukan
              return Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFF1E3A8A),
                      const Color(0xFF3B82F6),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.school,
                        size: 60,
                        color: Colors.white.withOpacity(0.9),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'UMSIDA',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 2,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Universitas Muhammadiyah Sidoarjo',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildUniversityInfoCard(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Colors.white,
            const Color(0xFF3B82F6).withOpacity(0.05),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF1E3A8A).withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color(0xFF3B82F6).withOpacity(0.1),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFF1E3A8A),
                          const Color(0xFF3B82F6),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF3B82F6).withOpacity(0.3),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.school,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selamat Datang di',
                          style: TextStyle(
                            fontSize: 14,
                            color: const Color(0xFF64748B),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'UMSIDA',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF1E3A8A),
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFBBF24),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFFBBF24).withOpacity(0.3),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Unggul',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 1,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFF3B82F6).withOpacity(0.1),
                      const Color(0xFF3B82F6).withOpacity(0.3),
                      const Color(0xFF3B82F6).withOpacity(0.1),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'UMSIDA adalah Universitas Muhammadiyah Sidoarjo, sebuah perguruan tinggi swasta di Jawa Timur yang berdiri tahun 1984 dengan akreditasi "Unggul". Universitas ini memiliki 5 fakultas dengan 27 program studi dan berfokus pada pengembangan sumber daya manusia, ilmu pengetahuan, dan teknologi yang berbasis nilai Islam.',
                style: TextStyle(
                  fontSize: 15,
                  color: const Color(0xFF475569),
                  height: 1.7,
                  letterSpacing: 0.2,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  _buildInfoChip(
                    icon: Icons.calendar_today,
                    label: 'Est. 1984',
                    color: const Color(0xFF3B82F6),
                  ),
                  const SizedBox(width: 12),
                  _buildInfoChip(
                    icon: Icons.apartment,
                    label: '5 Fakultas',
                    color: const Color(0xFF1E3A8A),
                  ),
                  const SizedBox(width: 12),
                  _buildInfoChip(
                    icon: Icons.menu_book,
                    label: '27 Prodi',
                    color: const Color(0xFFFBBF24),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoChip({
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: color.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 16,
            color: color,
          ),
          const SizedBox(width: 6),
          Text(
            label,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}