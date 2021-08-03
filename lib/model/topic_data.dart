class TopicData {
  Map _topics = {
    "title": [
      "Prayer",
      "Dua",
      "Knowledge",
      "Tasbih",
      "Quran",
      "Hadith",
    ],
    "image": [
      "images/icon_dua.png",
      "images/icon_prayer.png",
      "images/icon_iqra.png",
      "images/icon_tasbih.png",
      "images/icon_quran.png",
      "images/icon_stack_book.png"
    ]
  };

  String getTopicTitle(int index) {
    return _topics["title"][index];
  }

  String getImageLink(int index) {
    return _topics["image"][index];
  }
}
