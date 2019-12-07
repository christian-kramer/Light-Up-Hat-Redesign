# Light-Up-Hat-Redesign
Putting wearable technology in a winter hat

---

Most people, when talking about "hats" in the hobbyist embedded world, are referring to little devices that fit on top of a Raspberry Pi. But no, I'm talking about an actual hat... like the one that goes on your head.

It all starts with a mistake; letting my winter hat with a built-in headlamp go through my wash without taking the electronics out first.

Now, these things aren't terribly expensive to replace. Mine was just $13 on Amazon.

![LED Beanie](https://i.imgur.com/Lzzrks8.png)

But being savvy with electronics, I decided I wanted to try to fix mine. But... what I found was rather disheartening.

![LED Beanie Circuitry](https://i.imgur.com/XoxJti8.jpg)

These things are cheap for a reason, and that reason is they're not very well built. The wires of the battery pack were just barely soldered onto the LED contacts to begin with... any fix I did to this thing was still going to be temporary. Add to that the annoyance of having to turn the switch on the battery pack off with my fingernail, and... I smelled an opportunity for an improvement. To the drawing board!

I knew I wanted to keep the "5-LED array" form factor, but I also wanted a button next to the LEDs I could push to toggle them on and off, so I didn't have to take off my gloves like I currently had to do. I spent a lot of time trying to figure out an all-analog method of doing this push button that didn't require many components. But in the end, I decided I should use up those PIC10F220s I had ordered for my first-ever circuit boards I designed a year ago.

Here's what I came up with for a board:

![Hat PCB Render](https://i.imgur.com/l2q7wPu.jpg)

First off, we've got some nice big through-hole pads for the battery wires to connect to. I want to be able to yank on those things without even budging. Next, we've got the on/off push-button. I decided to use these silicone "soundless tact switches" in place of the typical clicky kind. That way I didn't have to use much force, allowing me to keep my gloves on.

![Tact Switch](https://i.imgur.com/MpnGQg6.png)

The battery leads into the nifty XC6206 SOT-23 3.3v regulator I found on eBay from Torex. At $0.40, they're a steal to save some space.

![XC6206](https://i.imgur.com/hs1SIWJ.png)

The regulator then leads into the ever-faithful PIC10F220, which handles the input of the button and also controls a 2n3906 PNP transistor, also in a SOT-23 package. This drives the 5 LEDs, which should give us plenty of light!

Finally, everything arrived in the mail.

![Board Face 1](https://i.imgur.com/YTb7eAU.jpg)
![Board Face 2](https://i.imgur.com/kEyeXWb.jpg)

The boards turned out great! I opted for black so it would match the hat color, and because I absolutely love JLCPCB's matte black solder mask.

On to assembly!

![Assembled](https://i.imgur.com/YKkdg9p.jpg?1)

Once everything was put together... it didn't work! No matter what I did, the PIC10F220 just wouldn't talk to my PC! I was starting to have flashbacks to a year ago, when I tried using these PICs for the first time. Maybe I had a bad batch?

I refused to believe that. First thing I did was check to ensure all 6 pins had good contact with the traces... and what do you know! Pin 1, the programming Data Pin, wasn't soldered properly underneath. After some solder paste and a reflow, the PIC talked! So, I whipped up a quick program to turn on the PNP transistor, and... nothing. No light. What gives? I used my multimeter again, which was showing  0v at the base, 3.3v at the emitter, and... 0v at the collector. With a 1KΩ base resistor, there should certainly be enough current flowing to achieve saturation. What in the world? Is my understanding of how transistors work flawed? I pored for hours over schematics and reference designs, trying to figure out why my 2n3906 wasn't turning on. And then, I happened to glance at a diagram for the SOT-23 package pinout.

![SOT-23 BJT](https://i.imgur.com/nKqvJAQ.png)

I had to do a double-take. Wait, the base is on the *left*?! Oh no, I designed the board with the base on the right!

![Bad Design](https://i.imgur.com/oDeax53.png)

![Problem](https://i.imgur.com/bdaIOxs.png)

The SOT-23 version's base and emitter are swapped from the TO-92 version's. Gah! What do I do now?

Funny enough, this is actually a common design error, even amongst professionals. So common, in fact, that they apparently make reversed versions of SOT-23 BJTs for exactly this occasion, (though probably for cases where re-spinning boards would cost $$$). A hobbyist-level fix is actually to bend the pins and flip the transistor upside-down. Which worked! The LEDs turned on!

Unfortunately, soon after, I accidentally connected the power leads incorrectly, and destroyed the board with 6 volts reverse polarity. But when I tried assembling another board, two of the PIC10F220's pins bridged with solder. Try as I might, I couldn't get them un-bridged... so I tried making *another*. But that one bridged too! At this point, I got so frustrated I gave up on hand-assembling, and decided to try out a new feature of JLCPCB: their SMT Assembly Service.

The way it works is  you go to [this](https://jlcpcb.com/client/index.html#/parts/componentSearch) page and find each component you need in your schematic. When you click on one, it will give you the description, datasheet, and "LCSC Part #". This part number is what you will specify in your schematic symbol's properties, as "LCSC".

![Part Search](https://i.imgur.com/xsfA2OF.png)

![LCSC](https://i.imgur.com/ILornll.png)

At the end of your design process, when you're ready to export your files for manufacture, there are some extra steps to follow for providing the part coordinates and tooling holes needed, which JLCPCB explains [here](https://support.jlcpcb.com/category/78-smt-assembly).

Finally, the boards arrived, and they looked great! Everything was assembled except for the LEDs, button, and battery pack. And I needed to program them too, of course.

Video of it working on my bench: https://i.imgur.com/HR5HdYS.mp4

Video of it working on my bench, with battery pack: https://i.imgur.com/gJqf0xF.mp4
