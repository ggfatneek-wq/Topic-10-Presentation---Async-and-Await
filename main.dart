Future<void> main() async {
  print('Starting sensor monitor.');

  Future<int> pendingReading = fetchTemperature();

  print('Checking other equipment while waiting.');

  int temperature = await pendingReading;
  print('Temperature: $temperature C');

  if (temperature > 30) {
    print('Warning: temperature is too high.');
  }

  checkSensor();
}

Future<int> fetchTemperature() async {
  print('Requesting sensor reading...');
  await Future.delayed(Duration(seconds: 2));
  return 35;
}

void checkSensor() {
  print('Sensor check complete.');
}
