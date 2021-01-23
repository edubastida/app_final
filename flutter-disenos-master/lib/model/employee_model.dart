import 'dart:convert';

List<Employee> employeeFromJson(String str) =>
    List<Employee>.from(json.decode(str).map((x) => Employee.fromJson(x)));

String employeeToJson(List<Employee> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Employee {
  int id;
  String imatge;
  String nom;
  String desprod;
  String distribucio;
  String genere;

  Employee({
    this.id,
    this.imatge,
    this.nom,
    this.desprod,
    this.distribucio,
    this.genere,
  });

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        id: json["id"],
        imatge: json["imatge"],
        nom: json["nom"],
        desprod: json["desprod"],
        distribucio: json["distribucio"],
        genere: json["genere"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "imatge": imatge,
        "nom": nom,
        "desprod": desprod,
        "distribucio": distribucio,
        "genere": genere,
      };
}
