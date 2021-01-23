import 'package:api_to_sqlite_flutter/src/models/employee_model.dart';
import 'package:api_to_sqlite_flutter/src/providers/db_provider.dart';
import 'package:dio/dio.dart';

class EmployeeApiProvider {
  Future<List<Employee>> getAllEmployees() async {
    var url = "https://demo9554586.mockable.io/layton";
    Response response = await Dio().get(url);

    return (response.data as List).map((layton) {
      print('Inserting $layton');
      DBProvider.db.createEmployee(Employee.fromJson(layton));
    }).toList();
  }
}
