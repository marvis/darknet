nohup ./darknet detector train cfg/face.data cfg/face.cfg face95.50.conv.14 -gpus 1 > log.txt &
#./darknet detector testlist cfg/face.data cfg/face.cfg backup/face_14000.weights test.txt
