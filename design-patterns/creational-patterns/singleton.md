---
layout: design-patterns
title: Singleton
---

## Singleton

Singleton pattern restricts the instantiation of a class to one object.

```java
class Earth {
  private Earth() {
  }

  private static Earth instance;

  public static Earth getInstance() {
    if (instance == null) {
      instance = new Earth();
    }

    return instance;
  }
}
```

The above implementation is not thread-safe. Eager loading or double-checked locking can be used to make singleton thread-safe.

It is very hard to write tests with singleton pattern. In fact, it is not recommended to use singleton unless absolute necessary.