/// If [i] == `1`, [single] will be returned. Otherwise, [multiple] will be
/// returned.
///
/// If [multiple] is `null`, then [multiple] will default to `'${single}s'`.
String pluralise(
  final int i,
  final String single, {
  final String? multiple,
}) {
  if (i == 1) {
    return single;
  } else if (multiple == null) {
    return '${single}s';
  } else {
    return multiple;
  }
}

/// Return a grammatically-correct string generated from [items].
String andList(
  final List<String> items, {
  final String andString = 'and ',
  final String separator = ', ',
}) {
  final length = items.length;
  if (length == 1) {
    return items.single;
  }
  final stringBuffer = StringBuffer();
  for (var i = 0; i < (length - 1); i++) {
    stringBuffer
      ..write(items[i])
      ..write(separator);
  }
  stringBuffer
    ..write(andString)
    ..write(items.last);
  return stringBuffer.toString();
}

/// Code copied from [https://stackoverflow.com/questions/54775097/formatting-a-duration-like-hhmmss].
String printDuration(final Duration duration) {
  if (duration == Duration.zero) {
    return '0 minutes';
  }
  final inHours = duration.inHours;
  final hours = '$inHours ${pluralise(inHours, 'hour')}';
  final inMinutes = duration.inMinutes.remainder(60).abs();
  final minutes = '$inMinutes ${pluralise(inMinutes, 'minute')}';
  final inSeconds = duration.inSeconds.remainder(60).abs();
  final seconds = '$inSeconds ${pluralise(inSeconds, 'second')}';
  return andList([
    if (inHours > 0) hours,
    if (inMinutes > 0) minutes,
    if (inSeconds > 0) seconds,
  ]);
}
