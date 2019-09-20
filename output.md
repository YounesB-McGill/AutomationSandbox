# Code Style Report
**There are 37 code style issues in your submission.**



```java
import java.text.DecimalFormat;

//static import to avoid duplicating variables and make the code easier to read
import static ca.mcgill.ecse211.lab2.Resources.*;

/**
```

Display.java:6: Import statement for 'ca.mcgill.ecse211.lab2.Resources.*' is in the wrong order. Should be in the 'STATIC' group, expecting not assigned imports on this line. [CustomImportOrder]


___

```java
import java.text.DecimalFormat;

//static import to avoid duplicating variables and make the code easier to read
import static ca.mcgill.ecse211.lab2.Resources.*;

/**
```

Display.java:6: Using the '.*' form of import should be avoided - ca.mcgill.ecse211.lab2.Resources.*. [AvoidStarImport]


___

```java
//static import to avoid duplicating variables and make the code easier to read
import static ca.mcgill.ecse211.lab2.Resources.*;

/**
 * This class is used to display the content of the odometer variables (x, y, Theta)
 */
```

Display.java:8: First sentence of Javadoc is missing an ending period. [SummaryJavadoc]


___

```java
public class Display implements Runnable {

  private double[] position;
  private final long DISPLAY_PERIOD = 25;
  private long timeout = Long.MAX_VALUE;

```

Display.java:14: Abbreviation in name 'DISPLAY_PERIOD' must contain no more than '2' consecutive capital letters. [AbbreviationAsWordInName]


___

```java
public class Display implements Runnable {

  private double[] position;
  private final long DISPLAY_PERIOD = 25;
  private long timeout = Long.MAX_VALUE;

```

Display.java:14:22: Member name 'DISPLAY_PERIOD' must match pattern '^[a-z][a-z0-9][a-zA-Z0-9]*$'. [MemberName]


___

```java
  private final long DISPLAY_PERIOD = 25;
  private long timeout = Long.MAX_VALUE;

  public void run() {
    
    LCD.clear();
```

Display.java:17:3: Missing a Javadoc comment. [MissingJavadocMethod]


___

```java
    
    LCD.clear();
    
    long updateStart, updateEnd;

    long tStart = System.currentTimeMillis();
```

Display.java:21:5: Each variable declaration must be in its own statement. [MultipleVariableDeclarations]


___

```java
    
    long updateStart, updateEnd;

    long tStart = System.currentTimeMillis();
    do {
      updateStart = System.currentTimeMillis();
```

Display.java:23:10: Local variable name 'tStart' must match pattern '^[a-z]([a-z0-9][a-zA-Z0-9]*)?$'. [LocalVariableName]


___

```java
  /**
   * Sets the timeout in ms.
   * 
   * @param timeout
   */
  public void setTimeout(long timeout) {
```

Display.java:52: At-clause should have a non-empty description. [NonEmptyAtclauseDescription]


___

```java
// Lab2.java
package ca.mcgill.ecse211.lab2;

import lejos.hardware.Button;

// static import to avoid duplicating variables and make the code easier to read
```

Main.java:2: 'package' should be separated from previous statement. [EmptyLineSeparator]


___

```java
import lejos.hardware.Button;

// static import to avoid duplicating variables and make the code easier to read
import static ca.mcgill.ecse211.lab2.Resources.*;

/**
```

Main.java:7: Import statement for 'ca.mcgill.ecse211.lab2.Resources.*' is in the wrong order. Should be in the 'STATIC' group, expecting not assigned imports on this line. [CustomImportOrder]


___

```java
import lejos.hardware.Button;

// static import to avoid duplicating variables and make the code easier to read
import static ca.mcgill.ecse211.lab2.Resources.*;

/**
```

Main.java:7: Using the '.*' form of import should be avoided - ca.mcgill.ecse211.lab2.Resources.*. [AvoidStarImport]


___

```java
  /**
   * The main entry point.
   * 
   * @param args
   */
  public static void main(String[] args) {
```

Main.java:17: At-clause should have a non-empty description. [NonEmptyAtclauseDescription]


___

```java
import java.util.concurrent.locks.ReentrantLock;

//static import to avoid duplicating variables and make the code easier to read
import static ca.mcgill.ecse211.lab2.Resources.*;

/**
```

Odometer.java:8: Import statement for 'ca.mcgill.ecse211.lab2.Resources.*' is in the wrong order. Should be in the 'STATIC' group, expecting not assigned imports on this line. [CustomImportOrder]


___

```java
import java.util.concurrent.locks.ReentrantLock;

//static import to avoid duplicating variables and make the code easier to read
import static ca.mcgill.ecse211.lab2.Resources.*;

/**
```

Odometer.java:8: Using the '.*' form of import should be avoided - ca.mcgill.ecse211.lab2.Resources.*. [AvoidStarImport]


___

```java
  /**
   * The x-axis position in cm.
   */
  private volatile double x;
  
  /**
```

Odometer.java:26:27: Member name 'x' must match pattern '^[a-z][a-z0-9][a-zA-Z0-9]*$'. [MemberName]


___

```java
  /**
   * The y-axis position in cm.
   */
  private volatile double y; // y-axis position
  
  /**
```

Odometer.java:31:27: Member name 'y' must match pattern '^[a-z][a-z0-9][a-zA-Z0-9]*$'. [MemberName]


___

```java
   */
  private volatile double theta; // Head angle
  
  /**
   * The (x, y, theta) position as an array
   */
```

Odometer.java:38: First sentence of Javadoc is missing an ending period. [SummaryJavadoc]


