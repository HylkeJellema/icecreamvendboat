class timer {
  int startTime;
  int interval;

  //let interval be decided globally
  timer(int timeInterval) {
    interval = timeInterval;
  }

  //start counting time
  void start() {
    startTime = millis();
  }

  //check whether time is completed
  boolean complete() {
    int elapsedTime = millis() - startTime;
    if (elapsedTime > interval) {
      return true;
    } else {
      return false;
    }
  }
}
