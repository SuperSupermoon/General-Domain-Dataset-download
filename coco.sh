# coco 2017 dataset download

mkdir coco
cd coco

wget -c http://images.cocodataset.org/annotations/annotations_trainval2017.zip
wget -c http://images.cocodataset.org/zips/train2017.zip
wget -c http://images.cocodataset.org/zips/val2017.zip

unzip annotations_trainval2017.zip
unzip train2017.zip
unzip val2017.zip



## Another way
# coco2017 train118k val5k
wget -c http://images.cocodataset.org/zips/train2017.zip &&
unzip train2017.zip && rm train2017.zip &&
wget -c http://images.cocodataset.org/annotations/annotations_trainval2017.zip &&
unzip annotations_trainval2017.zip && rm annotations_trainval2017.zip &&
wget -c http://images.cocodataset.org/zips/val2017.zip &&
unzip val2017.zip &&  rm val2017.zip

# coco2014 train83k val 41k
wget http://images.cocodataset.org/zips/train2014.zip && unzip train2014.zip && rm train2014.zip
wget http://images.cocodataset.org/zips/val2014.zip && unzip val2014.zip && rm val2014.zip
wget http://images.cocodataset.org/annotations/annotations_trainval2014.zip && unzip annotations_trainval2014.zip && rm annotations_trainval2014.zip

## 5k image 'minival' subset and val2014 (set) minus minival (~35k images)
wget https://dl.dropboxusercontent.com/s/s3tw5zcg7395368/instances_valminusminival2014.json.zip?dl=0 && unzip instances_valminusminival2014.json.zip\?dl\=0  
mv instances_valminusminival2014.json annotations/ && rm instances_valminusminival2014.json.zip\?dl\=0  
wget https://dl.dropboxusercontent.com/s/o43o90bna78omob/instances_minival2014.json.zip?dl=0 &&  unzip instances_minival2014.json.zip?dl=0
mv instances_minival2014.json annotations/ && rm instances_minival2014.json.zip?dl=0
