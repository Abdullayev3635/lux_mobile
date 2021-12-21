class DoktorModel {
  late String name;
  late String time;
  late String izoh;
  late String image;

  DoktorModel({required this.name, required this.time, required this.izoh, required this.image});

  DoktorModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    time = json['time'];
    izoh = json['izoh'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['time'] = this.time;
    data['izoh'] = this.izoh;
    data['image'] = this.image;
    return data;
  }
}