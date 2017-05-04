PROGRAM_NAME='_CONSTANT'


#IF_NOT_DEFINED __CONSTANT__
#DEFINE __CONSTANT__

DEFINE_CONSTANT

(*            Start Channel & Address Port 1               *)
(***********************************************************)
// Channel Panel 
integer PowerOff =			1
integer btnHome =			9

// Channel Panel Main Activity
integer btnWatch =			10 
integer btnLight =			11 
integer btnBlinds =			12 

//Volume
integer btnVolumeUp =			24
integer btnVolumeDown =			25
integer btnVolumeMute =			26
// Channel Video Activity
integer btnWatchTNT =			51 
integer btnWatchATV =			52  
integer btnPlaystation =		53
integer btnWatchOFF =			54

// Channel Light Activity
integer btnLightOn =			70
integer btnLightLeft =			71 
integer btnLightRight =			72 
integer btnLightOFF =			73

// Channel Blinds Activity
integer btnBlindsOpen =			80 
integer btnBlindsStop =			81 
integer btnBlindsInclinaison =		82
integer btnBlindsClose =		83


// Pop Up Name Activities
char PopUpWatch[] =			'TV'
char PopUpLight[] =			'Lumière'
char PopUpBlinds[] =			'VoletsRoulants'

//Adresse IP KRAMER
char IP_Kramer []= '192.168.0.201'
long IP_Port = 5000

//Adresse IP KNX
char IP_KNX []= '192.168.0.202'
long IP_Port_KNX = 10002



#END_IF
