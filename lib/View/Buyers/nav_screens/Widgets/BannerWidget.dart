import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget {
  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  /////.....list for n=banner images.....////
  final List bannerImages = [];

  /////......get banner image function...../////
  getBanners() {
    return firestore
        .collection("Banners")
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        return setState(() {
          bannerImages.add(doc['images']);
        });
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getBanners();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          height: 140,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.yellow.shade900,
              borderRadius: BorderRadius.circular(10)),
          child: PageView.builder(
              itemCount: bannerImages.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    bannerImages[index],
                    fit: BoxFit.cover,
                  ),
                );
              })),
    );
  }
}
