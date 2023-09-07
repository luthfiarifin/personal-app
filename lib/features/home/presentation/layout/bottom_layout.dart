import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:personal_app/core/presentation/util/launch_util.dart';
import 'package:personal_app/features/home/data/model/home_bottom_response_model.dart';

class BottomLayout extends StatelessWidget {
  final HomeBottomResponseModel bottom;

  const BottomLayout({
    super.key,
    required this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Center(
        child: MarkdownBody(
          data: bottom.text,
          onTapLink: (text, href, title) => _onTapLink(href),
          styleSheet: MarkdownStyleSheet(
            textAlign: WrapAlignment.center,
          ),
        ),
      ),
    );
  }

  void _onTapLink(String? href) {
    LaunchUtil.launchWeb(href);
  }
}
