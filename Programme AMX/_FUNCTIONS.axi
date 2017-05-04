PROGRAM_NAME='_FUNCTIONS'



include '_DEVICES'
include '_CONSTANT'


#IF_NOT_DEFINED __Functions__
#DEFINE __Functions__






(***********************************************************)
// Fonction pour afficher une page
// Param = Panel
// Param = Name of the page
(***********************************************************)
define_function fnCallPage (dev dvDevice, char cPage[])
{
    send_command dvDevice,"'PAGE-',cPage"
}

(***********************************************************)
// Fonction pour afficher une Pop Up spécifique
// Param = Panel
// Param = Name of the Pop Up
(***********************************************************)
define_function fnCallPopUp (dev dvDevice, char cPopUp[])
{
    send_command dvDevice,"'PPON-',cPopUp"
}

(***********************************************************)
// Fonction pour faire un toggle d'une Pop Up spécifique
// Param = Panel
// Param = Name of the Pop Up
(***********************************************************)
define_function fnTogglePopUp (dev dvDevice, char cPopUp[])
{
    send_command dvDevice,"'PPOG-',cPopUp"
}

(***********************************************************)
// Fonction pour afficher une Pop Up spécifique
// Param = Panel
// Param = Name of the Pop Up
(***********************************************************)
define_function fnClosePopUp (dev dvDevice, char cPopUp[])
{
    send_command dvDevice,"'PPOF-',cPopUp"
}

(***********************************************************)
// Fonction pour fermer toutes les PopUp
// Param = Virtual Panel
(***********************************************************)
define_function fnCloseAllPopUp (dev dvDevice)
{
    send_command dvDevice,"'@PPX'"
}



#END_IF


