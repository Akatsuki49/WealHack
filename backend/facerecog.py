from deepface import DeepFace
import os
import tensorflow as tf
objs = DeepFace.analyze(img_path = "./assets/download.jpg",actions = ['emotion'],enforce_detection=False)
x1=objs[0]['emotion']
sorted_dict = dict(sorted(x1.items(), key=lambda item: item[1], reverse=True))
first_key = [key for key in sorted_dict.keys()][0]
print(first_key)