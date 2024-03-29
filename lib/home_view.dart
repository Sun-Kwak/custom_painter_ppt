import 'dart:async';
import 'package:custom_painter/Widget/draggable_floating_button.dart';
import 'package:custom_painter/painter/button_painter.dart';
import 'package:custom_painter/painter/grid_painter.dart';
import 'package:custom_painter/painter/house_painter.dart';
import 'package:custom_painter/painter/smoke_painter.dart';
import 'package:custom_painter/painter/snowman_painter.dart';
import 'package:custom_painter/painter/speech_bubble_painter.dart';
import 'package:custom_painter/widget/quiz_container.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool isGridOverlayActive = false;

  double positionX = 0;
  double positionY = 2000;
  double positionY2 = -500;
  double screenWidth = 0;
  double screenHeight = 0;
  bool isGridPaper = false;
  bool isGrid = false;
  Color color = Colors.white;
  Color buttonColor = Colors.white;
  bool isQuizShow = false;

  double t = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    _animation = Tween<double>(begin: 0.1, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.repeat(reverse: true);

    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (t < 1.0) {
        setState(() {
          t += 0.01;
        });
      }
    });
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      screenWidth = MediaQuery.of(context).size.width;
      screenHeight = MediaQuery.of(context).size.height;

      positionX = screenWidth / 2 - 450;
      positionY = screenHeight + 500;
      positionY2 = -500;
    });
  }

  void toggleGridOverlay() {
    setState(() {
      isGridOverlayActive = !isGridOverlayActive;
    });
  }

  void showText() {
    setState(() {
      positionY = screenHeight / 2;
      positionX = screenWidth / 2 - 450;
      positionY2 = screenHeight / 2;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: DraggableFloatingActionButton(
        paintTap: () {
          toggleGridOverlay();
        },
        gridPaperTap: () {
          setState(() {
            isGridPaper = !isGridPaper;
          });
        },
        gridTap: () {
          isGrid = !isGrid;
        },
      ),
      body: Container(
        color: Colors.blueGrey,
        width: screenWidth,
        height: screenHeight,
        child: isGridPaper
            ? GridPaper(
                color: Colors.pink,
                divisions: 1,
                interval: 100,
                subdivisions: 10,
                child: _buildMain(),
              )
            : isGrid
                ? _buildGirdView(2000)
                : CustomPaint(
                    painter: isGridOverlayActive ? GridPainter() : null,
                    child: _buildMain(),
                  ),
      ),
    );
  }

  Widget _buildGirdView(int total) {
    final List<String> items = List.generate(total, (index) => 'Item $index');
    return Stack(
      children: [
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 200,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GridTile(
              child: Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.blueGrey),
              ),
            );
          },
        ),
        SizedBox(
            width: screenWidth, height: screenHeight, child: _buildMain(),),
      ],
    );
  }

  Widget _buildMain() {
    return GestureDetector(
      onPanUpdate: (details) {
        setState(() {
          positionX = details.localPosition.dx - 430;
          positionY = details.localPosition.dy - 70;
          positionY2 = details.localPosition.dy - 70;
        });
      },
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 2000),
            curve: Curves.fastEaseInToSlowEaseOut,
            left: positionX,
            top: positionY,
            child: const Text(
              'CUSTOM PAINTER',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 100,
              ),
            ),
          ),
          Positioned(
            left: screenWidth / 2 - 650,
            top: 100,
            child: CustomPaint(
              size: const Size(720, 720),
              painter: SmokePainter(animationValue: _animation.value, t: t),
            ),
          ),
          Positioned(
            left: screenWidth / 2 - 650,
            top: 100,
            child: CustomPaint(
              size: const Size(720, 720),
              painter: HouseCustomPainter(t: t),
            ),
          ),
          Positioned(
            left: screenWidth / 2 - 650,
            top: 100,
            child: CustomPaint(
              size: const Size(300, 300),
              painter: SnowmanPainter(t: t, color: color),
            ),
          ),
          isQuizShow
              ? Positioned(
                  left: screenWidth / 2 + 250,
                  top: 20,
                  child: CustomPaint(
                    size: const Size(550, 700),
                    painter: SpeechBubblePainter(),
                    child: const QuizContainer(),
                  ),
                )
              : const SizedBox(),
          AnimatedPositioned(
              duration: const Duration(milliseconds: 3000),
              curve: Curves.fastEaseInToSlowEaseOut,
              left: positionX,
              top: positionY2,
              child: Text(
                'CUSTOM PAINTER',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 100,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.white,
                ),
              )),
          Positioned(
            left: screenWidth / 2,
            top: screenHeight / 2 + 250,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (_) {
                setState(() {
                  buttonColor = Colors.amber;
                });
              },
              onExit: (_) {
                setState(() {
                  buttonColor = Colors.white;
                });
              },
              child: GestureDetector(
                onTap: () {
                  showText();
                },
                child: CustomPaint(
                    painter: ButtonPainter(color: buttonColor, t: t),
                    child: Container(
                      width: 100,
                      height: 40,
                    )),
              ),
            ),
          ),
          Positioned(
            left: screenWidth / 2 + 130,
            top: screenHeight / 2 + 65,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (_) {
                setState(() {
                  color = Colors.amber;
                });
              },
              onExit: (_) {
                color = Colors.white;
              },
              child: GestureDetector(
                onTap: () {
                  isQuizShow = !isQuizShow;
                },
                child: Container(
                  color: Colors.transparent,
                  width: 100,
                  height: 130,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
