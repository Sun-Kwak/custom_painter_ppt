import 'dart:math';
import 'package:custom_painter/model/person_model.dart';
import 'package:custom_painter/painter/border_custom_painter.dart';
import 'package:custom_painter/provider/person_provider.dart';
import 'package:custom_painter/widget/text_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:collection/collection.dart';

class DragDownFloatingActionButton extends ConsumerStatefulWidget {
  const DragDownFloatingActionButton({super.key});

  @override
  ConsumerState<DragDownFloatingActionButton> createState() =>
      DragDownFloatingActionButtonState();
}

class DragDownFloatingActionButtonState
    extends ConsumerState<DragDownFloatingActionButton>
    with TickerProviderStateMixin {
  TextEditingController nameController = TextEditingController();
  Person updatingPerson = Person.empty();
  final double _fabPositionX = 50;
  double _fabPositionY = -965;
  double fabSize = 200.0;
  bool isPanUpdating = false;
  bool isSquare = true;
  late AnimationController _controller;
  bool shouldShowFab = true;
  bool fromLeft = true;
  bool isSelected = false;
  String randomPersonName = '';

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    final personList = ref.watch(personProvider);
    List<String> rightAnswerList = personList
        .where((person) => person.answer == '7')
        .map((person) => person.name)
        .toList();
    String namesSeparatedByCommas = rightAnswerList.join(', ');
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Icon(
            Icons.info_outline,
            color: Colors.amber,
            size: 50,
          ),
          content: SizedBox(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '정답! 7',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 20),
                ),
                Text(
                  '정답자 : $namesSeparatedByCommas',
                  style: const TextStyle(color: Colors.blueGrey, fontSize: 12),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                '랜덤',
                style: TextStyle(color: Colors.blueGrey),
              ),
              onPressed: () {
                Random random = Random();
                int randomIndex = random.nextInt(rightAnswerList.length);
                setState(() {
                  randomPersonName = rightAnswerList[randomIndex];
                  Navigator.of(context).pop();
                  _showFinalDialog(context);
                });
              },
            ),
            TextButton(
              child: const Text(
                '취소',
                style: TextStyle(color: Colors.redAccent),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showFinalDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Icon(
              Icons.info_outline,
              color: Colors.amber,
              size: 50,
            ),
            content: SizedBox(
              height: 100,
              child: Center(
                child: Text('당첨자 : $randomPersonName',
                    style: const TextStyle(color: Colors.blueGrey, fontSize: 20)),
              ),
            ),
            actions: [
              TextButton(
                child: const Text(
                  '취소',
                  style: TextStyle(color: Colors.redAccent),
                ),
                onPressed: () {
                  Navigator.of(context).pop(); // 다이얼로그 닫기
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onPanUpdate: (details) {
        setState(() {
          isPanUpdating = true;
          _fabPositionY = details.localPosition.dy-1000;
        });
      },
      onPanEnd: (details) {
        setState(() {
          isPanUpdating = false;
          _fabPositionY =
          _fabPositionY <= screenHeight / 5 -800 ? -965 : -45;
        });
      },
      child: Stack(
        children: [
          AnimatedPositioned(
              duration: isPanUpdating
                  ? const Duration(milliseconds: 0)
                  : const Duration(milliseconds: 800),
              curve: Curves.fastEaseInToSlowEaseOut,
              left: _fabPositionX,
              top: _fabPositionY,
              child: buildDraggableFab()),
        ],
      ),
    );
  }

  Widget buildDraggableFab() {
    final personController = ref.watch(personProvider.notifier);
    final List<Person> personList = ref.watch(personProvider);
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white.withOpacity(0.2)),
            color: Colors.transparent,
          ),
          width: 300,
          height: 1000,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Container(
                  color: Colors.white.withOpacity(0.5),
                  width: 300,
                  height: 960,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          CustomPaint(
                            painter: BorderCustomPainter(),
                            child: SizedBox(
                              width: 200,
                              height: 50,
                              child: TextFormField(
                                controller: nameController,
                                onChanged: (v) {
                                  updatingPerson =
                                      updatingPerson.copyWith(name: v);
                                },
                                cursorColor: Colors.blueGrey,
                                autofocus: true,
                                style: const TextStyle(color: Colors.blueGrey),
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(5),
                                ),
                              ),
                            ),
                          ),
                          Tooltip(
                            message: '추가',
                            child: IconButton(
                              onPressed: () {
                                if (updatingPerson.name != '') {
                                  personController.savePerson(updatingPerson);
                                }
                                nameController.text = '';
                              },
                              icon: Icon(
                                Icons.add,
                                size: 35,
                                color: Colors.blueGrey.withOpacity(0.8),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextDivider(
                          text: '명단',
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        height: 400,
                        child: ListView.builder(
                          itemCount: personList.length,
                          itemBuilder: (context, index) {
                            return buildTextFormField(
                                context, personList[index]);
                          },
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextDivider(
                          text: '요약',
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        height: 250,
                        child: buildAnswerGroupText(),
                      ),

                      Center(
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isSelected = true;
                                _showConfirmationDialog(context);
                              });
                            },
                            child: const Text('정답')),
                      )
                    ],
                  ),
                ),
              ),
              Text(
                '참석자',
                style: TextStyle(color: Colors.white.withOpacity(0.5)),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildAnswerGroupText() {
    final personList = ref.watch(personProvider);
    var answerGroup = groupBy<Person, String>(personList, (e) => e.answer);

    List<Widget> textWidgets = answerGroup.entries.map((entry) {
      String answer = entry.key;
      List<String> names = entry.value.map((person) => person.name).toList();
      String namesString = names.join(', ');

      return Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              border: Border.all(
                  color: isSelected == true && answer == '3'
                      ? Colors.red
                      : Colors.transparent)),
          child: Text(
            '$answer: $namesString',
            style: TextStyle(color: Colors.blueGrey.withOpacity(0.8)),
          ));
    }).toList();

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: textWidgets,
        ),
      ),
    );
  }

  Widget buildTextFormField(BuildContext context, Person person) {
    var baseBorder = OutlineInputBorder(
        borderSide: BorderSide(
      color: Colors.blueGrey.withOpacity(0.8),
      width: 1.0,
    ));
    final personList = ref.watch(personProvider);
    Person updatingPerson = person;
    final personController = ref.watch(personProvider.notifier);

    return SizedBox(
      width: 300,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                personController.deletePerson(person.name);
              },
              icon: Icon(
                Icons.clear,
                color: Colors.blueGrey.withOpacity(0.8),
              )),
          SizedBox(
              width: 80,
              height: 50,
              child: Center(
                  child: Text(
                person.name,
                style: TextStyle(color: Colors.blueGrey.withOpacity(0.8)),
              ))),
          SizedBox(
            width: 80,
            height: 50,
            child: TextFormField(
              style: TextStyle(color: Colors.blueGrey.withOpacity(0.8)),
              onChanged: (value) {
                updatingPerson = updatingPerson.copyWith(answer: value);
              },
              initialValue: person.answer.toString(),
              decoration: InputDecoration(
                border: baseBorder,
              ),
            ),
          ),
          IconButton(
              onPressed: () {
                personController.updatePerson(updatingPerson);
              },
              icon: Icon(
                Icons.edit,
                color: Colors.blueGrey.withOpacity(0.8),
              )),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
