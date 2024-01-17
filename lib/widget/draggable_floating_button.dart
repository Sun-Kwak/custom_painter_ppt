import 'package:flutter/material.dart';

class DraggableFloatingActionButton extends StatefulWidget {
  final GestureTapCallback? paintTap;
  final GestureTapCallback? gridPaperTap;
  final GestureTapCallback? gridTap;

  const DraggableFloatingActionButton({
    required this.paintTap,
    required this.gridPaperTap,
    required this.gridTap,
    super.key});

  @override
  DraggableFloatingActionButtonState createState() =>
      DraggableFloatingActionButtonState();
}

class DraggableFloatingActionButtonState
    extends State<DraggableFloatingActionButton> with TickerProviderStateMixin {
  double _fabPositionX = 0.0;
  double _fabPositionY = 0.0;
  double fabSize = 50.0;
  bool isPanUpdating = false;
  bool isSquare = true;
  late AnimationController _controller;
  late Tween<double> _widthTween;
  bool shouldShowFab = true;
  bool fromLeft = true;

  @override
  void initState() {
    super.initState();

    // Initialize animation controller and width tween
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _widthTween = Tween<double>(begin: fabSize * 0.8, end: fabSize);

    // Set initial position after the widget is built
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _fabPositionX = 0;
      _fabPositionY = MediaQuery.of(context).size.height - fabSize;
      // setState(() {}); // Trigger rebuild after setting the initial position.
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        AnimatedPositioned(
          duration: isPanUpdating
              ? const Duration(milliseconds: 0)
              : const Duration(milliseconds: 800),
          curve: Curves.fastEaseInToSlowEaseOut,
          left: _fabPositionX,
          top: _fabPositionY,
          child: shouldShowFab
              ? buildDraggableFab()
              : buildHiddenFab(screenWidth),
        ),
      ],
    );
  }

  // Build the draggable FAB with animation
  Widget buildDraggableFab() {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {

          setState(() {
            shouldShowFab = false;
            if (_fabPositionX == 0) {
              _fabPositionX = 0 + 20;
              fromLeft = true;
            } else {
              _fabPositionX = screenWidth - 125;
              fromLeft = false;
            }
          });

      },
      onPanUpdate: (details) {
        setState(() {
          isPanUpdating = true;
          isSquare = false;
          _fabPositionY = details.globalPosition.dy;
          _fabPositionX = details.globalPosition.dx;
        });
      },
      onPanEnd: (details) {
        setState(() {
          isPanUpdating = false;
          _fabPositionX =
          _fabPositionX <= screenWidth / 2 ? 0 : screenWidth - fabSize / 2;

          // Delay setting back to square for a smoother transition
          Future.delayed(const Duration(milliseconds: 400), () {
            setState(() {
              isSquare = true;
            });
          });
        });
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            width: _widthTween.evaluate(_controller),
            height: fabSize,
            decoration: BoxDecoration(
              shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
              color: Colors.blueGrey.withOpacity(0.3),
              borderRadius: isSquare ? BorderRadius.circular(10) : null,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.chevron_left,
                  size: fabSize * 0.8 / 2,
                  color: Colors.white,
                ),
                Icon(
                  Icons.chevron_right,
                  size: fabSize * 0.8 / 2,
                  color: Colors.white,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // Build the hidden FAB when shouldShowFab is false
  Widget buildHiddenFab(double screenWidth) {
    return Container(
      height: fabSize,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.blueGrey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          fromLeft
              ? const SizedBox()
              : GestureDetector(
            onTap: () {
              setState(() {
                shouldShowFab = true;
                _fabPositionX = screenWidth - fabSize / 2;
              });
            },
            child: Icon(
              Icons.chevron_right,
              size: fabSize * 0.8 / 2,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 10,),
          GestureDetector(
              onTap: widget.paintTap,
              child: const Icon(Icons.format_paint,color: Colors.white,)),
          SizedBox(width: 10,),
          GestureDetector(
              onTap: widget.gridPaperTap,
              child: const Icon(Icons.grid_4x4,color: Colors.white,)),
          SizedBox(width: 10,),
          GestureDetector(
              onTap: widget.gridTap,
              child: const Icon(Icons.grid_on,color: Colors.white,)),
          SizedBox(width: 10,),
          fromLeft
              ? GestureDetector(
            onTap: () {
              setState(() {
                shouldShowFab = true;
                _fabPositionX = 0;
              });
            },
            child: Icon(
              Icons.chevron_left,
              size: fabSize * 0.8 / 2,
              color: Colors.white,
            ),
          )
              : const SizedBox(),
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
