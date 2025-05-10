<p align="center">
  <img src="https://github.com/FNBUBBLES420-ORG/Assistive-AimGuide/blob/main/banner/Assitive-AimGuide.png" alt="Assistive-AimGuide" width="350">
</p>

<p align="center">
  <img src="https://github.com/FNBUBBLES420-ORG/Assistive-AimGuide/blob/main/banner/fnbubbles420.png" alt="Fnbubbles420 Logo" width="80" align="left">
  <img src="https://github.com/FNBUBBLES420-ORG/Assistive-AimGuide/blob/main/banner/fnbubbles420.png" alt="Fnbubbles420 Logo" width="80" align="right">
  <br><br><br>
  <h1 align="center">FNBubbles420 Org - Assistive Aim-Guide</h1>
</p>

# Assistive AimGuide Launcher

🎯 An assistive aim guide for PC gamers, designed with accessibility in mind. 🚀 Leveraging AI models (TensorRT or ONNX Runtime) to provide smooth, human‑like aiming assistance. 🤖 Especially beneficial for individuals with physical or cognitive disabilities, offering features like customizable controls 🕹️, dynamic model loading 🔄, & easy‑to‑use interfaces.

---

## 📦 Includes:

* **TensorRT** support for NVIDIA GPUs with FP16
* **ONNX Runtime** support for CPU, AMD/DirectML, or NVIDIA/CUDA
* Configurable settings via `config.py`
* Customizable activation and quit keys
* Built‑in game window selection
* Serial output to Arduino Leonardo (optional)
* Launcher GUI (`launcher.py`) for easy script selection

---

## If you are having issues!!!

* Join our [Discord](https://discord.gg/9vG777kJYc) for support.
* `assistive-aimguide` channel for help.
* **PING** `@AssistiveAimguideDeveloper` for assistance.

---

> **> **For ease of use**, we've added a Windows batch installer to handle all prerequisites and Python dependencies automatically.**

## 🚀 Features

* **Smooth, human-like aiming** with two-stage overshoot and micro‑jitter
* **Headshot mode** to aim slightly above center
* **Masking** to ignore UI elements or third‑person obstructors
* **Dynamic model loading** from `config.py` (TensorRT or ONNX)
* **Multi‑provider ONNX**: CPU, AMD/DirectML, NVIDIA/CUDA
* **Serial support** for external hardware feedback
* **Easy launch** via a CustomTkinter GUI launcher

---

## 📋 Requirements

1. **Windows 10/11**
2. **Visual Studio 2022 Community Edition** (required for C++ build support when using AMD or NVIDIA GPUs)

   * Select **Desktop development with C++** workload in the installer
3. **Python 3.11+** (the included `python3119.bat` can help install Python)
4. **CUDA 11.8** (for NVIDIA/CUDA path) or **DirectML** (for AMD)

---

## ⚙️ Batch File Installer

We've provided `install_requirements.bat` to simplify setup:

1. **Save** the `install_requirements.bat` script to the project root.
2. **Open** Command Prompt **as Administrator** and navigate to the repository folder.
3. **Run**:

   ```bat
   install_requirements.bat
   ```
4. **Follow** the on-screen prompts:

   * Enter **NVIDIA** or **AMD** when asked.
   * Review the Visual Studio recommendation.
   * (For NVIDIA) Review CUDA/cuDNN/TensorRT links.
5. The script will then:

   * Upgrade `pip`.
   * Install the appropriate PyTorch builds.
   * Install ONNX Runtime and DirectML or CUDA-specific packages.
   * Install `cupy-cuda11x` if NVIDIA.
   * Install all common Python packages.

---

## 📥 How to Download the Repo (First-Time Users)

1. **Download ZIP:**

   * Click the green **Code** button at the top right of the repository page.
   * Select **Download ZIP** and save it.
2. **Extract:**

   * Right-click the ZIP and choose **Extract All…**
   * Select your destination folder.

---

## ⚙️ Installation

### Option 1: Install `python3119.bat` (recommended)

```powershell
python3119.bat 
```
- run the `python3119.bat` first to install python.
- after you successfully installed python. Simply type in a `NEW` cmd.exe window:
```
python --version
```
- print out should be `Python 3.11.9`


This auto-detects your GPU (NVIDIA, AMD, or CPU), prompts for prerequisites, and installs the correct packages.

### Option 2: Manual via EXE File

```
double click the install.exe
```

Follow the prompts to install everything.

---

## 💻 Verifying Your Setup

1. **Detect environment**:

   ```bash
   python detect_env.py
   ```

   * Confirms GPU, CUDA version, and library versions.
2. **Run a demo**:

   ```bash
   python main_tensorrt.py   # TensorRT (NVIDIA)
   python main_onnx.py       # ONNX Runtime (all providers)
   ```

---

## 🔧 Configuration (`config.py`)

All settings live in `config.py`. Customize:

```python
# ONNX choice: 1=CPU, 2=DmlExecutionProvider (AMD), 3=CUDAExecutionProvider (NVIDIA)
onnxChoice = 3

# GPU flags
enabled_gpu = "CUDA"  # or "DirectML" / "CPU"
```

---

## 🎮 Launcher GUI (`launcher.py`)

Use the GUI to start your scripts without the command line:

1. `Launch TensorRT` – runs `main_tensorrt.py`
2. `Launch ONNX`    – runs `main_onnx.py`
3. `Open Config`    – edits `config.py`
4. `Need Help?`     – opens our Discord support link
5. `Close`          – exits the launcher

---

## 🛠 Troubleshooting

* **Module errors**: ensure dependencies installed via `install.exe`.
* **Window not found**: verify `gameWindowTitle` matches your game’s window title.
* **Provider mismatch**: set `onnxChoice` correctly for your hardware.

---

## 📝 License

**This project is proprietary and all rights are reserved by the author.** Unauthorized copying, distribution, or modification is strictly prohibited without written permission from the developer or FNBUBBLES420 ORG.
