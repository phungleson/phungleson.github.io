---
layout: design-patterns
title: Facade
---

## Facade

Facade provides a unified interface to a set of interfaces in a subsystem. Facade defines a higher-level interface that makes the subsystem easier to use.

```java
class Heater {
  public void turnOn() {
  }
}

class iPod {
  public void play() {
  }
}

class Light {
  public void turnOn() {
  }
}

// Facade
class House {
  public welcomeOwner() {
    heater.turnOn();
    ipod.play();
    light.turnOn();
  }
}
```