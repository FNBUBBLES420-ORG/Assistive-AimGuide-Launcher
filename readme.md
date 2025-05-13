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

We've made it simple setup
1. unzip the `install.zip` in root directory.
2. double click on the install.exe.
3. read below
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

# 🚀 NVIDIA CUDA Installation Guide

This guide walks you through installing NVIDIA CUDA Toolkit 11.8, cuDNN, and TensorRT on Windows, including setting up Python packages like Cupy and TensorRT. It ensures proper system configuration for CUDA development, with steps for setting environment variables and verifying installation via cmd.exe

### 1. **Download the NVIDIA CUDA Toolkit 11.8**

First, download the CUDA Toolkit 11.8 from the official NVIDIA website:

👉 [Nvidia CUDA Toolkit 11.8 - DOWNLOAD HERE](https://developer.nvidia.com/cuda-11-8-0-download-archive)

### 2. **Install the CUDA Toolkit**

- After downloading, open the installer (`.exe`) and follow the instructions provided by the installer.
- Make sure to select the following components during installation:
  - CUDA Toolkit
  - CUDA Samples
  - CUDA Documentation (optional)

### 3. **Verify the Installation**

- After the installation completes, open the `cmd.exe` terminal and run the following command to ensure that CUDA has been installed correctly:
  ```
  nvcc --version
  ```
This will display the installed CUDA version.

### **4. Install Cupy**
Run the following command in your terminal to install Cupy:
  ```
  pip install cupy-cuda11x
  ```

## 5. CUDNN Installation 🧩
Download cuDNN (CUDA Deep Neural Network library) from the NVIDIA website:

👉 [Download CUDNN](https://developer.nvidia.com/downloads/compute/cudnn/secure/8.9.6/local_installers/11.x/cudnn-windows-x86_64-8.9.6.50_cuda11-archive.zip/). (Requires an NVIDIA account – it's free).

## 6. Unzip and Relocate 📁➡️
Open the `.zip` cuDNN file and move all the folders/files to the location where the CUDA Toolkit is installed on your machine, typically:

```
C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.8
```


## 7. Get TensorRT 8.6 GA 🔽
Download [TensorRT 8.6 GA](https://developer.nvidia.com/downloads/compute/machine-learning/tensorrt/secure/8.6.1/zip/TensorRT-8.6.1.6.Windows10.x86_64.cuda-11.8.zip).

## 8. Unzip and Relocate 📁➡️
Open the `.zip` TensorRT file and move all the folders/files to the CUDA Toolkit folder, typically located at:

```
C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.8
```


## 9. Python TensorRT Installation 🎡
Once all the files are copied, run the following command to install TensorRT for Python:

```
pip install "C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.8\python\tensorrt-8.6.1-cp311-none-win_amd64.whl"
```

🚨 **Note:** If this step doesn’t work, double-check that the `.whl` file matches your Python version (e.g., `cp311` is for Python 3.11). Just locate the correct `.whl` file in the `python` folder and replace the path accordingly.

## 10. Set Your Environment Variables 🌎
Add the following paths to your environment variables:

```
C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.8\lib
C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.8\libnvvp
C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.8\bin
```

# Setting Up CUDA 11.8 with cuDNN on Windows

Once you have CUDA 11.8 installed and cuDNN properly configured, you need to set up your environment via `cmd.exe` to ensure that the system uses the correct version of CUDA (especially if multiple CUDA versions are installed).

## Steps to Set Up CUDA 11.8 Using `cmd.exe`

### 1. Set the CUDA Path in `cmd.exe`

You need to add the CUDA 11.8 binaries to the environment variables in the current `cmd.exe` session.

Open `cmd.exe` and run the following commands:

```
set PATH=C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.8\bin;%PATH%
set PATH=C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.8\libnvvp;%PATH%
set PATH=C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.8\extras\CUPTI\lib64;%PATH%
```
These commands add the CUDA 11.8 binary, lib, and CUPTI paths to your system's current session. Adjust the paths as necessary depending on your installation directory.

2. Verify the CUDA Version
After setting the paths, you can verify that your system is using CUDA 11.8 by running:
```
nvcc --version
```
This should display the details of CUDA 11.8. If it shows a different version, check the paths and ensure the proper version is set.

3. **Set the Environment Variables for a Persistent Session**
If you want to ensure CUDA 11.8 is used every time you open `cmd.exe`, you can add these paths to your system environment variables permanently:

1. Open `Control Panel` -> `System` -> `Advanced System Settings`.
Click on `Environment Variables`.
Under `System variables`, select `Path` and click `Edit`.
Add the following entries at the top of the list:
```
C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.8\bin
C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.8\libnvvp
C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.8\extras\CUPTI\lib64
```
This ensures that CUDA 11.8 is prioritized when running CUDA applications, even on systems with multiple CUDA versions.

4. **Set CUDA Environment Variables for cuDNN**
If you're using cuDNN, ensure the `cudnn64_8.dll` is also in your system path:
```
set PATH=C:\tools\cuda\bin;%PATH%
```
This should properly set up CUDA 11.8 to be used for your projects via `cmd.exe`.

### Environmental Variable Setup

![pic](https://github.com/KernFerm/v7yw9N8TL/blob/main/Environtmental_Setup/pic.png)

---

## 💻 Verifying Your Setup

1. **Detect environment**:

```bash
run the launcher.bat it will launch the launcher, tab menu click Diagnostics
```
- click `Run Diagnostics`

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

---



## Screenshot
<div align="left">
  <img src="https://github.com/FNBUBBLES420-ORG/Assistive-AimGuide-Launcher/blob/main/screenshots/pic6.png" width="350">
</div>
<div align="left">
  <img src="https://github.com/FNBUBBLES420-ORG/Assistive-AimGuide-Launcher/blob/main/screenshots/pic2.png" width="600">
</div>
<div align="left">
  <img src="https://github.com/FNBUBBLES420-ORG/Assistive-AimGuide-Launcher/blob/main/screenshots/pic3.png" width="600">
</div>
<div align="left">
  <img src="https://github.com/FNBUBBLES420-ORG/Assistive-AimGuide-Launcher/blob/main/screenshots/pic4.png" width="300">
</div>
