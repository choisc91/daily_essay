import 'dart:io';

import 'package:daily_essay/domain/model/essay.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EssayItem extends StatelessWidget {
  final Essay item;

  final Function? onDelete;

  const EssayItem({
    Key? key,
    required this.item,
    required this.onDelete,
  }) : super(key: key);

  // todo 삭제 기능.

  @override
  Widget build(BuildContext context) {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(item.timestamp);
    final format = DateFormat('yyyy. MM. dd. hh:mm a').format(dateTime);
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          decoration: (item.path.isNotEmpty)
              ? BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.4), BlendMode.dstATop),
                    image: FileImage(
                      File(item.path),
                    ),
                  ),
                )
              : null,
          child: Text(
            item.essay,
            textAlign: TextAlign.center,
            maxLines: null,
            style: const TextStyle(
              height: 2.0,
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: 32.0,
          right: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                format,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 2.0),
              IconButton(
                onPressed: () => onDelete?.call(),
                icon: const Icon(Icons.delete, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
