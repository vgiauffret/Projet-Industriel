PROGRAM_NAME='_Home'
(***********************************************************)
(***********************************************************)
(*  FILE_LAST_MODIFIED_ON: 04/05/2006  AT: 09:00:25        *)
(***********************************************************)
(* System Type : NetLinx                                   *)
(***********************************************************)
(* REV HISTORY:                                            *)
(***********************************************************)
(*
    $History: $
    TV SAT 
    Christian Crocetti
    christian.crocetti@gmail.com

    Include File to control the device in the Billard room
*)

include '_DEVICES'
include '_CONSTANT'
include '_Functions'

(***********************************************************)
(*                STARTUP CODE GOES BELOW                  *)
(***********************************************************)
DEFINE_START

(***********************************************************)
(*                THE EVENTS GO BELOW                      *)
(***********************************************************)
DEFINE_EVENT

// Navigation and Launch of the activities
button_event[dviPad_Billard,0]
{
    push:
    {
	switch (button.input.channel)
	{
	    case btnPowerOff: fnTogglePopUp (dviPad_Billard,PopUpPower) to[button.input]
	    case btnLightOff:
	    {
		to[button.input]
		off[dvKNX,26]
		wait 2
		fnCloseAllPopUp (dviPad_Billard)
	    }
	   
	    case btnTVOff:
	    {
		to[button.input]
		Navigation[iPad_Billard].Activity = false
		Navigation[iPad_Billard].SubActivity = false
		fnCloseAllPopUp (dviPad_Billard)
		fnSwitchingAudioVideoDGX1600 (DGX_Input_None,DGX_Output_Billard)
		fnPowerOffTV (vdvTV_Billard)
		send_level vdvReceiver_Billard,VOL_LVL,false
		fnPowerOffAmplifier(vdvReceiver_Billard)
		fnPowerOffBluRay(vdvBluRay_Billard)
	    }
	    case btnRoomOff:
	    {
		to[button.input]
		Navigation[iPad_Billard].Activity = false
		Navigation[iPad_Billard].SubActivity = false
		fnCloseAllPopUp (dviPad_Billard)
		// fnLightRoomOff ()
		fnSwitchingAudioVideoDGX1600 (DGX_Input_None,DGX_Output_Billard)
		fnPowerOffTV (vdvTV_Billard)
		send_level vdvReceiver_Billard,VOL_LVL,false
		fnPowerOffAmplifier(vdvReceiver_Billard)
		fnPowerOffBluRay(vdvBluRay_Billard)
		off[dvKNX,26]
	    }
	    case btnHome:
	    {
		to[button.input]
		Navigation[iPad_Billard].Activity = false
		Navigation[iPad_Billard].SubActivity = false
		fnCloseAllPopUp (dviPad_Billard)
	    }
	    case btnWatch: fnTogglePopUp (dviPad_Billard,PopUpWatchBillard) to [button.input]
	    case btnWatchTNT:
	    {
		to[button.input]
		Navigation[iPad_Billard].Activity = TNT
		Navigation[iPad_Billard].subActivity = TNT_Favorites
		fnPowerOnTV(vdvTV_Billard,dvRX_Billard_TV,'TV,1',false)
		fnPowerOnAmplifier (vdvReceiver_Billard,'PC,1')
		fnSwitchingAudioVideoDGX1600 (DGX_Input_None,DGX_Output_Billard)
		wait 2
		{
		    fnCloseAllPopUp (dviPad_Billard)
		    fnCallPopUp(dviPad_Billard,PopUpTNT)
		    fnCallPopUp(dviPad_Billard,subPopTNTFavorites)
		    if(timeline_active(TL_TV_Billard_ID))
		    fnCallPopUp(dviPad_Billard,popTVWait)
		}
	    }
	    case btnWatchSky:
	    {
		to[button.input]
		Navigation[iPad_Billard].Activity = Sky
		Navigation[iPad_Billard].SubActivity = Sky_Keypad
		pulse[dvSky_Billard,PWR_ON]
		fnSwitchingAudioVideoDGX1600 (DGX_Input_SKY_Billard,DGX_Output_Billard)
		fnPowerOnTV(vdvTV_Billard,dvRX_Billard_TV,'HDMI,2',false)
		fnPowerOnAmplifier (vdvReceiver_Billard,'SATELLITE,1')
		wait 2
		{
		    fnCloseAllPopUp (dviPad_Billard)
		    fnCallPopUp(dviPad_Billard,PopUpSky)
		    fnCallPopUp(dviPad_Billard,subPopSkyKeypad)
		    if(timeline_active(TL_TV_Billard_ID))
		    fnCallPopUp(dviPad_Billard,popTVWait)
		}
	    }
	    case btnWatchATV:
	    {
		to[button.input]
		Navigation[iPad_Billard].Activity = ATV
		pulse[dvRX_Billard_ATV,MENU_FUNC]
		fnPowerOnTV(vdvTV_Billard,dvRX_Billard_TV,'HDMI,2',false)
		fnSwitchingAudioVideoDGX1600 (DGX_Input_None,DGX_Output_Billard)
		fnPowerOnAmplifier (vdvReceiver_Billard,'GAME,1')
		{
		    fnCloseAllPopUp (dviPad_Billard)
		    fnCallPopUp(dviPad_Billard,PopUpATV)
		    if(timeline_active(TL_TV_Billard_ID))
		    fnCallPopUp(dviPad_Billard,popTVWait)
		}
	    }
	    case btnWatchBluray:
	    {
		to[button.input]
		Navigation[iPad_Billard].Activity = Bluray
		fnPowerOnBluRay(vdvBluRay_Billard)
		fnPowerOnTV(vdvTV_Billard,dvRX_Billard_TV,'HDMI,2',false)
		fnPowerOnAmplifier (vdvReceiver_Billard,'DVD,1')
		fnSwitchingAudioVideoDGX1600(DGX_Input_None,DGX_Output_Billard)
		wait 2
		{
		    fnCloseAllPopUp (dviPad_Billard)
		    fnCallPopUp(dviPad_Billard,PopUpBluray)
		    if(timeline_active(TL_TV_Billard_ID))
		    fnCallPopUp(dviPad_Billard,popTVWait)
		}
	    }
	   
	    case btnListen: fnTogglePopUp (dviPad_Billard,PopUpListenBillard) to[button.input]
	    case btnListenRadioInternet:
	    {
		to[button.input]
		Navigation[iPad_Billard].Activity = RadioInternet
		fnSetAutonomicInstance(vdvMCS_iPad_Billard,AutonomicStreamMain)
		fnSwitchAudioExtron(Extron_Input_RadioInternet,Extron_Output_Billard)
		fnPowerOnAmplifier (vdvReceiver_Billard,'CD,1')
		wait 2
		{
		    fnCloseAllPopUp (dviPad_Billard)
		    fnCallPopUp(dviPad_Billard,PopUpRadioInternet)
		}
	    }
	    
	    case VOL_UP: to[vdvReceiver_Billard,VOL_UP] to[button.input]
	    case VOL_DN: to[vdvReceiver_Billard,VOL_DN] to[button.input]
	    case VOL_MUTE: pulse[vdvReceiver_Billard,VOL_MUTE]
	    case btnLight: fnTogglePopUp (dviPad_Billard,PopUpLightBillard) to[button.input]
	    case btnLightOn:
	    {
		to[button.input]
		on[dvKNX,26]
		fnClosePopUp (dviPad_Billard,PopUpLightBillard)
	    }
	    case btnLightSetUp:
	    {
		to[button.input]
		Navigation[iPad_Billard].Activity = Light
		fnCloseAllPopUp (dviPad_Billard)
		fnCallPopUp (dviPad_Billard,PopUpLightSetUp)
	    }
	    case btnBlindsCurtains:
	    {
		to[button.input]
		Navigation[iPad_Billard].Activity = Blinds
		fnCloseAllPopUp (dviPad_Billard)
		fnCallPopUp (dviPad_Billard,PopUpBlinds)
	    }
	    
	    case btnCloseActivity: 
	    {
		fnCloseAllPopUp (dviPad_Billard)
		Navigation[iPad_Billard].Activity = false
		Navigation[iPad_Billard].SubActivity = false
	    }
	}
    }
}



// Gestion du Lighting
button_event[TP_Light,0]
{
    push:
    {
	switch(button.input.channel)
	{
	    case 1: [dvKNX,26] = ![dvKNX,26]
	    case 2:
	    case 3:
	    case 4:
	    case 5:
	    case 6:{}
	}
    }
}

(*****************************************************************)
(*                                                               *)
(*                      !!!! WARNING !!!!                        *)
(*                                                               *)
(* Due to differences in the underlying architecture of the      *)
(* X-Series masters, changing variables in the DEFINE_PROGRAM    *)
(* section of code can negatively impact program performance.    *)
(*                                                               *)
(* See ?ifferences in DEFINE_PROGRAM Program Execution?section *)
(* of the NX-Series Controllers WebConsole & Programming Guide   *)
(* for additional and alternate coding methodologies.            *)
(*****************************************************************)

DEFINE_PROGRAM

(*****************************************************************)
(*                       END OF PROGRAM                          *)
(*                                                               *)
(*         !!!  DO NOT PUT ANY CODE BELOW THIS COMMENT  !!!      *)
(*                                                               *)
(*****************************************************************)
