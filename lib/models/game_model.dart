// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class GameModel extends Equatable {
  final String id;
  final String name;
  final double download;
  final String image;

  const GameModel({
    required this.id,
    required this.name,
    required this.download,
    required this.image,
  });

  factory GameModel.fromJson(String id, Map<String, dynamic> json) => GameModel(
        id: id,
        name: json['name'],
        image: json['image'],
        download: json['download'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'download': download,
      };

  @override
  List<Object?> get props => [
        id,
        name,
        image,
        download,
      ];
}
