# VGA Interface Using Atmega16  

## Table of Contents  
- [Introduction](#introduction)  
- [Features](#features)  
- [Hardware Design](#hardware-design)  
- [Software Design](#software-design)  
- [Results](#results)  
- [Future Enhancements](#future-enhancements)  
- [Getting Started](#getting-started)  
- [Acknowledgements](#acknowledgements)  
- [License](#license)  

---

## Introduction  

This project implements a **VGA interface** using the **Atmega16 microcontroller** to generate video signals and display images on a VGA-compatible monitor. The goal was to design a cost-effective system capable of rendering monochromatic and polychromatic images as a proof of concept.  

The VGA signals are generated using the microcontroller's timers, which synchronize image data with monitor display timing.  

---

## Features  

- **Monochromatic Image Display**: Supports 160x80 resolution.  
- **Polychromatic Image Display**: Utilizes an R-2R ladder DAC for analog RGB signals.  
- **Standard VGA Timings**: Implements H-SYNC and V-SYNC signals.  
- **Refresh Rate**: Maintains a stable 60Hz refresh rate.  
- **Cost-Effective Design**: Uses widely available and low-cost components.  

---

## Hardware Design  

### Key Components:  
1. **Atmega16 Microcontroller**  
2. **VGA Connector (DB-15)**  
3. **R-2R Resistor Ladder** for RGB signal generation.  

### Circuit Overview:  
- **H-SYNC and V-SYNC** are generated via timers in Fast PWM mode.  
- Image data is output through specific microcontroller ports, synchronized with VGA timing.  
- A **75Ω impedance matching** resistor ensures correct signal levels for the monitor.  

---

## Software Design  

### Development Tools:  
- **AVR Studio 5.1** for code development.  
- **Proteus 8** for circuit simulation.  

### Key Modules:  
1. **VGA Signal Generation**:  
   - H-SYNC and V-SYNC signals control horizontal and vertical sync.  
2. **Data Output**:  
   - Monochromatic images use bit-shifting for pixel output.  
   - Polychromatic images utilize R-2R DAC for RGB values.  

### Program Flow:  
1. Generate synchronization signals (H-SYNC and V-SYNC).  
2. Load image data during back porch periods.  
3. Push image data during the active video phase.  

---

## Results  

- Successfully displayed a **160x80 monochromatic image** on a VGA monitor.  
- Implemented a **basic polychromatic display** using RGB signals via an R-2R ladder DAC.  
- Achieved stable 60Hz refresh with minimal flickering.  

---

## Future Enhancements  

- **Higher Resolution Support**: Use a faster microcontroller or FPGA.  
- **GIF Animation**: Implement frame sequencing for basic animations.  
- **Direct Memory Access (DMA)**: Enable faster data transfer and higher frame rates.  

---

## Getting Started  

### Prerequisites  
- **AVR Studio 5.1**  
- **Proteus 8**  
- **ISP Programmer**  

### Steps to Run:  
1. Clone the repository.  
2. Compile the provided code in **AVR Studio**.  
3. Upload the hex file to the **Atmega16** using an **ISP Programmer**.  
4. Assemble the circuit as per the provided schematic.  
5. Connect to a VGA monitor and observe the output.  
