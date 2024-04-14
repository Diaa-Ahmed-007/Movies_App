
void main() {
  String durationToString(int minutes) {
    var d = Duration(minutes: minutes);
    List<String> parts = d.toString().split(':');
    return '${parts[0].padLeft(2, '')}h ${parts[1].padLeft(2, '')}m';
  }

  num x = 250;
  print(durationToString(x.toInt()));
}
