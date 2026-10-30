import '../models/note_model.dart';

/// Data awal (dummy data) untuk aplikasi CatatanKu
List<NoteModel> getInitialNotes() {
  return [
    NoteModel(
      id: '1',
      title: 'Refleksi Mingguan: Fokus dan Prioritas Baru',
      content:
          'alhamdulillah usaha ku di minggu ini membuahkan hasil meskipun sedikit dan itu berat',
      date: DateTime.now().subtract(const Duration(hours: 2, minutes: 30)),
      category: 'Refleksi',
      mood: '🌿 Tenang',
      isFavorite: true,
    ),
    NoteModel(
      id: '2',
      title: 'tugas praktikum',
      content:
          'kerjain tugas praktikum kbd 7, implementasi aplikasi,praktikum imk munggu 7',
      date: DateTime.now().subtract(const Duration(days: 1, hours: 3)),
      category: 'Pekerjaan',
      mood: '⚡ Semangat',
      isFavorite: false,
    ),
    NoteModel(
      id: '3',
      title: 'Resep buat telur kuah',
      content:
          'telur 2 biji, masako rasa ayam, air secukupnya, masukkan tomat, ketumbar bubuk, ladaku merica bubuk',
      date: DateTime.now().subtract(const Duration(days: 2, hours: 4)),
      category: 'Harian',
      mood: '😊 Senang',
      isFavorite: true,
    ),
    NoteModel(
      id: '4',
      title: 'Konsep UI/UX di ig',
      content:
          'mencoba beberapa ide yang sudah di temukan di instagram tadi',
      date: DateTime.now().subtract(const Duration(days: 3, hours: 6)),
      category: 'Ide Kreatif',
      mood: '💡 Terinspirasi',
      isFavorite: false,
    ),
    NoteModel(
      id: '5',
      title: 'Target Olahraga & Rutinitas Sehat Bulan Ini',
      content:
          'mencoba lari sedang dengan jarak tempuh 3 kilo dan tidak ada berhenti ketika berlari',
      date: DateTime.now().subtract(const Duration(days: 4, hours: 9)),
      category: 'Pribadi',
      mood: '💪 Bugar',
      isFavorite: false,
    ),
  ];
}
