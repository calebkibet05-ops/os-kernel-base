# OS Kernel Base

A lightweight, custom x86 bare-metal operating system kernel built from scratch using Assembly and C. This project features its own bootloader setup, a custom linker script, VGA text-mode output, and an interactive keyboard driver.

## 🛠️ Tech Stack & Tools
* **Assembly (NASM):** For the 32-bit entry point and low-level hardware bootstrapping.
* **C (GCC):** For core kernel logic (`-ffreestanding` environment).
* **Linker Script (`link.ld`):** Custom memory mapping for the kernel binary.
* **Make:** Automated build process and orchestration.
* **QEMU (`qemu-system-i386`):** Emulator used for testing and running the kernel image.

## 📁 Project Structure
* `boot.asm` - Multiboot-compliant assembly entry point.
* `kernel.c` - Main C kernel code handling VGA text output and keyboard input.
* `link.ld` - Linker script defining the memory layout.
* `Makefile` - Build rules for assembling, compiling, linking, and running via QEMU.

## 🚀 Getting Started

### Prerequisites
Make sure you have the following tools installed on your Linux system (e.g., Fedora):
* `nasm`
* `gcc`
* `make`
* `qemu`

### Building and Running
1. Clone the repository:
   ```bash
   git clone [https://github.com/calebkibet05-ops/os-kernel-base.git](https://github.com/calebkibet05-ops/os-kernel-base.git)
   cd os-kernel-base
