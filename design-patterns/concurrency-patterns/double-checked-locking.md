---
layout: design-patterns
title: Double-checked locking
---

## Double-checked locking

Double-checked locking pattern reduces the over-head of acquiring a lock. It is very common in singleton pattern.

```java
class Sun {
  private Sun() {
  }

  private static volatile Sun instance;

  public static Sun getInstance() {
    if (instance == null) {
      synchronized(this) {
        if (instance == null) {
          instance = new Sun();
        }
      }
    }

    return instance;
  }
}
```