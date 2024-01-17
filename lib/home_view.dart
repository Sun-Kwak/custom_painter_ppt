import 'dart:async';
import 'dart:math';
import 'dart:ui' as ui;
import 'package:custom_painter/Widget/dragDown_floating_button.dart';
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
        setState(() {}); // 애니메이션 값이 변경될 때마다 화면을 다시 그림
      });

    _controller.repeat(reverse: true); // 애니메이션을 반복하면서 reverse

    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (t < 1.0) {
        setState(() {
          t += 0.02;
        });
      }
    });
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      screenWidth = MediaQuery.of(context).size.width;
      screenHeight = MediaQuery.of(context).size.height;

      positionX = screenWidth / 2;
      positionY = screenHeight + 500;
    });
  }

  void toggleGridOverlay() {
    setState(() {
      isGridOverlayActive = !isGridOverlayActive;
    });
  }

  void fontIncrease() {
    setState(() {
      positionY = screenHeight / 2;
      positionX = screenWidth / 2 - 450;
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
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 200, // 열의 개수
            crossAxisSpacing: 0, // 열 간의 간격
            mainAxisSpacing: 0, // 행 간의 간격
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
        _buildMain(),
      ],
    );
  }

  Widget _buildMain() {
    return GestureDetector(
      onPanUpdate: (details) {
        setState(() {
          positionX = details.localPosition.dx - 430;
          positionY = details.localPosition.dy - 70;
        });
      },
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 2000),
            curve: Curves.fastEaseInToSlowEaseOut,
            left: positionX,
            top: positionY,
            child: Text(
              'CUSTOM PAINTER',
              textAlign: TextAlign.center,
              style: TextStyle(
                // fontSize: _fontSizeAnimation.value,
                color: Colors.white,
                fontSize: 100,
              ),
            ),
          ),
          Positioned(
            left: screenWidth / 2 - 650,
            top: 100,
            child: CustomPaint(
              size: Size(720, 720),
              painter: SmokePainter(animationValue: _animation.value, t: t),
            ),
          ),
          Positioned(
            left: screenWidth / 2 - 650,
            top: 100,
            child: CustomPaint(
              size: Size(720, 720),
              painter: HouseCustomPainter(t: t),
            ),
          ),
          Positioned(
            left: screenWidth / 2 - 650,
            top: 100,
            child: CustomPaint(
              size: Size(300, 300),
              painter: SnowmanPainter(t: t, color: color),
            ),
          ),
          isQuizShow
              ? Positioned(
                  left: screenWidth / 2 + 250,
                  top: 20,
                  child: CustomPaint(
                    size: Size(550, 650),
                    painter: SpeechBubblePainter(),
                    child: QuizContainer(),
                  ),
                )
              : SizedBox(),
          AnimatedPositioned(
              duration: Duration(milliseconds: 3000),
              curve: Curves.fastEaseInToSlowEaseOut,
              left: positionX,
              top: positionY,
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
          // Positioned(
          //     left: screenWidth / 2,
          //     top: screenHeight / 2 + 250,
          //     child: ElevatedButton(
          //         onPressed: () {
          //           fontIncrease();
          //         },
          //         child: Text('START'))),
          Positioned(
            left: screenWidth / 2,
            top: screenHeight / 2 + 250,
            child: CustomPaint(
                painter: ButtonPainter(color: buttonColor,t: t),
                child: Container(
                  width: 280,
                  height: 230,
                )),
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
                    fontIncrease();
                  },
                  child: Container(
                    color: Colors.transparent,
                    width: 95,
                    height: 35,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
