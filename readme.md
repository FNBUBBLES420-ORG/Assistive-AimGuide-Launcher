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

🎯 An assistive aim guide for PC gamers, designed with accessibility in mind. 🚀 Leveraging AI models (TensorRT or ONNX Runtime) to provide smooth, human‑like aiming assistance. 🤖 Especially beneficial for individuals with physical or cognitive disabilities, offering features like customizable controls 🕹️, dynamic model loading 🔄, & easy‑to‑use

## 📦 Includes:

* **TensorRT** support for NVIDIA GPUs with FP16
* **ONNX Runtime** support for CPU, AMD/DirectML, or NVIDIA/CUDA
* Configurable settings via `config.py`
* Customizable activation and quit keys
* Built‑in game window selection
* Serial output to Arduino Leonardo (optional)
* Launcher GUI (`launcher.py`) for easy script selection

---

> **> **For ease of use**, simply **double-click `autosetup.exe` and follow the on-screen prompts** to install Visual Studio 2022 (with C++ workload) and all Python dependencies automatically.

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
   - Select **Desktop development with C++** workload in the installer
3. **Python 3.11+** `python3119.bat` ***included***
4. **CUDA 11.8** (for NVIDIA/CUDA path) or **DirectML** (for AMD)

**Common Python packages** (installed via `requirements.txt`, `autosetup.exe`):
- extract the `autosetup.zip` to in root directory, then run.
- if you are installing via `requirements.txt` make sure to # comment out the parts if you do or dont have nvidia or amd gpus.
- `autosetup.exe SHA256 6A98F785541F27C291592802E42B7B6185741C2E9A26CE6457F1386ADEF2F80B`
```text
torch
torchvision
torchaudio
ultralytics
dxcam
bettercam
pygetwindow
pyautogui
pywin32
opencv-python
numpy==1.26.4
pandas
dill
psutil
requests
pyyaml
tqdm
matplotlib
seaborn
ipython
pyserial
colorama
onnx==1.17.0
onnx-simplifier
```
**AMD/DirectML-specific**:
```text
torch-directml
onnxruntime-directml
```
**NVIDIA/CUDA-specific** (CUDA 11.x builds):
```text
cupy-cuda11x
onnxruntime-gpu==1.17.0
```
### [nvidia-command.md](https://github.com/FNBUBBLES420-ORG/Assistive-AimGuide-Launcher/blob/main/nvidia-command.md)
---
```
pip uninstall onnxruntime
```
- `autosetup.exe` will install onnxruntime. just use the command above to uninstall. 


## 📥 How to Download the Repo (First-Time Users)

1. **Download ZIP:**
   - Click the green **Code** button at the top right of the repository page.
   - Select **Download ZIP**.
   - Save the ZIP file to your computer.
2. **Extract:**
   - Right-click the downloaded ZIP and choose **Extract All…**
   - Select a folder where you’d like to store the project.

---

## ⚙️ Installation

### Option 1: One-click via `autosetup.exe` (recommended)
```powershell
./autosetup.exe
```
This will prompt for Visual Studio install (if needed) and then install all Python dependencies.
This script detects your GPU (NVIDIA, AMD, or CPU), prompts for any manual prerequisites, and installs the correct packages.

## Nvidia use the `run.bat`
```
@echo off
echo ==============================================
echo MAKE SURE TO HAVE THE WHL DOWNLOADED BEFORE YOU CONTINUE!!!
echo Press Hold CTRL Then Click Link With Mouse
echo ==============================================
echo LOOK FOR V13.4.1 FOR CUDA 11.X FOR THE PYTHON 3.11 SERIES
echo ==============================================
echo https://github.com/cupy/cupy/releases/
echo ==============================================
pause

echo ==============================================
echo Click the link below to download the WHL file:
echo (Press CTRL and left-click to open the link)
echo ==============================================
echo https://github.com/cupy/cupy/releases/download/v13.4.1/cupy_cuda11x-13.4.1-cp311-cp311-win_amd64.whl
pause

echo ==============================================
echo Installing CuPy from the WHL file...
echo ==============================================
pip install https://github.com/cupy/cupy/releases/download/v13.4.1/cupy_cuda11x-13.4.1-cp311-cp311-win_amd64.whl
pause
```

