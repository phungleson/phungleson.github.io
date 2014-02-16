---
layout: design-patterns
title: Decorator
---

## Decorator

Decorators attach additional responsibilities to an object dynamically. They provide a flexible alternative to subclassing for extending functionality.

```java
abstract class Car {
  public abstract String getName();
}

class ToyotaCar extends Car  {
  public String getName() {
    return "Toyota"
  }
}

class abstract CarDecorator extends Car  {
  private Car car;

  public CarDecorator(Car car) {
    this.car = car;
  }

  public abstract String getName();
}

class GPS extends CarDecorator {
  public GPS(Car car) {
    super(car);
  }

  public String getName() {
    return car.getName() + " with GPS";
  }
}

class Subwoofer extends CarDecorator {
  public Subwoofer(Car car) {
    super(car);
  }

  public String getName() {
    return car.getName() + " with subwoofer";
  }
}
```

```java
Car car = new ToyotaCar();

Car carWithGPS = new GPS(car);
Car carWithGPSAndSubwoofer = new Subwoofer(carWithGPS);
Car carWithGPSAndDoubleSubwoofer = new Subwoofer(carWithGPSAndSubwoofer);
```