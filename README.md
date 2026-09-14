# 📡 Digital Communication Engineering Sessional

<div align="center">
  <img src="https://img.shields.io/badge/Language-MATLAB-F8762D?style=for-the-badge&logo=mathworks" alt="MATLAB">
  <img src="https://img.shields.io/badge/Domain-Digital%20%26%20Wireless%20Comm-00599C?style=for-the-badge" alt="Course">
</div>

A collection of MATLAB scripts and Simulink models developed for Digital and Wireless Communication Engineering lab sessions. This repository focuses on understanding the core concepts of signal processing, modulation techniques, and performance analysis using MATLAB and Simulink.

## 🧮 How to Use MATLAB

MATLAB (Matrix Laboratory) is a high-level programming language and interactive environment used heavily for numerical computation, matrix manipulations, and signal visualization.

### 🔹 Basic Workflow
1. **Editor Window:** This is where you write and save your scripts (files ending in `.m`).
2. **Command Window:** Used for quick calculations, running scripts manually, or debugging errors.
3. **Workspace:** Displays all the active variables in the current session and their assigned values.

### 🔹 Essential MATLAB Functions for Communication Labs
* `clc` — Clears the Command Window.
* `clear all` — Removes all variables from the workspace to prevent data overlap.
* `close all` — Closes all active figure/graph windows.
* `plot(t, y)` — Generates a continuous 2D line plot of vector `y` versus vector `t`.
* `stem(t, y)` — Generates a discrete sequence or "lollipop" plot, which is highly useful for discrete/digital signals (like PAM).
* `subplot(m, n, p)` — Divides the figure window into an `m`-by-`n` grid and places the next plot in position `p`.
* `xlabel('Text')` & `ylabel('Text')` — Adds labels to the X and Y axes of a graph.
* `title('Text')` — Adds a heading to the top of the graph.
* `legend('String1', 'String2')` — Identifies different data series in a graph.

## ⚙️ How to Use Simulink

Simulink is a graphical block diagram environment integrated within MATLAB. It is used for modeling, simulating, and analyzing multidomain dynamic systems. Instead of writing raw code, you connect visual blocks to build a system logic.

### 🔹 Basic Simulink Workflow
1. **Starting Simulink:** Type `simulink` in the MATLAB Command Window and press Enter.
2. **Creating a Model:** Click on "Blank Model" to open a fresh, empty canvas.
3. **Library Browser:** Open the Library Browser to find necessary functional blocks (e.g., Sources, Sinks, Math Operations).
4. **Building the System:**
   * Drag and drop blocks like **Sine Wave** (Message signal), **Pulse Generator** (Carrier signal), and **Product** (Multiplier) onto the canvas.
   * Connect the output ports of one block to the input ports of another using wires (simply click and drag between ports).
5. **Viewing Output:** Use the **Scope** block (found in Sinks) to visualize the final modulated signal over time.
6. **Running Simulation:** Set the "Stop Time" at the top menu bar (e.g., 10 seconds) and click the green **Run** button to execute the simulation.

## 🚀 How to Run This Project
1. Clone this repository to your local machine:
   ```bash
   git clone [https://github.com/mahircce/Digital-Communication-Engineering-Sessional.git](https://github.com/mahircce/Digital-Communication-Engineering-Sessional.git)
