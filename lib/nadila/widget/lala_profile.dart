class LalaProfileData {
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

  const LalaProfileData({
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

  static const defaultProfile = LalaProfileData(
    name: 'Nadila Oktaviana Putri',
    job: 'Frontend Developer',
    address: 'Caringin, Bogor, Jawa Barat',
    birthPlaceDate: 'Bogor, 15 Oktober 2007',
    gender: 'Perempuan',
    nationality: 'Indonesia',
    status: 'Belum Menikah',
    phone: '+62 81585819152',
    email: 'nadilaoktaviana855@gmail.com',
    linkIn: 'Nadila Oktaviana Putri',
    github: 'NadilaOktviana',
    imageAsset: 'assets/images/lala.png',
  );
}