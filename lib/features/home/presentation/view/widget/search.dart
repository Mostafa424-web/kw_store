import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0xffF1F1F1),
                borderRadius: BorderRadius.circular(8)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.filter,
                  color: Color(0xffF1F1F1),
                  size: 20,
                  shadows: [Shadow(color: Colors.black, blurRadius: 8)],
                )),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 21,
              ),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: const Color(0xffF1F1F1),
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    prefixIcon: const Icon(FontAwesomeIcons.search),
                    hintText: 'بحث',
                    hintStyle: Styles.textStyle14.copyWith(
                      color: const Color(0xff000000),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
