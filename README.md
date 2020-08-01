# RTR108
datormaciba (speckurss) - elektroniska klade<br/>
Visi klase paraditie darbi atrodas claswork mape<br/>
<br/>
Piezimes sev pašam:<br/>
## 1. Nodarbiba
<br/>
ld1
# This first line is provided for you
hrs = float(input("Enter Hours: "))<br/>
rate = float(input("Enter rate: "))<br/>
print("Pay:",hrs*rate)<br/>
<br/>
ld2<br/>
hrs = float(input("Enter Hours:"))<br/>
rate = float(input("Enter Rate:"))<br/>
try :<br/>
    if hrs>40 :<br/>
        longhrs = hrs-40<br/>
        hrs = 40
        print(hrs*rate+longhrs*rate*1.5)<br/>
    else :<br/>
        print(hrs*rate)<br/>
except:<br/>
    print("An error ocured")<br/>
