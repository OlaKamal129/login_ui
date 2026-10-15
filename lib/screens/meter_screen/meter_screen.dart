import 'package:flutter/material.dart';
import 'package:inst_meters/screens/MeterRegistrationScreen/MeterRegistrationScreen.dart';
import 'package:inst_meters/theme/app_colors.dart';
import 'package:inst_meters/widgets/drawer_widget.dart';

class MetersScreen extends StatelessWidget {
  const MetersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          
          backgroundColor: Colors.white,
         
          centerTitle: true,
          title: const Text(
            'عداداتي',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          leading: Builder(
      builder: (context) => IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    ),
        ),
           drawer: DrawerWidget(),
        
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ===== Header =====
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 28,
                      backgroundColor: Color(0xFF2196F3),
                      child: Icon(Icons.person, color: Colors.white, size: 32),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'مرحباً، أحمد محمود',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'مكتب هندسة مدينة نصر',
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                          Text(
                            'قطاع شرق القاهرة',
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // ===== Status Badge =====
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE3F2FD),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.access_time, size: 16, color: Color(0xFF1976D2)),
                      SizedBox(width: 6),
                      Text(
                        'بانتظار التسجيل',
                        style: TextStyle(
                          color: Color(0xFF1976D2),
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                // ===== Remaining Meters =====
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE3F2FD),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.info_outline, color: Color(0xFF1976D2), size: 20),
                      SizedBox(width: 8),
                      Text(
                        '٣ عدادات متبقية',
                        style: TextStyle(
                          color: Color(0xFF1976D2),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // ===== Meter Cards =====
                _buildMeterCard(
                  context: context,
                  title: 'شقة ٣ - مبنى ١٣',
                  address: 'مدينة نصر، القاهرة - خلف مسجد النور',
                  meterNumber: '4582176',
                  type: 'عداد كهرباء - تركيب جديد',
                  date: 'تكليف ٣٠/١٠',
                ),
                const SizedBox(height: 12),
                _buildMeterCard(
                  context: context,
                  title: 'شقة ٥ - مبنى ١٨',
                  address: 'مدينة نصر، القاهرة - شارع النزهة',
                  meterNumber: '4582176',
                  type: 'عداد كهرباء - تركيب جديد',
                  date: 'تكليف ٣٠/١٠',
                ),
                const SizedBox(height: 12),
                _buildMeterCard(
                  context: context,
                  title: 'محل ٢ - مبنى ٧',
                  address: 'مدينة نصر، القاهرة - شارع التسعين',
                  meterNumber: '4582176',
                  type: 'عداد كهرباء - تركيب جديد',
                  date: 'تكليف ٣٠/١٠',
                ),

                const SizedBox(height: 24),

                // ===== Footer Note =====
                Center(
                  child: Text(
                    'تظهر هنا العدادات المكلف بها والغير المسجلة فقط.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMeterCard({
    required BuildContext context,
    required String title,
    required String address,
    required String meterNumber,
    required String type,
    required String date,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header of card
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade600,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.access_time, size: 14, color: Colors.orange.shade700),
                  const SizedBox(width: 4),
                  Text(
                    'غير مسجل',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.orange.shade700,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 10),

          // Title
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 4),

          // Address
          Text(
            address,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey.shade600,
            ),
          ),

          const SizedBox(height: 10),

          // Meter Number
          Text(
            meterNumber,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              letterSpacing: 1.2,
            ),
          ),

          const SizedBox(height: 4),

          // Type
          Text(
            type,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey.shade700,
            ),
          ),

          const SizedBox(height: 14),

          // Button
          SizedBox(
            width: double.infinity,
            height: 44,
            child: ElevatedButton(
 onPressed: () => _goToRegistration(context),
  style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFFFFB74D),
    foregroundColor: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  child: const Text(
    'تسجيل العداد',
    style: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
  ),
),
          ),
        ],
      ),
    );



    
  }

  void _goToRegistration(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const MeterRegistrationScreen(),
    ),
  );
}
}