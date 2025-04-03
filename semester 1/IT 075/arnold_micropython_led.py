# four LEDS numbered 1 to 4

import time
import pyb

for i in range(100):
    pyb.LED((i%4) + 1).toggle()
    time.sleep_ms(1000)