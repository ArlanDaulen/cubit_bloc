import 'package:cubit_bloc/features/home/domain/entities/genres.dart';

class GenresModel extends Genres {
  GenresModel({
    required int id,
    required String name,
  }) : super(
          id: id,
          name: name,
        );

  GenresModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