___

```java
  private double[] position;

  // Thread control tools
  /**
   * Fair lock for concurrent writing
   */
```

Odometer.java:44: First sentence of Javadoc is missing an ending period. [SummaryJavadoc]


___

```java
   */
  private static Lock lock = new ReentrantLock(true);
  
  /**
   * Indicates if a thread is trying to reset any position parameters
   */
```

Odometer.java:49: First sentence of Javadoc is missing an ending period. [SummaryJavadoc]


___

```java
   * 
   * @return the Odometer Object
   */
  public synchronized static Odometer getOdometer() {
    if (odo == null) {
      odo = new Odometer();
```

Odometer.java:84:23: 'static' modifier out of order with the JLS suggestions. [ModifierOrder]


___

```java
   * This method is where the logic for the odometer will run.
   */
  public void run() {
    long updateStart, updateEnd;

    while (true) {
```

Odometer.java:96:5: Each variable declaration must be in its own statement. [MultipleVariableDeclarations]


___

```java
  
  /**
   * Returns the Odometer data.
   * <p>
   * Writes the current position and orientation of the robot onto the odoData array. {@code odoData[0] =
   * x, odoData[1] = y; odoData[2] = theta;}
```

Odometer.java:125: <p> tag should be placed immediately before the first word, with no space after. [JavadocParagraph]


___

```java
  
  /**
   * Returns the Odometer data.
   * <p>
   * Writes the current position and orientation of the robot onto the odoData array. {@code odoData[0] =
   * x, odoData[1] = y; odoData[2] = theta;}
```

Odometer.java:125: <p> tag should be preceded with an empty line. [JavadocParagraph]


___

```java
  /**
   * Returns the Odometer data.
   * <p>
   * Writes the current position and orientation of the robot onto the odoData array. {@code odoData[0] =
   * x, odoData[1] = y; odoData[2] = theta;}
   * 
```

Odometer.java:126: Line is longer than 100 characters (found 105). [LineLength]


___

```java
   * Writes the current position and orientation of the robot onto the odoData array. {@code odoData[0] =
   * x, odoData[1] = y; odoData[2] = theta;}
   * 
   * @param position the array to store the odometer data
   * @return the odometer data.
   */
```

Odometer.java:129:6: Unused @param tag for 'position'. [JavadocMethod]


___

```java
   * @param position the array to store the odometer data
   * @return the odometer data.
   */
  public double[] getXYT() {
    double[] position = new double[3];
    lock.lock();
```

Odometer.java:132: Abbreviation in name 'getXYT' must contain no more than '2' consecutive capital letters. [AbbreviationAsWordInName]


___

```java
   * Adds dx, dy and dtheta to the current values of x, y and theta, respectively. Useful for
   * odometry.
   * 
   * @param dx
   * @param dy
   * @param dtheta
```

Odometer.java:156: At-clause should have a non-empty description. [NonEmptyAtclauseDescription]


___

```java
   * odometry.
   * 
   * @param dx
   * @param dy
   * @param dtheta
   */
```

Odometer.java:157: At-clause should have a non-empty description. [NonEmptyAtclauseDescription]


___

```java
   * 
   * @param dx
   * @param dy
   * @param dtheta
   */
  public void update(double dx, double dy, double dtheta) {
```

Odometer.java:158: At-clause should have a non-empty description. [NonEmptyAtclauseDescription]


___

```java
   * @param y the value of y
   * @param theta the value of theta in degrees
   */
  public void setXYT(double x, double y, double theta) {
    lock.lock();
    isResetting = true;
```

Odometer.java:182: Abbreviation in name 'setXYT' must contain no more than '2' consecutive capital letters. [AbbreviationAsWordInName]


___

```java
package ca.mcgill.ecse211.lab2;

import static ca.mcgill.ecse211.lab2.Resources.*;

public class OdometryCorrection implements Runnable {
  private static final long CORRECTION_PERIOD = 10;
```

OdometryCorrection.java:3: Using the '.*' form of import should be avoided - ca.mcgill.ecse211.lab2.Resources.*. [AvoidStarImport]


___

```java
  /*
   * Here is where the odometer correction code should be run.
   */
  public void run() {
    long correctionStart, correctionEnd;

```

OdometryCorrection.java:11:3: Missing a Javadoc comment. [MissingJavadocMethod]


___

```java
   * Here is where the odometer correction code should be run.
   */
  public void run() {
    long correctionStart, correctionEnd;

    while (true) {
```

OdometryCorrection.java:12:5: Each variable declaration must be in its own statement. [MultipleVariableDeclarations]


___

```java
package ca.mcgill.ecse211.lab2;

//static import to avoid duplicating variables and make the code easier to read
import static ca.mcgill.ecse211.lab2.Resources.*;

/**
```

SquareDriver.java:4: Using the '.*' form of import should be avoided - ca.mcgill.ecse211.lab2.Resources.*. [AvoidStarImport]


___

```java
  /**
   * Converts input distance to the total rotation of each wheel needed to cover that distance.
   * 
   * @param distance
   * @return the wheel rotations necessary to cover the distance
   */
```

SquareDriver.java:51: At-clause should have a non-empty description. [NonEmptyAtclauseDescription]


___

```java
   * Converts input angle to the total rotation of each wheel needed to rotate the robot by that
   * angle.
   * 
   * @param angle
   * @return the wheel rotations necessary to rotate the robot by the angle
   */
```

SquareDriver.java:62: At-clause should have a non-empty description. [NonEmptyAtclauseDescription]


___

