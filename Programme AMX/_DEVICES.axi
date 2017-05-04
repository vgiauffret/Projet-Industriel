PROGRAM_NAME='_DEVICES'

#IF_NOT_DEFINED __DEVICES__
#DEFINE __DEVICES__

DEFINE_DEVICE

MASTER = 	0:01:1		(*NI-900*)
TV =		5001:02:1 	(*NI-900 IR OUTPUT #1***** TV *****)
IR2 = 		5001:03:1 	(*NI-900 IR OUTPUT #2*)
IR3 = 		5001:04:1 	(*NI-900 IR OUTPUT #3*)
RELAYS = 	5001:05:1 	(*NI-900 I/O 1-4*)
IRRX = 		5001:06:1 	(*NI-900 Rx Port *)

//SWITCH HDMI
Kramer 	= 	0:03:1 		(*IP KRAMER SWITCH HDMI*)

//PASSERELLE AMX/KNX
KNX =		0:04:1		(*IP PASSERELLE AMX/KNX*)
vdvKNX = 	33001:01:0	(*Virtual Dev AMX/KNX*)

//Raspberry
dvIPServer = 	0:05:0
Raspberry = 	0:06:0		(*IP Raspberry*)

// Touch Panel
TP = 		11001:01:0 	(*TOUCH PANEL*)


#END_IF