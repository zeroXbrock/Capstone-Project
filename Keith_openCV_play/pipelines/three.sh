DISPLAY=:0 gst-launch-1.0 nvcamerasrc sensor-id=0 ! 'video/x-raw(memory:NVMM), width=(int)640, height=(int)480, format=(string)I420, \
framerate=(fraction)30/1' ! nvegltransform ! nveglglessink max-lateness=-1 nvcamerasrc sensor-id=2 ! 'video/x-raw(memory:NVMM), width=(int)640, \
height=(int)480, format=(string)I420, framerate=(fraction)30/1' ! nvegltransform ! nveglglessink max-lateness=-1 nvcamerasrc sensor-id=1 ! 'video/x-raw(memory:NVMM), width=(int)640, height=(int)480, format=(string)I420, framerate=(fraction)30/1' ! nvegltransform ! nveglglessink max-lateness=-1 -e
