import 'package:flutter/material.dart';

class IconHome extends StatelessWidget {
  const IconHome({ super.key });

  @override
  Widget build(BuildContext context){
    List<CustomIcon> customIcons = [
      CustomIcon(icon: "assets/icons/booking.png", name: "Buat\nReservasi"),
      CustomIcon(icon: "assets/icons/hospital-building.png", name: "Informasi\nRumah Sakit"),
      CustomIcon(icon: "assets/icons/ambulance.png", name: "IGD"),
      CustomIcon(icon: "assets/icons/flask.png", name: "Hasil Lab\n dan Radiologi"),
      CustomIcon(icon: "assets/icons/medical-report.png", name: "Medical\nCheck-Up"),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20), // Ubah nilai padding sesuai kebutuhan
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(customIcons.length, (index){
          return Column(
            children: [
              Container(
                width: 65,
                height: 65,
                padding: const EdgeInsets.all(12.0), 
                child: Image.asset(customIcons[index].icon),
              ),
              const SizedBox(height: 6),
              Text(
                customIcons[index].name, 
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}

class CustomIcon {
  final String icon;
  final String name;
  CustomIcon({
    required this.icon,
    required this.name,
  }); 
}
