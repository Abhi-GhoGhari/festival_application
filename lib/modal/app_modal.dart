class Festival {
  String name;
  String image;
  List<String> quotes;

  Festival({
    required this.name,
    required this.image,
    required this.quotes,
  });

  factory Festival.fromMap(Map<String, dynamic> data) {
    return Festival(
      name: data['name'],
      image: data['image'],
      quotes: List<String>.from(data['quotes']),
    );
  }
}

class FestivalData {
  List<Festival> festivals;

  FestivalData({required this.festivals});

  factory FestivalData.fromMap(Map<String, dynamic> data) {
    List<Festival> festivals = (data['festivals'] as List)
        .map((fest) => Festival.fromMap(fest))
        .toList();

    return FestivalData(festivals: festivals);
  }
}
