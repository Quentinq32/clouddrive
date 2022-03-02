@Echo Off
color b
echo					   `7MMM.     ,MMF'                                 
echo					     MMMb    dPMM                                   
echo					     M YM   ,M MM   .gP"Ya  `7MMpMMMb.  `7MM  `7MM  
echo					     M  Mb  M' MM  ,M'   Yb   MM    MM    MM    MM  
echo					     M  YM.P'  MM  8M""""""   MM    MM    MM    MM  
echo					     M  `YM'   MM  YM.    ,   MM    MM    MM    MM  
echo					   .JML. `'  .JMML. `Mbmmd' .JMML  JMML.  `Mbod"YML.
echo	  				   =================================================
echo	  				   =================================================
echo	  				      ***		                       ***
echo	  				      ********************************************
echo	  				      ********************************************
echo	  				      ***      				       ***
echo	  				      ***     1  Arret ecran temporise         ***
echo	  				      ***      				       ***
echo	  				      ***     2  Arret ordinateur temporise    ***
echo	  				      ***      				       ***
echo	  				      ***     3  Fermeture session temporise   ***
echo	  				      ***      				       ***
echo	  				      ***     4  Veille Prolongee temporise    ***
echo	  				      ***      				       ***
echo	  				      ***     5  Annuler Arret ordinateur t    ***
echo	  				      ***      				       ***
echo	  				      ********************************************
echo	  				      ********************************************
echo	  				      ***		                       ***
set /p Arret="Choix : 1-2-3-4-5 ? "

set /a choix1=1
set /a choix2=2
set /a choix3=3
set /a choix4=5
set /a choix5=4

if "%Arret%" == "%choix1%" goto :LabelUn
if "%Arret%" == "%choix2%" goto :LabelDeux
if "%Arret%" == "%choix3%" goto :LabelTrois 
if "%Arret%" == "%choix4%" goto :LabelQuatre
if "%Arret%" == "%choix5%" goto :LabelCinq 

:LabelUn

@Echo Off
echo  				      ********************************************
echo  				      ********************************************
echo  				      ***      				       ***
echo  				      ***         ARRET ECRAN TEMPORISE        ***
echo  				      ***      				       ***
echo  				      ********************************************
echo  				      ********************************************

set /p temps="Dans combien de minutes ? "
set /a minutes=60*temps
echo Encore %temps% minutes avant l'arret!
echo  				      ********************************************
echo  				      ********************************************
echo  				      *** 				       ***
echo  				      ***  Appuyer sur une touche pour passer  ***
echo  				      ***  				       ***
echo  				      ********************************************
echo  				      ********************************************
timeout /t %minutes% 
powershell.exe -Command "(Add-Type '[DllImport(\"user32.dll\")]public static extern int SendMessage(int hWnd,int hMsg,int wParam,int lParam);' -Name a -Pas)::SendMessage(-1,0x0112,0xF170,2)"




:LabelDeux
@Echo Off
echo  				      ********************************************
echo  				      ********************************************
echo  				      ***      				       ***
echo  				      ***       ARRET GENERAL TEMPORISE        ***
echo  				      ***      				       ***
echo  				      ********************************************
echo  				      ********************************************

set /p temps="Dans combien de minutes ? "
set /a minutes=60*temps
echo Encore %temps% minutes avant l'arret!
shutdown -s -t %minutes%
echo  			     *************************************************************
echo  			     *************************************************************
echo  			     ***  				                       ***
echo  			     ***  				                       ***
echo  			     ***    Appuyer sur une touche pour fermer la fenetre      ***
echo  			     ***  				                       ***
echo  			     ***      						       ***
echo  			     ***   NB : Pour annuler relancer et choisir l'option 5    ***
echo  			     *** 				                       ***
echo  			     ***  				                       ***
echo  			     *************************************************************
echo  			     *************************************************************
timeout /t %minutes% 
exit

:LabelTrois
@Echo Off
echo  				      ********************************************
echo  				      ********************************************
echo  				      ***      				       ***
echo  				      ***     FERMETURE SESSION TEMPORISE      ***
echo  				      ***      				       ***
echo  				      ********************************************
echo  				      ********************************************

set /p temps="Dans combien de minutes ? "
set /a minutes=60*temps
echo Encore %temps% minutes avant l'arret!
echo  				      ********************************************
echo  				      ********************************************
echo  				      ***  				       ***
echo  				      ***  Appuyer sur une touche pour passer  ***
echo  				      ***  				       ***
echo  				      ********************************************
echo  				      ********************************************
timeout /t %minutes% 
shutdown -l



:LabelQuatre
shutdown -a
exit

:LabelCinq
@Echo Off
echo  				      ********************************************
echo  				      ********************************************
echo  				      ***      				       ***
echo  				      ***     VEILLE PROLONGEE TEMPORISEE      ***
echo  				      ***      				       ***
echo  				      ********************************************
echo  				      ********************************************

set /p temps="Dans combien de minutes ? "
set /a minutes=60*temps
echo Encore %temps% minutes avant l'arret!
echo  				      ********************************************
echo  				      ********************************************
echo  				      ***  				       ***
echo  				      ***  Appuyer sur une touche pour passer  ***
echo  				      ***  				       ***
echo  				      ********************************************
echo  				      ********************************************
timeout /t %minutes% 
shutdown -h







