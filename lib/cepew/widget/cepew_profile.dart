class CepewProfileData {
  final String name;
  final String job;
  final String address;
  final String birthPlaceDate;
  final String gender;
  final String nationality;
  final String status;
  final String phone;
  final String email;
  final String linkIn;
  final String github;
  final String imageAsset;

  const CepewProfileData({
    required this.name,
    required this.job,
    required this.address,
    required this.birthPlaceDate,
    required this.gender,
    required this.nationality,
    required this.status,
    required this.phone,
    required this.email,
    required this.linkIn,
    required this.github,
    required this.imageAsset,
  });

  static const defaultProfile = CepewProfileData(
    name: 'Muhamad Rafli Julian',
    job: 'Android Developer',
    address: 'Kabupaten Bogor, Jalan Cisarua Puncak, Cisarua',
    birthPlaceDate: 'Bogor, 28 Juli 2007',
    gender: 'Laki-laki',
    nationality: 'Indonesia',
    status: 'Belum Menikah',
    phone: '+62 83150833693',
    email: 'raflijulian356@gmail.com',
    linkIn: 'Muhamad Rafli julian',
    github: 'raflijulian12',
    imageAsset: 'assets/cepew/cepew2.png',
  );
}