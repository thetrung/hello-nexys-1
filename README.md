## Hello Nexys Video #1
Everything is the same to ProjectF in setting up the Nexys Video & working on getting used to switches, leds and buttons but I'm gonna tell some differences.

## NOTE :
#### 1. Power :

   Nexys-Video need 12V-Power to plug-in BEFORE your mini-usb can be recognized in Vivado to program JTAG/QSPI.
   
#### 3. JTAG Programming Mode :

   Require Header in JTAG mode on JP4 Sector.
   
#### 4. To install cable driver on Linux :


       cd ${vivado_install_dir}/data/xicom/cable_drivers/lin64/install_script/install_drivers/
       sudo ./install_drivers

  
#### 5. To install on QSPI : 

https://digilent.com/reference/programmable-logic/nexys-video/reference-manual

#### 6. Verilog Code :

I actually changed the code a little bit to make it easier to understand (&Testing) in the last example where you have both switches `sw[1:0] == 2b'11` to change `led[3:0] = 2b'0110`, so button-C (B22) can change state into `led[3:0] = 2b'1001`.
