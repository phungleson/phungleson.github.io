---
layout: design-patterns
title: Adapter
---

## Adapter

Adapter translates one interface for a class into a compatible interface.

```java
// Adaptee
class OldSytem {
  public void run(OldData oldData) {
  }
}

class Adapter {
  public void run(NewData newData) {
    // convert new data to old data
    oldSystem.run(oldData);
  }
}
```