import 'dart:convert';

import 'package:custom_painter/model/person_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersonRepository {
  final String _key = 'persons';

  Future<List<Person>> getPersons() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? personsJson = prefs.getString(_key);

    if (personsJson != null) {
      List<dynamic> decoded = json.decode(personsJson);
      return decoded.map((e) => Person.fromJson(e)).toList();
    } else {
      return [];
    }
  }

  Future<void> savePerson(Person person) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<Person> persons = await getPersons();

    persons.add(person);
    String personsJson = json.encode(persons.map((e) => e.toJson()).toList());

    await prefs.setString(_key, personsJson);
  }

  Future<void> updatePerson(Person updatedPerson) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<Person> persons = await getPersons();

    int index = persons.indexWhere((person) => person.name == updatedPerson.name);

    if (index != -1) {
      persons[index] = updatedPerson;
      String personsJson = json.encode(persons.map((e) => e.toJson()).toList());

      await prefs.setString(_key, personsJson);
    }
  }

  Future<void> deletePerson(String personName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<Person> persons = await getPersons();

    persons.removeWhere((person) => person.name == personName);
    String personsJson = json.encode(persons.map((e) => e.toJson()).toList());

    await prefs.setString(_key, personsJson);
  }
}