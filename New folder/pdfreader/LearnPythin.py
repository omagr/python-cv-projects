


# 1comnt/docstring


# single line comnt

#multi line
# comnt


""" docstring
  comnt """
a1=3
b1=5
c1=a1+b1
  
print(c1)

# 2 varible

a=45 
A=67 #casesabsetive
print(a+A)

# 3 data typpe 
      #number
         
         #integer - 10
         #float - 12.232
         #complex - 25k
        
    
      #string

        # - ''
        # - " "
        # - ''' '''

s=' python'
print(len(s))


      #list

l = ['ela','aam','kela','maal''aam','kela','maal''aam','k','maal']
print(l)
print(len(l))
print(l[2:6])
l[3]=78
l.append(899898)
l.insert(6,89075)
l.reverse()


print(l[3:9])


      #dictionary

d = { 1 :'apple',3 :'apple',4 :'apple', 5 :'apple',6 :'apple',7 :'apple'}
print(d)
d[5]='samsung'

print(d)
      #turple
t = ('aam','kela','maal','aam','kela','maal''aam')
print(t)
print(t.count("aam"))

print(t)


      #set
set = {67,45,54,5333,434343,55,555,55,55}
print(set)
      #range

#type change
      #str()
      #int()
      #float()
      #tuple()
      #list()
      # set()
      # dict()
   

#SCDT


from collections import namedtuple
a= namedtuple('detail','name,duration,fee')
s=a('pythn','2month','rs3443343')

print(s)

from collections import deque
a=['e','y','t']
d=deque(a)
print(d)
d.append('pythin')
print(d)
from collections import ChainMap
c = {7:'y',88:'k'}
c2 ={8:"hj",0:'jk'}

c3 = ChainMap(c,c2)
print(c3)
from collections import Counter
co = [1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,1,1,1,1]
coun =Counter(co)
print(coun)
print(list(coun.elements()))
print(coun.most_common())
sub={2:1,3:5}
print(coun.subtract(sub))
from collections import OrderedDict

m = OrderedDict()
m[1]='uoi'
m[2]='uoif'
print(m)
from collections import defaultdict
f=defaultdict()
f[1]='ty'
f[2]='tuu'
print(d[3])



import array as ar
a= ar.array('i',[1,2,3,4,5,6,7,8])
print(a)

print(len(a))
#adding
a.append(9)
print(a)
a.extend([4,5,6,7])
print(a)
a.insert(3,5)
print(a)
#remove

a.pop()
print(a)
a.pop(2)
print(a)
a.remove(5)
print(a)

b =ar.array('i',[1,2,4,6,778,9,99,])
c= ar.array('i')
c=a+b
print(c)

#slicing anry

print(c[0:3])
print(a[::-1])

#looping areat
