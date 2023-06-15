import 'package:flutter/material.dart';
import 'package:rido_biko/core/utilize/font_size.dart';

import '../../data/models/page_model.dart';

class PageTemplate extends StatelessWidget {
  const PageTemplate({Key? key, required this.page}) : super(key: key);

  final PageModel page;

  @override
  Widget build(BuildContext context) {
    return Container(
      // custom gradient
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.black.withOpacity(0.4),
          Colors.black.withOpacity(0.8),
        ],
      )),
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              page.image,
              height: constraints.maxHeight * 0.5,
            ),
            const SizedBox(height: 50),
            Text(
              page.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: AppFontSize.extraBig,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                page.desc,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: AppFontSize.medium,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
