@echo off
REM ============================================
REM install_requirements.bat
REM Windows-only setup for CUDA‑11.8 + ONNX + common libs
REM Adds GPU detection & VS2022 requirement prompts
REM ============================================

REM — Ask user which GPU they plan to target
setlocal EnableDelayedExpansion
set /p gpu=Enter GPU type ^(NVIDIA or AMD^): 

REM — 1) Visual Studio requirement for both NVIDIA & AMD
if /I "%gpu%"=="NVIDIA" (
    echo ==============================================
    echo 🔹 Visual Studio 2022 Community Edition is required for C++ build support.
    echo 🔹 Download: https://visualstudio.microsoft.com/vs/community/
    echo 🔹 Select 'Desktop development with C++' workload.
    echo ==============================================
    pause
) 
if /I "%gpu%"=="AMD" (
    echo ==============================================
    echo 🔹 Visual Studio 2022 Community Edition is required for C++ build support.
    echo 🔹 Download: https://visualstudio.microsoft.com/vs/community/
    echo 🔹 Select 'Desktop development with C++' workload.
    echo ==============================================
    pause
)

REM — 2) NVIDIA‑specific instructions
if /I "%gpu%"=="NVIDIA" (
    echo ==============================================
    echo 🔹 NVIDIA: Ensure CUDA 11.8, cuDNN ^& TensorRT are installed.
    echo    • CUDA: https://developer.nvidia.com/cuda-11-8-0-download-archive
    echo    • cuDNN: https://developer.nvidia.com/cudnn
    echo    • TensorRT: https://developer.nvidia.com/tensorrt
    echo ==============================================
    pause
)

REM — Upgrade pip first
echo [1/6] Upgrading pip...
python -m pip install --upgrade pip

REM — Install CUDA‑11.8 builds of PyTorch
if /I "%gpu%"=="NVIDIA" (
    echo [2/6] Installing torch, torchvision, torchaudio (CUDA 11.8)...
    python -m pip install ^
        torch==2.7.0+cu118 ^
        torchvision==0.22.0+cu118 ^
        torchaudio==2.7.0+cu118 ^
        --extra-index-url https://download.pytorch.org/whl/cu118
) else (
    echo [2/6] Installing CPU/DirectML builds of torch, torchvision, torchaudio...
    python -m pip install ^
        torch==2.7.0 ^
        torchvision==0.22.0 ^
        torchaudio==2.7.0
)

REM — Install ONNX Runtime GPU for CUDA 11.8 (or DirectML for AMD)
if /I "%gpu%"=="NVIDIA" (
    echo [3/6] Installing onnxruntime-gpu==1.17.0...
    python -m pip install onnxruntime-gpu==1.17.0

    echo [4/6] Installing onnxruntime-gpu==1.21.1 (CUDA 11.8)...
    python -m pip install onnxruntime-gpu==1.21.1 ^
        --index-url https://aiinfra.pkgs.visualstudio.com/PublicPackages/_packaging/onnxruntime-cuda-11/pypi/simple/ ^
        --extra-index-url https://pypi.org/simple
) else (
    echo [3/6] Installing torch-directml ^& onnxruntime-directml...
    python -m pip install torch-directml onnxruntime-directml
)

REM — NVIDIA‑only GPU libs
if /I "%gpu%"=="NVIDIA" (
    echo [5/6] Installing cupy-cuda11x...
    python -m pip install cupy-cuda11x
)

REM — Common packages
echo [6/6] Installing common Python packages...
python -m pip install ^
    ultralytics ^
    dxcam ^
    bettercam ^
    pygetwindow ^
    pyautogui ^
    pywin32 ^
    opencv-python==4.8.1.78 ^
    numpy==1.26.4 ^
    pandas ^
    dill ^
    psutil ^
    requests ^
    pyyaml ^
    tqdm ^
    matplotlib ^
    seaborn ^
    ipython ^
    pyarmor ^
    pyserial ^
    serial ^
    colorama ^
    onnx==1.17.0 ^
    onnx-simplifier

echo.
echo ✅ All packages have been installed for %gpu%!
pause
