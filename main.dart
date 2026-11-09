Future<void> main() async {
  print('Starting sensor monitor.');

  Future<int> pendingReading = fetchTemperature();

  print('Checking other equipment while waiting.');

  int temperature = await pendingReading;
  print('Temperature: $temperature C');

  if (temperature > 30) {
    print('Warning: temperature is too high.');
  }

  // CHANGE 3: Change the next line to:
  // await checkSensor();
  checkSensor();
}

Future<int> fetchTemperature() async {
  print('Requesting sensor reading...');
  await Future.delayed(Duration(seconds: 2));
  return 35;
}

// CHANGE 1: Change the next line to:
// Future<void> checkSensor() async {
void checkSensor() {
  // CHANGE 2: Type this delay BELOW this comment:
  // await Future.delayed(Duration(seconds: 1));

  print('Sensor check complete.');
}
