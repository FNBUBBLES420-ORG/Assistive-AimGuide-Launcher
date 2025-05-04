@echo off
setlocal enabledelayedexpansion

rem --------------------------------------------------
rem Universal Windows installer for PyTorch (CUDA 11.8)
rem --------------------------------------------------

rem 1) Locate python executable
for %%P in (python.exe) do set PYTHON=%%~$PATH:P
nif not defined PYTHON (
    echo ERROR: Python not found in PATH.
    echo Please install Python 3.11+ and add it to your PATH.
    pause
    exit /b 1
)

set PYTORCH_URL=https://download.pytorch.org/whl/cu118/torch_stable.html

echo ==============================================
echo Upgrading pip and setuptools...
echo ==============================================
%PYTHON% -m pip install --upgrade pip setuptools

echo ==============================================
echo Installing PyTorch, TorchVision & TorchAudio (CUDA 11.8)...
echo ==============================================
%PYTHON% -m pip install ^
    torch==2.7.0+cu118 ^
    torchvision==0.22.0+cu118 ^
    torchaudio==2.7.0+cu118 ^
    -f %PYTORCH_URL%

echo ==============================================
echo Installation complete!
echo ==============================================
pause
endlocal
