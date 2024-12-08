import 'package:appalah/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _TugState();
}

class _TugState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Dana'),
        backgroundColor: Colors.blue[800], // Set app bar color
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section 1: Top buttons (Pindai, Isi Saldo, Kirim, Minta)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  topIconButton('Pindai', Icons.qr_code),
                  topIconButton('Isi Saldo', Icons.add_circle_outline),
                  topIconButton('Kirim', Icons.send),
                  topIconButton('Minta', Icons.request_page),
                ],
              ),
            ),

            // Section 2: Informational Card (like "Tipu Online")
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tipu Online',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[800],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '#AwasJebakanBADMAN',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),

            // Section 3: Grid of icons (Google Play Store, A+ Rewards, etc.)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4, // 4 items per row
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                physics: const NeverScrollableScrollPhysics(), // Disable scrolling for grid
                children: [
                  appIconButton('Google Play Store', Icons.shop),
                  appIconButton('A+ Rewards', Icons.redeem),
                  appIconButton('Hemat s.d\nRp60RB', Icons.local_offer),
                  appIconButton('DANA Deals', Icons.local_activity),
                  appIconButton('Pulsa & Data', Icons.phone_android),
                  appIconButton('Listrik', Icons.electrical_services),
                  appIconButton('Reksa Dana', Icons.account_balance),
                  appIconButton('Lihat Semua', Icons.more_horiz),
                ],
              ),
            ),

            // Section 4: DANA Protection Section
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue[100]!),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DANA Protection',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.shield, color: Colors.green, size: 30),
                      Text('Aktivitas Terlindungi'),
                      Text('0'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.dangerous, color: Colors.red, size: 30),
                      Text('Aktivitas Mencurigakan'),
                      Text('0'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.recommend, color: Colors.orange, size: 30),
                      Text('Rekomendasi Keamanan'),
                      Text('2'),
                    ],
                  ),
                ],
              ),
            ),

            // Section 5: DANA Deals
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DANA Deals',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800],
                    ),
                  ),
                  const SizedBox(height: 10),
                  dealItem('Paket Voucher Rp 10.000', 'Belanja Online', 1),
                  const SizedBox(height: 10),
                  dealItem('Paket Voucher Rp 8.000', 'Belanja Online', 0.8),
                ],
              ),
            ),

            // Section 6: Latest News
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Terbaru Untukmu',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                  child: latestNewsItem(
                      '#AwasJebakanBADMAN', 'Modus Penipuan Link Daget Palsu'),),
                  Container(    
                  child: latestNewsItem('BARU: DANA di Tokopedia',
                      'Serbu! Pakai Kode DANABARU'),),
                      Container(
                  child: latestNewsItem(
                      'STOP JUDI ONLINE', 'Untung Sesaat, Sesat Kemudian'),)
                ],
              ),
            ),

            // Footer
            const Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  'DANA juga terdaftar dan diawasi oleh\nBank Indonesia dan Kominfo',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(0),
    );
  }

  // Function to create the top buttons (Pindai, Isi Saldo, etc.)
  Widget topIconButton(String label, IconData icon) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.blue[800]),
        const SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(fontSize: 12, color: Colors.blue[800]),
        ),
      ],
    );
  }

  // Function to create each app icon in the grid
  Widget appIconButton(String label, IconData icon) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, size: 30, color: Colors.blue[800]),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  // Function to create each deal item
  Widget dealItem(String title, String subtitle, double price) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blue[100]!),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Text(
            'Rp${price * 10000}',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.red[800],
            ),
          ),
        ],
      ),
    );
  }

  // Function to create each latest news item
  Widget latestNewsItem(String title, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.blue[800],
          ),
        ),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
