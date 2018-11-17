import requests
import re

f = open('4chan.txt','r')
lines = f.readlines()
f.close
count = 0
i = 0
line = lines[0]
list1 = [m.start() for m in re.finditer('.webm\"', line)]
print(str(len(list1)/2),'video will be downloaded')
for num in range(0,len(list1),2):
    per = list1[num] + 5
    line1 = line[per-35:per]
    if "org" in line1:
       # r = requests.get('https:'+line1)
       # content = r.content
       # with open('/home/alasin/WTFMEME/video/video'+str(i)+'.mp4', 'wb') as g:
            #g.write(content)
            print('https:'+line1)
           # g.close()
            i += 1
