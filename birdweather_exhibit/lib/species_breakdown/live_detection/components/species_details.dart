import "package:auto_size_text/auto_size_text.dart";
import "package:flutter/material.dart";

class SpeciesDetails extends StatelessWidget {
  const SpeciesDetails({
    required this.wikipediaSummary,
    super.key,
  });

  final String wikipediaSummary;

  String shortenSummary(String paragraph) {
    // Remove information in parenthesis and ensure 1 whitespace remains
    final removedParentheses = paragraph
        .replaceAll(RegExp(r"\(.*?\)"), "")
        .replaceAll(RegExp(r"\s+"), " ");
    final sentences = removedParentheses.split(". ");

    String result = "";
    int currentLength = 0;

    for (String sentence in sentences) {
      final trimmedSentence = sentence.trim();
      final sentenceLength = sentence.length;

      if (currentLength + sentenceLength + 1 <= 300) {
        result += "$trimmedSentence. ";
        currentLength += sentenceLength + 1;
      } else {
        if (result.isEmpty) {
          result = "$trimmedSentence. ";
        }
        break;
      }
    }

    return result.trim();
  }

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      shortenSummary(wikipediaSummary),
      minFontSize: 12,
      style: const TextStyle(
        fontSize: 24.0,
      ),
      maxLines: 3,
      //overflow: TextOverflow.ellipsis,
    );
  }
}
