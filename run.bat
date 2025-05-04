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