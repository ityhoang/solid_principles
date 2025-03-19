import 'package:flutter/material.dart';

abstract class Employee {
  final String id;
  final String name;
  final double salary;

  Employee({required this.id, required this.name, required this.salary});
  double calculateOverTime(double hours);
}

class JuniorEmployee extends Employee {
  JuniorEmployee(
      {required super.id, required super.name, required super.salary});

  @override
  double calculateOverTime(double hours) {
    return ((salary / 20) / 8) * hours;
  }
}

class SeniorEmployee extends Employee {
  SeniorEmployee(
      {required super.id, required super.name, required super.salary});

  @override
  double calculateOverTime(double hours) {
    return ((salary / 20) / 8) * (hours * 2);
  }
}

void main() {
  final junior = JuniorEmployee(id: '1', name: 'mohamed', salary: 5000);
  final senior = SeniorEmployee(id: '2', name: 'ashraf', salary: 5000);
  debugPrint('Junior overTime= ${junior.calculateOverTime(10)}  SAR');
  debugPrint('senior overTime= ${senior.calculateOverTime(10)}  SAR');
}
