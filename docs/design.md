# Design

## Hardware

### Microcontroller

The RP2040/RP2350 is chosen for its availability, cost, and features. It allows for accurately implementing the Joybus protocol via its
Programmable I/O (PIO) compared to bitbanging, and it's significantly cheaper than adding external hardware to do so, e.g., a CPLD. For
firmware, the SDK for the Raspberry Pi microcontrollers is also excellent because it provides a modern GCC toolchain that isn't tied
to any specific IDE.

The Pico board is chosen because it's widely available and has everything needed for this project. By using the full Pico board, part
complexity is reduced. This enables anyone to hand solder the Pico board much easier than the standalone microcontroller + individual
components would.

The PhobGCC HW 1.0 also used a Pico, although it later moved to the standalone microcontroller in the 2.0 release.

[See the Raspberry Pi microcontroller documentation for more information.](https://www.raspberrypi.com/documentation/microcontrollers/microcontroller-chips.html)

## Firmware

The firmware is designed around the analog stick reading and Joybus communication.

The firmware reads the analog stick via an interrupt that is generated when the analog stick moves. The current X, Y position of the analog stick is
stored and incremented/decremented on each interrupt signal for each axis. [See the N64brew Controller Page for more information about the analog stick protocol.](https://n64brew.dev/wiki/Controller)

Button inputs are polled at a time slightly before sending the Joybus
controller state.

TODO: Add info about notch remapping and button remapping when it's added.

## Accessory Packs

Currently there is no support for N64 accessory packs. I have not researched the technical feasability as I'm only interested in the main controller
at this time.
