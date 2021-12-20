String say(String from, [String msg = 'hi']) {
  var result = '$from says $msg';
  return result;
}

void main(List<String> args) {
  print(say('Toby'));
  print(say('Toby', 'bye'));
}
