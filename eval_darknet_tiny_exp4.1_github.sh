i=7000
while [ $i -le 680000 ]
do
  echo $i
  while [ ! -e backup/face_$i.weights ]; do sleep 5; done
  ./darknet detector recall cfg/face.data test160.cfg backup/face_$i.weights test.txt -gpus 0 2>&1 | tail -1
  i=$[i+1000]
done
