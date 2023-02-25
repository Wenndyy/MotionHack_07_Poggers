// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ProfesionalModel extends Equatable {
  final String id;
  final String idCategory;
  final String name;
  final double priceCall;
  final String image;
  final String imageProfile;
  final String callDes;
  final String date;
  final String description;
  final String time;
  final String nameCategory;

  const ProfesionalModel(
      {required this.id,
      required this.name,
      required this.priceCall,
      required this.image,
      required this.idCategory,
      required this.imageProfile,
      required this.callDes,
      required this.date,
      required this.description,
      required this.time,
      required this.nameCategory});

  factory ProfesionalModel.fromJson(String id, Map<String, dynamic> json) =>
      ProfesionalModel(
        id: id,
        name: json['name'],
        image: json['image'],
        priceCall: json['priceCall'],
        callDes: json['callDes'],
        date: json['date'],
        idCategory: json['idCategory'],
        description: json['description'],
        imageProfile: json['imageProfile'],
        time: json['time'],
        nameCategory: json['nameCategory'],
      );

  @override
  List<Object?> get props => [
        id,
        name,
        priceCall,
        callDes,
        date,
        description,
        idCategory,
        image,
        imageProfile,
        time,
        nameCategory,
      ];
}
