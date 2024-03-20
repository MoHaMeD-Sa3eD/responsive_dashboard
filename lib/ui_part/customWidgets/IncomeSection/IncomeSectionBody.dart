import 'package:flutter/material.dart';

import 'DetailedIncomeSectionBody.dart';
import 'MiniIncomeSectionBody.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return width >= 1200 && width < 1750
        ? const MiniIncomeSectionBody()
        : const DetailedIncomeSectionBody();
  }
}
