import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assets App'),
      ),
      body: Column(
        children: [
          Image.network(
  String src, {
  super.key,
  double scale = 1.0,
  this.frameBuilder,
  this.loadingBuilder,
  this.errorBuilder,
  this.semanticLabel,
  this.excludeFromSemantics = false,
  this.width,
  this.height,
  this.color,
  this.opacity,
  this.colorBlendMode,
  this.fit,
  this.alignment = Alignment.center,
  this.repeat = ImageRepeat.noRepeat,
  this.centerSlice,
  this.matchTextDirection = false,
  this.gaplessPlayback = false,
  this.filterQuality = FilterQuality.low,
  this.isAntiAlias = false,
  Map<String, String>? headers,
  int? cacheWidth,
  int? cacheHeight,
}) : image = ResizeImage.resizeIfNeeded(cacheWidth, cacheHeight, NetworkImage(src, scale: scale, headers: headers)),
     assert(alignment != null),
     assert(repeat != null),
     assert(matchTextDirection != null),
     assert(cacheWidth == null || cacheWidth > 0),
     assert(cacheHeight == null || cacheHeight > 0),
     assert(isAntiAlias != null);],
      ),
    );
  }
}
