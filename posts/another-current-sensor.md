---
title: 'Another current sensor'
layout: default.liquid
published_date: '2017-02-15 06:06:00 -08:00'
is_draft: false
---

Building out a pretty basic low-power 2 channel current+voltage meter, based around the very nice [PAC1720](http://www.microchip.com/wwwproducts/en/PAC1720).

I'm using another Microchip part, MCP2221A, as the USB-I2C bridge. Simple little design but should allow me to perform some automated current+voltage measurements on LVDC type circuits.

The PAC1720 part is about $2/piece from Mouser/Digikey, same for the MCP2221A, so BOM ends up around $7.50 including OSH fab. Pretty reasonable for the accuracy and range provided by the PAC1720.

One interesting thing I found is that the MCP2221A uses USB-HID for I2C comms (vs CDC via bulk transfer), surprising, but nice, means the driver situation is easy.

[https://github.com/noahp/psense](https://github.com/noahp/psense)

![Render](https://github.com/noahp/psense/raw/master/psense_render.png)