## engine
```
python .\export.py --weights ./"your_model_path.pt" --include engine --half --imgsz 320 320 --device 0
```

## onnx 
```
python .\export.py --weights ./"your_model_path.pt" --include onnx --half --imgsz 320 320 --device 0
```
## amd cpu
```
python .\export.py --weights "./your_model_path.pt" --include onnx --half --imgsz 320 320 --device cpu
```


## 2) Export “on DML” by adding a dml device flag
If you really want to trace on the actual DirectML backend (e.g. to catch any ops that only exist in torch_directml), modify your export.py like this:

```python
--- a/export.py
+++ b/export.py
@@ args = parser.parse_args()
-device = torch.device(args.device)
+if args.device.lower() in ("dml","directml"):
+    import torch_directml
+    device = torch_directml.device()
+else:
+    device = torch.device(args.device)
 
 model = ...
 model.to(device)
 dummy = torch.randn([1,3,args.imgsz,args.imgsz], device=device)
```

Then call:

```
python .\export.py --weights "./your_model_path.pt" --include onnx --half --imgsz 320 320 --device dml
```
