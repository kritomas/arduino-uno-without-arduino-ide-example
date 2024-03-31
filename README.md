# Arduino UNO Without Arduino IDE Example 

This project demonstrates how to program an Arduino UNO without using Arduino IDE. This example is very short, for a quick start.

# Overview

+	`main.c`: Our C code. Since we aren't using Arduino IDE, we have to do a little more work to get serial comms working (see code details).
+	`Makefile`: Builds and flashes everything. Modify when necessary.

# Usage

Firstly, install everything necessary, most notably `avrdude` and an AVR cross compiler.

Then, you can compile everything by running `make`, which will produce `avr.hex`.

Lastly, flash the example onto your Arduino UNO by invoking `make flash`. If everything is working correctly, you should be able to read `HELLO WORLD!` from `/dev/ttyACM0`.

**Note:** Which serial port the board connects to may vary system to system. Modify `Makefile` when needed. This also means that you will not always read from `/dev/ttyACM0`, but some other port.