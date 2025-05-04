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
# model_path = "engine-models/v5.engine"
model_path = "onnx-models/v5.onnx"  # ONNX model file
