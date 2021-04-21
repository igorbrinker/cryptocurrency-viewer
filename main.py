import os
import time
import sys
import gaugette.ssd1306

RESET_PIN = 15
DC_PIN = 16

led = gaugette.ssd1306.SSD1306(reste_pin=RESET_PIN, dc_pin=DC_PIN)
led.begin()
led.clear_display()

text = 'HELLO'
led.draw_text2(0,0,text,2)
text2 = "WORLD..."
led.draw_text2(0,0,text2,1)
text3 = "...OR PYTHON!"
led.draw_text2(0,0,text3, 1)
led.display()