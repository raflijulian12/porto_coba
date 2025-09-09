import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
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
  final String? imageAsset;

  const Profile({
    Key? key,
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
    this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 40),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.blue[100],
            child: imageAsset != null && imageAsset!.isNotEmpty
                ? ClipOval(
                    child: Image.asset(
                      imageAsset!,
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  )
                : Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.grey[700],
                  ),
          ),
          const SizedBox(height: 20),
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            job,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                _infoSection(),
                const SizedBox(height: 20),
                _contactSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.info, color: Colors.blue),
              SizedBox(width: 8),
              Text(
                'Informasi Diri',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 12),
          _infoItem(Icons.home, 'Alamat', address),
          _infoItem(Icons.calendar_today, 'Tempat, Tanggal Lahir', birthPlaceDate),
          _infoItem(Icons.person, 'Jenis Kelamin', gender),
          _infoItem(Icons.flag, 'Kewarganegaraan', nationality),
          _infoItem(Icons.verified_user, 'Status', status),
        ],
      ),
    );
  }

  Widget _contactSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.info, color: Colors.blue),
              SizedBox(width: 8),
              Text(
                'Kontak',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 12),
          _infoItem(Icons.phone, 'Nomor Telepon', phone),
          _infoItem(Icons.email, 'Email', email),
          _infoItem(Icons.link, 'Link In', linkIn),
          _infoItem(Icons.code, 'Git Hub', github),
        ],
      ),
    );
  }

  Widget _infoItem(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20, color: Colors.grey[700]),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  value,
                  style: const TextStyle(fontSize: 14),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}