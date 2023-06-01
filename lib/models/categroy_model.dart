class CategroyDataModel {
  final String imagePath;
  final String desc;
  final String text;
  // final void Function()? ontap;
  // final List modelData;
  CategroyDataModel({
    required this.imagePath,
    required this.desc,
    required this.text,
    // required this.modelData,
    // this.ontap,
  });

  static List<CategroyDataModel> data = [
    CategroyDataModel(
      imagePath: 'assets/campingIcon.png',
      desc:
          "Discover nature's embrace, ignite campfires, and create lasting memories in the serene beauty of camping.",
      text: "Camping",
    ),
    CategroyDataModel(
      imagePath: 'assets/hikingIcon.png',
      desc:
          "Embark on exhilarating trails, conquer breathtaking peaks, and immerse yourself in the awe-inspiring wonders of hiking adventures.",
      text: "Hiking",
    ),
    CategroyDataModel(
      imagePath: 'assets/lakesIcon.png',
      desc:
          "Indulge in serenity as you explore the pristine beauty of alpine lakes, where tranquility and breathtaking vistas harmoniously unite.",
      text: "Alpine Lakes",
    ),
    CategroyDataModel(
      imagePath: 'assets/mountainIcon.png',
      desc:
          "Challenge your limits, conquer towering summits, and unveil the extraordinary world of mountaineering, where triumph and awe await.",
      text: "Mountaineering",
    ),
    CategroyDataModel(
      imagePath: 'assets/peeks.png',
      desc:
          "Challenge your limits, conquer towering summits, and unveil the extraordinary world of mountain peeks, where triumph and awe await.",
      text: "Mountain Peaks",
    ),
  ];
}
