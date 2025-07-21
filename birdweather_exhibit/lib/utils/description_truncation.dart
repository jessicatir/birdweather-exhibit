/// Utility class for truncating text descriptions to a specific number of sentences
class DescriptionTruncation {
  /// Truncates a description to exactly the specified number of sentences
  ///
  /// This method handles various sentence ending patterns including:
  /// - Standard periods (.)
  /// - Exclamation marks (!)
  /// - Question marks (?)
  /// - Periods followed by quotes or parentheses
  /// - Abbreviations (tries to avoid splitting on common abbreviations)
  ///
  /// [text] - The text to truncate
  /// [maxSentences] - The maximum number of sentences to keep (default: 4)
  ///
  /// Returns the truncated text with exactly [maxSentences] sentences or fewer
  /// if the original text has fewer sentences.
  static String truncateToSentences(String text, {int maxSentences = 5}) {
    if (text.isEmpty) return text;

    // Clean up the text - remove extra whitespace and normalize
    final cleanText = text.trim().replaceAll(RegExp(r"\s+"), " ");

    if (cleanText.isEmpty) return cleanText;

    // Find sentence boundaries
    final sentences = _splitIntoSentences(cleanText);

    // If we have fewer sentences than the limit, return the original text
    if (sentences.length <= maxSentences) {
      return cleanText;
    }

    // Take only the first maxSentences sentences
    final truncatedSentences = sentences.take(maxSentences).toList();

    // Join the sentences back together
    return truncatedSentences.join(" ").trim();
  }

  /// Splits text into sentences, handling common abbreviations and edge cases
  static List<String> _splitIntoSentences(String text) {
    final sentences = <String>[];
    final buffer = StringBuffer();

    // Common abbreviations that shouldn't trigger sentence breaks
    final abbreviations = {
      "dr",
      "mr",
      "mrs",
      "ms",
      "prof",
      "vs",
      "etc",
      "inc",
      "ltd",
      "corp",
      "jr",
      "sr",
      "st",
      "ave",
      "blvd",
      "dept",
      "univ",
      "assn",
      "bros",
      "co",
      "ft",
      "in",
      "lb",
      "oz",
      "sq",
      "yd",
      "mi",
      "km",
      "cm",
      "mm",
      "kg",
      "mg",
      "ml",
      "min",
      "max",
      "avg",
      "approx",
      "est",
      "ca",
      "cf",
      "e.g",
      "i.e",
      "viz",
      "al",
      "no",
      "nos",
      "vol",
      "pp",
      "ch",
      "sec",
      "fig",
      "figs",
      "ref",
      "refs",
      "ed",
      "eds",
      "rev",
      "repr",
      "trans"
    };

    for (int i = 0; i < text.length; i++) {
      final char = text[i];
      buffer.write(char);

      // Check for sentence-ending punctuation
      if (char == "." || char == "!" || char == "?") {
        // Look ahead to see if this might be part of an abbreviation
        if (char == "." && _isLikelyAbbreviation(text, i, abbreviations)) {
          continue;
        }

        // Look ahead for closing quotes or parentheses
        int nextIndex = i + 1;
        while (nextIndex < text.length &&
            (text[nextIndex] == '"' ||
                text[nextIndex] == "'" ||
                text[nextIndex] == ")" ||
                text[nextIndex] == "]" ||
                text[nextIndex] == "}")) {
          buffer.write(text[nextIndex]);
          nextIndex++;
        }

        // Check if the next character (after any closing punctuation) starts a new sentence
        if (nextIndex < text.length &&
            (text[nextIndex] == " " ||
                text[nextIndex] == "\n" ||
                text[nextIndex] == "\t")) {
          // Skip whitespace to find the next non-whitespace character
          while (nextIndex < text.length &&
              (text[nextIndex] == " " ||
                  text[nextIndex] == "\n" ||
                  text[nextIndex] == "\t")) {
            nextIndex++;
          }

          // If the next character is uppercase or the end of text, this is likely a sentence boundary
          if (nextIndex >= text.length ||
              text[nextIndex].toUpperCase() == text[nextIndex]) {
            sentences.add(buffer.toString().trim());
            buffer.clear();
            i = nextIndex - 1; // -1 because the loop will increment
            continue;
          }
        }
      }
    }

    // Add any remaining text as the last sentence
    final remaining = buffer.toString().trim();
    if (remaining.isNotEmpty) {
      sentences.add(remaining);
    }

    return sentences;
  }

  /// Checks if a period is likely part of an abbreviation
  static bool _isLikelyAbbreviation(
      String text, int periodIndex, Set<String> abbreviations) {
    if (periodIndex == 0) return false;

    // Look backwards to find the start of the potential abbreviation
    int start = periodIndex - 1;
    while (start >= 0 &&
        text[start] != " " &&
        text[start] != "\n" &&
        text[start] != "\t") {
      start--;
    }
    start++; // Move to the first character of the word

    if (start >= periodIndex) return false;

    final word = text.substring(start, periodIndex).toLowerCase();

    // Check if it's a known abbreviation
    if (abbreviations.contains(word)) return true;

    // Check for single letter abbreviations (like "A. Smith")
    if (word.length == 1 &&
        word.codeUnitAt(0) >= 65 &&
        word.codeUnitAt(0) <= 90) {
      return true;
    }

    // Check for initials pattern (like "J.R.R.")
    if (word.length <= 3 &&
        word.split("").every((char) => char.toUpperCase() == char)) {
      return true;
    }

    return false;
  }
}