## For Nvidia 
- use the `install_torch.bat`
it will install for cuda 118
```
torch==2.7.0
torchvision==0.22.0
torchaudio==2.7.0
```

3. **Verify** CUDA/FP16 by running one of the scripts:
```bash
python main_tensorrt.py   # TensorRT (NVIDIA)
python main_onnx.py       # ONNX Runtime (all providers)
```

## To Verify
- Run the `detect_env.py`
- It will show the versions.
```
    print("🔧 Library versions:")
    print(f"   • torch       : {torch.__version__}")
    print(f"   • torchvision : {torchvision.__version__}")
    print(f"   • torchaudio: {torchaudio.__version__}")  # Only if using DirectM
    print(f"   • onnx        : {onnx.__version__}")
    print(f"   • onnxruntime :{ort.__version__}")
    print(f"   • onnxruntime-directml :{ort.__version__}")
    print(f"   • numpy :{numpy.__version__}")
```

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


- create and run the `get_device.py` to see if you installed it correctly 
```
import torch

print(torch.cuda.is_available())  # This will return True if CUDA is available
print(torch.version.cuda)  # This will print the CUDA version being used
print(torch.cuda.get_device_name(0))  # This will print the name of the GPU, e.g., 'NVIDIA GeForce RTX GPU Model'
```

---

## 🔧 Configuration (`config.py`)

All settings live in `config.py`:
```python
# Portion of screen to be captured (square/rectangle around center)
screenShotHeight = 320
screenShotWidth  = 320

# Use "left" or "right" for the mask side
gameWindowTitle = "Fortnite"  # Change this to your game window title for better game detection
useMask = True
maskSide = "left"
maskWidth = 140
maskHeight = 240

# Autoaim mouse movement amplifier
aaMovementAmp = 1.0

# Person Class Confidence
confidence = 0.72

# What key to press to quit and shutdown the autoaim
aaQuitKey = "8"

# What key to press to activate the autoaim
aaActivateKey = "CapsLock"

# Toggle headshot aim
headshot_mode = True

# Displays the Corrections per second in the terminal
cpsDisplay = True

# Show bounding‑box visuals
visuals = False

# Smarter selection of people
centerOfScreen = True

# Serial settings
enableSerial = True
baudRate     = 115200
serialPort   = "COM3"

# ONNX choice
# 1 = CPUExecutionProvider
# 2 = DmlExecutionProvider (AMD/DirectML)
# 3 = CUDAExecutionProvider (NVIDIA/CUDA)
onnxChoice = 3  # choose 1 for CPU, 2 for AMD/DirectML, 3 for NVIDIA/CUDA

# Device flags
# For NVIDIA GPUs
# Set to True if you have a compatible NVIDIA GPU and want to use CUDA
cuda_enabled = True    # Set False to run on CPU
fp16_enabled = True     # Set False to disable FP16

# Path to your TensorRT/ONNX engine or YOLO model
# model_path = "engine/v5.engine"
model_path = "onnx/v5.onnx"  # ONNX model file

```
Adjust values as needed.

---

## 🎮 Launcher GUI (`launcher.py`)

Use the built‑in GUI to start scripts without the command line:

1. `Launch TensorRT` – runs `main_tensorrt.py`
2. `Launch ONNX`    – runs `main_onnx.py`
3. `Open Config`    – edits `config.py` in Notepad
4. `Need Help?`     – opens Discord support link
5. `Close`          – stops running scripts and closes launcher

---

## 📖 Usage

1. **Run the launcher**:
```bash
python launcher.py
``` 
- Or double-click `launcher.bat`.
2. **Customize** settings in `config.py`.
3. **Press the activation key** (CapsLock by default) in-game to engage assist.
4. **Press the quit key** (8 by default) to exit.

---

## 🛠 Troubleshooting

* **Module errors**: ensure dependencies installed (run `autosetup.exe` or `install_dependencies.py`).
* **Window not found**: verify `gameWindowTitle` matches your game’s window title.
* **OnnxChoice mismatch**: choose correct provider for your hardware.

Join our [Discord](https://discord.gg/9vG777kJYc) for support.

---

## 📝 License

**This project is proprietary and all rights are reserved by the author.** Unauthorized copying, distribution, or modification is strictly prohibited without written permission from the developer or FNBUBBLES420 ORG.
