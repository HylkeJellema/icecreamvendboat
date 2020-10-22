class timer {
  int startTime;
  int interval;

  timer(int timeInterval) {
    interval = timeInterval;
  }

  void start() {
    startTime = millis();
  }

  boolean complete() {
    int elapsedTime = millis() - startTime;
    if (elapsedTime > interval) {
      return true;
    } else {
      return false;
    }
  }
}
