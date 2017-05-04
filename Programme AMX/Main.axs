PROGRAM_NAME='Main'


(*
    Adresses IP 
    NI-900 =		192.168.0.200
    Kramer HDMI =	192.168.0.201
    Passrelle KNX/AMX =	192.168.0.202
    Touch Panel =	192.168.0.203
    Raspberry =		192.168.0.204
*)

include '_DEVICES'
include '_CONSTANT'
include '_FUNCTIONS'
#INCLUDE 'EIB_Table.axi'

DEFINE_VARIABLE
VOLATILE LONG lEIB_Value[3001]
(***********************************************************)
(*                STARTUP CODE GOES BELOW                  *)
(***********************************************************)
DEFINE_START

IP_CLIENT_OPEN(Kramer.PORT ,IP_Kramer, IP_Port ,IP_TCP)
IP_CLIENT_OPEN(KNX.PORT ,IP_KNX ,IP_Port_KNX ,IP_TCP)
IP_SERVER_OPEN (dvIPServer.PORT, 8000, IP_TCP)

DEFINE_MODULE 'CTEIB7_mod_v2.0.4' EIB7(vdvKNX, KNX, lEIB_Value)

(***********************************************************)
(*                THE EVENTS GO BELOW                      *)
(***********************************************************)
DEFINE_EVENT

 DATA_EVENT[dvIPServer]
{
 ONERROR:
 {
 SEND_STRING 0,"'error: server=',ITOA(Data.Number)"
 }
 ONLINE:
 {
 SEND_STRING 0,"'online: server'"
 }
 OFFLINE:
 {
  IP_SERVER_OPEN (dvIPServer.PORT, 8000, IP_TCP)
 }
 STRING:
 {
    
    IF (FIND_STRING(Data.Text,'TNT',1))
	SEND_STRING Kramer,"$01,$81,$81,$81"
    IF (FIND_STRING(Data.Text,'APTV',1))
	SEND_STRING Kramer,"$01,$82,$81,$81"
    IF (FIND_STRING(Data.Text,'PLAY',1))
	SEND_STRING Kramer,"$01,$83,$81,$81"
    IF (FIND_STRING(Data.Text,'LON',1))
	{
	EIBSet(vdvKNX,1,1)
	EIBSet(vdvKNX,2,1)
	}
    IF (FIND_STRING(Data.Text,'LOFF',1))
	{
	EIBSet(vdvKNX,1,0)
	EIBSet(vdvKNX,2,0)
	}
    IF (FIND_STRING(Data.Text,'ALLOFF',1))
	{
	EIBSet(vdvKNX,1,0)
	EIBSet(vdvKNX,2,0)
	EIBSet(vdvKNX,3,0)
	}
    IF (FIND_STRING(Data.Text,'VOPEN',1))
	EIBSet(vdvKNX,3,1)
    IF (FIND_STRING(Data.Text,'VCLOSE',1))
	EIBSet(vdvKNX,3,0)
 }
}



DATA_EVENT[vdvKNX]
{
ONLINE :
    {
    
    }
OFFLINE :
    {
	IP_CLIENT_OPEN(KNX.PORT ,IP_KNX ,IP_Port_KNX ,IP_TCP)
    }
}

DATA_EVENT[Kramer]
{
ONLINE :
    {
    }
OFFLINE :
    {
	IP_CLIENT_OPEN(Kramer.PORT ,IP_Kramer, IP_Port ,IP_TCP)
    }
}

button_event[TP,0]
{
    push:
    {
    
	switch (button.input.channel)
	{
	case PowerOff :
	    {
		to[button.input]
		EIBSet(vdvKNX,1,0)
		EIBSet(vdvKNX,2,0)
		EIBSet(vdvKNX,3,0)
		fnCloseAllPopUp (TP)
	    }
	case btnHome :
	    {
		to[button.input]
		fnCloseAllPopUp (TP)
	    }
	case btnWatch: fnTogglePopUp (TP,PopUpWatch) to [button.input]
	    case btnWatchTNT:
	    {
		to[button.input]
		SEND_STRING Kramer,"$01,$81,$81,$81"
		wait 2
		{
		    fnCloseAllPopUp (TP)
		}
	    }
	    case btnWatchATV:
	    {
		to[button.input]
		    SEND_STRING Kramer,"$01,$82,$81,$81"
		wait 2
		{
		    fnCloseAllPopUp (TP)
		}
	    }
	    case btnPlaystation:
	    {
		to[button.input]
		    SEND_STRING Kramer,"$01,$83,$81,$81"
		wait 2
		{
		    fnCloseAllPopUp (TP)
		}
	    }
	    case btnWatchOFF:
	    {
		to[button.input]
		    
		wait 2
		{
		    fnCloseAllPopUp (TP)
		}
	    }
	    
	    //case VOL_UP: to[vdvReceiver_Billard,VOL_UP] to[button.input]
	    //case VOL_DN: to[vdvReceiver_Billard,VOL_DN] to[button.input]
	    //case VOL_MUTE: pulse[vdvReceiver_Billard,VOL_MUTE]
	    case btnLight: fnTogglePopUp (TP,PopUpLight) to[button.input]
	    case btnLightOn:
	    {
		to[button.input]
		EIBSet(vdvKNX,1,1)
		EIBSet(vdvKNX,2,1)
		fnClosePopUp (TP,PopUpLight)
	    }
	    case btnLightLeft:
	    {
		to[button.input]
		EIBSet(vdvKNX,1,1)
		EIBSet(vdvKNX,2,0)
		fnClosePopUp (TP,PopUpLight)
	    }
	    case btnLightRight:
	    {
		to[button.input]
		EIBSet(vdvKNX,1,0)
		EIBSet(vdvKNX,2,1)
		fnClosePopUp (TP,PopUpLight)
	    }
	    case btnLightOff:
	    {
		to[button.input]
		EIBSet(vdvKNX,1,0)
		EIBSet(vdvKNX,2,0)
		fnCloseAllPopUp (TP)
	    }
	    case btnBlinds: fnTogglePopUp (TP,PopUpBlinds) to[button.input]
	    case btnBlindsOpen:
	    {
		to[button.input]
		EIBSet(vdvKNX,3,1)
		fnCloseAllPopUp (TP)
	    }
	    case btnBlindsStop:
	    {
		to[button.input]
		EIBSet(vdvKNX,5,1)
		fnCloseAllPopUp (TP)
	    }
	    case btnBlindsInclinaison:
	    {
		to[button.input]
		EIBSet(vdvKNX,5,1)
	    }
	    case btnBlindsClose:
	    {
		to[button.input]
		EIBSet(vdvKNX,3,0)
		fnCloseAllPopUp (TP)
	    }
	}
    }
}
