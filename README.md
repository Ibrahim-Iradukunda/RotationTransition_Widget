# RotationTransition Demo (Flutter)

A simple Flutter demo app that shows how the `RotationTransition` widget can be used to create a rotating loading indicator, similar to what you see in real-world mobile apps while content is loading.

---

## Demo Use Case

This app demonstrates a **rotating refresh icon**, which represents a loading or syncing state in a mobile application (for example, fetching data from a server).

The rotation animation runs continuously to visually indicate that a process is ongoing.

---

## Widget Demonstrated: RotationTransition

`RotationTransition` is a Flutter animated widget that rotates its child widget based on an animation. It is commonly used for loaders, refresh indicators, and simple visual feedback animations.

---

## Three RotationTransition Properties Demonstrated

### 1. turns

- **Type:** `Animation<double>`
- **Description:** Controls how much the widget rotates.
- **On-screen effect:**  
  A value of `1.0` represents one full 360-degree rotation. In this app, the animation runs continuously, causing the icon to rotate smoothly.

### 2. child

- **Type:** `Widget`
- **Description:** The widget that is rotated.
- **On-screen effect:**  
  The refresh icon inside the container is the child widget and is the only element that rotates on the screen.

### 3. alignment

- **Type:** `Alignment`
- **Description:** Determines the point around which the widget rotates.
- **On-screen effect:**  
  Using `Alignment.center` causes the icon to rotate around its center. Changing this value would rotate the widget around a different point.

---

## How to Run the App

1. Make sure Flutter is installed on your machine.
2. Clone this repository:

   ```bash
   git clone https://github.com/Ibrahim-Iradukunda/RotationTransition_Widget

   ```

3. `cd RotationTransition_Widget`
4. Install dependencies and run the app.

````bash
flutter pub get
flutter run

```


## Screenshot

![alt text](image-1.png)
````
