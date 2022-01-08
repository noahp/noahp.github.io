# RGB Banner

This is a project I’ve been working on very slowly over the last couple of
months-

[![](http://4.bp.blogspot.com/-37j8mFwZZ4w/VgrL_FAz7aI/AAAAAAAAEn0/Ldr4Qx53qSk/s320/blink.gif)](http://4.bp.blogspot.com/-37j8mFwZZ4w/VgrL_FAz7aI/AAAAAAAAEn0/Ldr4Qx53qSk/s1600/blink.gif)

The module above is a ~56\*96mm PCB with 84 WS2812B RGB LEDs mounted. These LEDs
are about $0.12 per on ebay/aliexpress, about 3x the price of normal RGB LEDs.
However these ones are serial addressable and internally maintain a 24-bit color
value (PWM’d even!), so it saves a lot of work multiplexing the emitters.

I eventually want to populate at least 4 of the modules and string them
together, controlled by an ESP8266 WiFi module, to display weather and time
information, or something like that.

Everything’s in my [github](https://github.com/noahp/lightBar).
