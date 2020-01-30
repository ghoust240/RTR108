#print vars()
#print("%s"%(vars()))
a=10
#print("%s"%(vars()))
b=20

import math
print(math.cos(a))

import math as math_V1
print(math_V1.cos(a))

from math import cos
print(cos(a))

from math import cos as cos_V1
print(cos_V1(a))

from math import *
print(cos(a))
