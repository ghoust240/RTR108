# RTR108
datormaciba (speckurss) - elektroniska klade
## 1. Nodarbiba

ld1
# This first line is provided for you
hrs = float(input("Enter Hours: "))
rate = float(input("Enter rate: "))
print("Pay:",hrs*rate)

ld2
hrs = float(input("Enter Hours:"))
rate = float(input("Enter Rate:"))
try :
    if hrs>40 :
        longhrs = hrs-40
        hrs = 40
        print(hrs*rate+longhrs*rate*1.5)
    else :
        print(hrs*rate)
except:
    print("An error ocured")
