import 'package:flutter/material.dart';
import 'package:news_app/constants/url_constants.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURL(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw 'Counld not launch url';
  }
}

getNewsCard(e) {
  return Stack(children: [
    Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 12),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(12)),
        child: Column(children: [
          Image.network(e["urlToImage"] ?? PLACEHOLDER_IMAGE_URL),
          GestureDetector(
            onTap: () => _launchURL(e["url"]),
            child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  e["title"],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )),
          ),
          Text(e["description"] ?? "...")
        ]),
      ),
    ),
  ]);
}
