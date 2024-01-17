import 'package:custom_painter/model/person_model.dart';
import 'package:custom_painter/repository/person_repository.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PersonNotifier extends StateNotifier<List<Person>> {
  final PersonRepository _personRepository = PersonRepository();

  PersonNotifier() : super([]);

  Future<void> loadPersons() async {
    state = await _personRepository.getPersons();
  }

  Future<void> savePerson(Person person) async {
    await _personRepository.savePerson(person);
    await loadPersons();
  }

  Future<void> updatePerson(Person updatedPerson) async {
    await _personRepository.updatePerson(updatedPerson);
    await loadPersons();
  }

  Future<void> deletePerson(String personName) async {
    await _personRepository.deletePerson(personName);
    await loadPersons();
  }
}

final personProvider = StateNotifierProvider<PersonNotifier, List<Person>>(
      (ref) => PersonNotifier(),
);