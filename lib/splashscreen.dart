import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/components/raindrop.dart';
import 'package:socialapp/components/droppainter.dart';
import 'components/holepaint.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({this.color});

  final color;

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Size size = Size.zero;
  AnimationController _controller;
  StaggeredRaindropAnimation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );
    _animation = StaggeredRaindropAnimation(_controller);
    _controller.forward();

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void didChangeDependencies() {
    setState(() {
      size = MediaQuery.of(context).size;
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          width: double.infinity,
          height: double.infinity,
          child: CustomPaint(
              painter: HolePainter(
                  color: widget.color,
                  holeSize: _animation.holeSize.value * size.width))),
      Positioned(
          top: _animation.dropPosition.value * size.height,
          left: size.width / 2 - _animation.dropSize.value / 2,
          child: SizedBox(
              width: _animation.dropSize.value,
              height: _animation.dropSize.value,
              child: CustomPaint(
                painter: DropPainter(visible: _animation.dropVisible.value),
              ))),
      Padding(
          padding: EdgeInsets.only(bottom: 32),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Opacity(
                  opacity: _animation.textOpacity.value,
                  child: Text(
                    'BleckChat',
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ))))
    ]);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
