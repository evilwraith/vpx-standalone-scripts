' Pharaoh / IPD No. 1778 / May, 1981 / 4 Players
' VPX - version 1 by 32assassin

'******** Revisions done by UnclePaulie on Hybrid version 0.01 - 2.0 *********

' v.01: Updated playfield images, and sharpened it.  (Images used from TAB on vpforums)
'		Moved all the elements (posts, rubbers, walls, etc.) to match layout on real playfield
'		Added posts, sleeves, pins, rubbers, walls as needed to match the real table.
'		Changed the lower flippers to new williams flipper bats
'		Adjusted the table physics to recommended standards, and then tweaked to match other era tables.
'		Updated ramp, playfield, upper playfield physics
' v.02	Started with the ramp primitives and plastic acrylics from Watacaractr's Pharoah Dead Rise
'		Added flipper shadows
'		Not all the playfield lights were working, had to get them corrected.
' 		Changed all the screw prims, sleeves, posts
'		Added GI lights from Watacaractr as a better basis.  The original was very basic. Made lots of mods to them.
'		I adjusted GI from there, such that drop target shadows will hide, and minimal bends around posts.
'		Added GI Bulb primitives.
'		Changed the sidewalls to black, and the wood to the lighter color.
' v.03: Enabled hybrid code for desktop, VR, and cabinet modes
'		Created a new desktop mode backdrop	
'		Removed displaytimer and added to frame timer	
'		Added fastflips
' 		Added updated knocker position and code
'		Added fleep sounds, images, materials, and code from solar fire to start base.
' 		Added basic VR Room elements, images, and materials.  Animated flippers and plunger.  Added room and clock options.
' 		Added Fleep Sounds, nFozzy / Roth physics and flippers.  Updated the flipper physics per recommendations.
'		Added code for DT, ST, slingshot corrections, flippers, physics, dampeners, shadows
' 		Added Apophis sling corrections, and updated the physics.
'		Added flipper physics
'		Added GI Relay Sound, LUT Click sound. Cleaned up other sounds.
' 		Completely changed the trough logic to handle balls on table
'		Changed the apron wall structure to create a trough.
' 		No longer destroy balls.  Use a global gBOT throughout all of script.
'		Removed all the getballs calls and am only useing gBOT.  Will help eliminate stutter on slower CPU machines
'		Changed the outer walls to be a lighter wood (like real table... it was black)
' 		Removed the Enter1 and 2 kickers, as it destroyed balls.  I put a physics ramp prim in there from Bord's Black Knight.
'		Updated LUT's to additional images, and new subroutines, and ability to save to user text file.
' 		Added lighter ball images provided by hauntfreaks and g5k ball scratches, changeable in script 
'		Adjusted the playfield material to ensure active, and visible.  
' v.04	Added a physical VUK for the hidden tomb shooter, and associated walls.  It would destroy balls, rather than sending them up.
' 		Added a backrail metal wall.  
'		Added ballrolling to top playfield
' v.05	Added VPW Dynamic Ball Shadows to the solution done Iakki, Apophis, and Wylte.  For upper playfield, had to change value of 110 to 90, since this upper playfield is lower
'		Updated all elements physics and sound routines.
'		Instead of adding ramp triggers for ramp rolling sounds, I decided to have metal ramps have just a metal hit sound, since they were short.
'		Updated saucer / kicker logic with sub method and fleep sounds 
'		Added groove to plunger lane, and small ball release ramp to get up.  
'		Added a couple GI lights under apron 
'		Changed primitive and image of the plunger cover.  Also changed the plunger pull speed.
'		Changed the desktop background to something more basic.  
' 		Added the game over, BIP, etc. to the desktop backglass
' v0.6	Added new drop and standup targets to the solution done by Rothbauerw
'		Added Drop Target Shadows
' 		Changed DT texture images to pharaoh ones.
' v0.7	Cut holes in playfield for slings and triggers
'   	Updated the playfield for slings, triggers holes, and target holes, and added plywood hole images.
'		Modified the sling primatives and sling walls to drop below playfield.  Looks better in VR.
'		Magnasaves weren't working. Fixed.
' v0.8	Updated to Lampz lighting routine by VPW, and modified the solenoid routines to accomodate.
'		Changed insert light colors and parameter settings
'		Updated some of the table1.init calls
'		Added GI lights to Lampz.
' v0.9	Added sling corrections to top sling 
'		Changed credit light to L2.  Moved to correct location, and adjusted the height. Added a credit light prim
'		Added top right wall for upper playfield. Also lengthened the left top side wall.
'		Adjusted vertical walls between UPF and Lower PF
' 		Changed the fat sleeves to different primitives. Looked really weird in VR.
'		Adjusted the apron height, image, and changed the plunger cover primitive.
'		Adjusted the lower inlane metal rails down
'		Lots of adjustments of upper VUK locations, and associated walls and plastics.
'		Adjusted how far the slings came out, as they were way too far.
'		Did additional GI updates, and added another GI light to the captive ball area.
'		Adjusted all rubbers size and height.  Also changed the height of slings, and the screws and caps.
' v0.10	Added GI to white screws, rubbbers, posts, apron, plunger, flippers, side walls, and targets (each target needed separate material since active)
'		Added GI to the sleeves
'		Added basic ball GI brightness level.
'		Added separate routines for the brightness of the captive ball, and when other balls are on top or lower playfield.
' v0.11	Also added nicer looking Williams gray kicker primitives. 
'		Changed metal GI plates, walls, and rails to include aluminum and aluminum scratched dark images.
' v0.12	Animated VR Backglass, and changed both the desktop and VR backglass lamps and GI to Lampz.
' v0.13	Added playfield mesh for saucers, and added a a slight wall/ramp on the left side of right lower saucer, emulating real table.
'		Changed width of metal walls to 1.
' v0.14	Added a mesh for the saucers on the upper playfield and adjusted kickers.
'		Made the top acrylics collidable
'		Changed the physics of the upperplayfield_mesh slightly.
'		Adjusted saucer walls and saucer strength to ensure accurate to ball rollouts like online videos.
' v0.15	Updated some VR Graphics.
'		Updated drop target decals and associated GI.
'		Adjusted left desktop side rail location, and height of both.
'		Added bonus ball timer to desktop backglass.
'		Added ruleset to table info.
'		Added additional GI to pharaoh's chamber and slave's tomb, as they should be lit nicely
' v0.16	Added updated playfield and insert text for 3D inserts.  Needed both upper and lower playfield inserts.
'		Adjusted all the insert light intensities, fade, falloff, heights, colors, etc.  
'		Set alpha channel on text overlays to 50.  Made the text on inserts look so much better.
'		Added insert light blooms
'		Adjusted topper and cab graphics in VR
'		Updated the playfield text insert overlay
' v0.17 Updated the upper playfield text overlay for Pharaoh
'		Correction to rollover triggers
'		Added GI Brightness increase to inserts when GI is off and reduced it when GI on for both top and bottom Playfield
'		Fully animated and intensity adjusted the VR Backglass.
' v0.18	Added flipper tricks to the top flippers.
'		Adjusted the Ramp13 wall to avoid it hitting the post coming out, also reduced the strength of kicker43 slightly.
' v0.19	Completed VR backglass with the text lamps
'		Edited the magna save text on the playfield image.
'		Increased the strength of the magna saves
'		Cleaned up some images.
'		Adjusted strength of flippers.  Was a little too strong.
'		Updated topper image for VR.
'		Added a backbox grill for VR.
' v0.20	Changed flipper strength to 1700 and end angle to 70 to ensure accurate shots are made per videos online
'		Rounded the ends of the inlane metal guides, as ball got stuck once on top of it.
'		Adjusted magnet radius and strength
' 		Updated POV for cab
'		Changed alpha setting on playfield image to 254 (could see around the inserts)
'		Adjusted the cutout prims around triggers.
'		Turned off "reflect on playfield" for triggers, slings, sling walls, and targets (anything over an open hole)
' v0.21	Visual mods: Reduced overall reflectivity, playfield material to 164, made drop target shadows darker, changed some GI shapes
'		Removed ball light reflection under rollover holes when ball rolls over. (could see ball reflection on nothing (was gray)).  
'		Changed cab side walls to be taller if selected in cab mode.
' v0.22 Slightly moved and rotated the standup target (sw32).
'		The lower left post and rubber (by outlane) wasn't set to proper medium difficulty.  Aligned accordingly.
' v0.23 Modified the GI Posts to a little brighter when GI is off.  (Thalamus pointed out)
' v0.24 Increased the radius of the magna save magnets, and the strength up a little (PinstratsDan pointed out)
'		Turned off in game AO, as some saw halo on ball.
'		Turned down Day/Night down 1/2 tick, and upped the GI slightly (Apophis recommendation)	
'		Removed the physical element of the "death save" anti-biff ball snubbers behind the flippers.  Shouldn't need on VPX. (Issue report on another Table, so removed here)	
'		Corrected script error on upper flipper tricks
'		Moved the VR topper up a little and forward.  (Thanks leojreimroc)
' v0.25	Used a cylinder primitive for the anti-biff ball snubbers (Rothbaurerw recommended, and also raising apron wall higher)
'		Raised the backrail.
' v2.0	Released Version
'		Slight rotation of saucer prims.
'		Modified the trough logic for updating on outhole and BallRelease.  Increased the drain kicker slightly.
'		The outhole solenoid is quite fast for kicking a ball out, so I added a slight delay to the drain swtich setting.
'		Added an apron wall block for physics
' v2.01 Hauntfreaks updated the plastics, playfields, and the side woods to look much better.  Also JasonDH provided a better image behind the upper sling and tomb exit. I merged with HF's image.
' v2.02	HiRez provided an updated Apron image.
'		Minor correction to the flipper tricks on the upper playfield.
' v2.03	Updated Credit light to be tied to actual number of credits.

' Thanks to the VPW team for testing (especially Thalamus, Apophis, Bord, Rothbaurerw, leojreimroc, Sixtoe, and PinStratsDan)

Option Explicit
Randomize


'*******************************************
' Desktop, Cab, and VR OPTIONS
'*******************************************

const VR_Room = 0 ' 1 = VR Room; 0 = desktop or cab mode

	Dim cab_mode, DesktopMode: DesktopMode = table1.ShowDT
	If Not DesktopMode and VR_Room=0 Then cab_mode=1 Else cab_mode=0

const BallLightness = 1 '0 = dark, 1 = not as dark, 2 = bright, 3 = brightest 
const cabsideblades = 1 '0 = off, 1 = on;  some users want sideblades in the cabinet, some don't.
const BallReflections = 1 '0 = off, 1 = on 'force ball reflections to be on or off in the script.
DisableLUTSelector = 0  ' Disables the ability to change LUT option with magna saves in game when set to 1

' *** If using VR Room:

const CustomWalls = 0 'set to 0 for Modern Minimal Walls, floor, and roof, 1 for Sixtoe's original walls and floor
const WallClock = 1	  '1 Shows the clock in the VR minimal rooms only
const topper = 1		 '0 = Off 1= On - Topper visible in VR Room only
const poster = 1		 '1 Shows the flyer posters in the VR room only 
const poster2 = 1		 '1 Shows the flyer posters in the VR room only 

' ****************************************************

'----- Shadow Options -----
Const DynamicBallShadowsOn = 1		'0 = no dynamic ball shadow ("triangles" near slings and such), 1 = enable dynamic ball shadow
Const AmbientBallShadowOn = 1		'0 = Static shadow under ball ("flasher" image, like JP's)
									'1 = Moving ball shadow ("primitive" object, like ninuzzu's)
									'2 = flasher image shadow, but it moves like ninuzzu's

' *** These define the appearance of shadows in your table
'Ambient (Room light source)
Const AmbientBSFactor         = 0.9    '0 to 1, higher is darker
Const AmbientMovement        = 2        '1 to 4, higher means more movement as the ball moves left and right
Const offsetX                = 0        'Offset x position under ball    (These are if you want to change where the "room" light is for calculating the shadow position,)
Const offsetY                = 5        'Offset y position under ball     (for example 5,5 if the light is in the back left corner)
'Dynamic (Table light sources)
Const DynamicBSFactor         = 0.95    '0 to 1, higher is darker
Const Wideness                = 20    'Sets how wide the dynamic ball shadows can get (20 +5 thinness is technically most accurate for lights at z ~25 hitting a 50 unit ball)
Const Thinness                = 5        'Sets minimum as ball moves away from source

'----- General Sound Options -----
Const VolumeDial = 0.8				'Overall Mechanical sound effect volume. Recommended values should be no greater than 1.
Const BallRollVolume = 0.5 			'Level of ball rolling volume. Value between 0 and 1
Const RampRollVolume = 0.5 			'Level of ramp rolling volume. Value between 0 and 1

'----- Phsyics Mods -----
Const FlipperCoilRampupMode = 0   	'0 = fast, 1 = medium, 2 = slow (tap passes should work)
Const TargetBouncerEnabled = 1 		'0 = normal standup targets, 1 = bouncy targets
Const TargetBouncerFactor = 0.7 	'Level of bounces. Recommmended value of 0.7



'//////////////---- LUT (Colour Look Up Table) ----//////////////
'0 = Fleep Natural Dark 1
'1 = Fleep Natural Dark 2
'2 = Fleep Warm Dark
'3 = Fleep Warm Bright
'4 = Fleep Warm Vivid Soft
'5 = Fleep Warm Vivid Hard
'6 = Skitso Natural and Balanced
'7 = Skitso Natural High Contrast
'8 = 3rdaxis Referenced THX Standard
'9 = CalleV Punchy Brightness and Contrast
'10 = HauntFreaks Desaturated
'11 = Tomate Washed Out 
'12 = VPW Original 1 to 1
'13 = Bassgeige
'14 = Blacklight
'15 = B&W Comic Book
'16 = Skitso New Warmer LUT
'17 = Original LUT

Dim LUTset, DisableLUTSelector, LutToggleSound, LutToggleSoundLevel
LutToggleSound = True
LutToggleSoundLevel = .1

LoadLUT

'LUTset = 17			' Override saved LUT for debug

SetLUT
ShowLUT_Init


On Error Resume Next
ExecuteGlobal GetTextFile("controller.vbs")
If Err Then MsgBox "You need the controller.vbs in order to run this table, available in the vp10 package"
On Error Goto 0


'*******************************************
' Constants and Global Variables
'*******************************************

Const UsingROM = True				'The UsingROM flag is to indicate code that requires ROM usage. Mostly for instructional purposes only.

Const BallSize = 50
Const BallMass = 1
Const tnob = 2 ' total number of balls
Const lob = 0   'number of locked balls

Dim tablewidth: tablewidth = Table1.width
Dim tableheight: tableheight = Table1.height
Dim BIPL : BIPL = False				'Ball in plunger lane

Const cGameName="pharo_l2",UseSolenoids=2,UseLamps=0,UseGI=0

LoadVPM"01500000","S7.VBS",3.1

'*************************************************************

'Solenoid Call backs
'********************************************************************************************************** 
SolCallback(1) = "SolOuthole"					'Outhole
SolCallback(2) = "SolBallRelease"				'BallRelease
SolCallback(3) = "SolBG3"						'Backbox GI Relay
SolCallback(4) = "UGI"							'Upper PF GI Relay
SolCallback(5) = "PGI"							'PF GI Relay
SolCallback(6) = "SolSlavesTombShooter"			'Slaves Tomb Ball Shooter Relay
SolCallback(7) = "SolHiddenTombShooter"			'Hidden Tomb Ball Shooter Relay
SolCallback(9) = "SolDtUL"						'Drop Targets Upper Left
SolCallback(10) = "SolDtUR"						'Drop Targets Upper Right
SolCallback(11) = "SOLDtLL"						'Drop Targets Lower Left
SolCallback(12) = "SolDtLR"						'Drop Targets Lower Right
SolCallback(13) = "SolUpperEjectHole"			'Upper Eject Hole Saucer
SolCallback(14) = "SolLowerEjectHole"			'Lower Eject Hole Saucer
SolCallback(15) = "SolKnocker"					'Credit Knocker


SolCallback(sLRFlipper) = "SolRFlipper"
SolCallback(sLLFlipper) = "SolLFlipper"


'*******************************************
'  Timers
'*******************************************


' The game timer interval is 10 ms
Sub GameTimer_Timer()
	Cor.Update 						'update ball tracking
	RollingUpdate					'update rolling sounds
	DoDTAnim 						'handle drop target animations
	DoSTAnim						'handle stand up target animations
End Sub


' The frame timer interval is -1, so executes at the display frame rate
Sub FrameTimer_Timer()
	FlipperVisualUpdate				'update flipper shadows and primitives
	If DynamicBallShadowsOn Or AmbientBallShadowOn Then DynamicBSUpdate 'update ball shadows
	UpdateBallBrightness

	If VR_Room=0 Then
		DisplayTimer
	End If

	If VR_Room=1 Then
		VRDisplayTimer
	End If

End Sub


' This subroutine updates the flipper shadows and visual primitives
Sub FlipperVisualUpdate
	FlipperLSh.RotZ = LeftFlipper.currentangle
	FlipperRSh.RotZ = RightFlipper.currentangle
	FlipperLtopSh.RotZ = LeftFlipper1.currentangle
	FlipperRtopSh.RotZ = RightFlipper1.currentangle
	LFLogo.RotZ = LeftFlipper.CurrentAngle
	RFlogo.RotZ = RightFlipper.CurrentAngle
	LFLogoUp.RotZ = LeftFlipper1.CurrentAngle
	RFLogoUp.RotZ = RightFlipper1.CurrentAngle
End Sub


'Initiate Table
'**********************************************************************************************************

Dim gBOT, PBall1, PBall2, LMAG, RMAG, CBall
 
Sub Table1_Init
	vpmInit Me
	On Error Resume Next
	  With Controller
		.GameName = cGameName
		If Err Then MsgBox "Can't start Game" & cGameName & vbNewLine & Err.Description : Exit Sub
		.SplashInfoLine = "Pharaoh (Williams 1981)"&chr(13)&"by UnclePaulie"
		.HandleMechanics=0
		.HandleKeyboard=0
		.ShowDMDOnly=1
		.ShowFrame=0
		.ShowTitle=0
        .hidden = 1
		.Games(cGameName).Settings.Value("sound") = 1 ' Set sound (0=OFF, 1=ON)	
         On Error Resume Next
         .Run GetPlayerHWnd
         If Err Then MsgBox Err.Description
         On Error Goto 0
       End With
     On Error Goto 0

	PinMAMETimer.Interval=PinMAMEInterval
	PinMAMETimer.Enabled=1

    vpmNudge.TiltSwitch= 1
	vpmNudge.Sensitivity=5
	vpmNudge.TiltObj=Array(LeftSlingshot,RightSlingshot,sw20,LeftFlipper,RightFlipper,LeftFlipper1,RightFlipper1)

	'Ball initializations need for physical trough
	Set PBall1 = BallRelease.CreateSizedballWithMass(Ballsize/2,Ballmass)
	Set PBall2 = Slot.CreateSizedballWithMass(Ballsize/2,Ballmass)
 	Set CBall=Captive.CreateSizedballWithMass(Ballsize/2,Ballmass)
 	Captive.Kick 180,1

	gBOT = Array(PBall1, PBall2)

	Controller.Switch(40) = 0
	Controller.Switch(39) = 1
	Controller.Switch(38) = 1
	Controller.Switch(36) = 0

' Make drop target shadows visible

	Dim xx
	for each xx in ShadowDT
		xx.visible=True
	Next
 
	Set LMAG=New cvpmMagnet
		LMAG.InitMagnet MagnetL,12
		LMAG.Solenoid=21
		LMAG.GrabCenter=False
		LMAG.CreateEvents"LMAG"
		
	Set RMAG=New cvpmMagnet
		RMAG.InitMagnet MagnetR,12
		RMAG.Solenoid=22
		RMAG.GrabCenter=False
		RMAG.CreateEvents"RMAG"

    ' Turn on Gi

	GiOn
	GIUpOn

	if VR_Room = 1 Then
		setup_backglass()
		SetBackglass
		SetLamp 103, 1 'Controls VR Backbox GI
		PinCab_Backglass.blenddisablelighting = .3
	End If

 End Sub

Sub table1_Paused:Controller.Pause = 1:End Sub
Sub table1_unPaused:Controller.Pause = 0:End Sub
Sub table1_exit
	SaveLUT
	Controller.stop
End Sub

' save the insert intensities so they can be updated when GI is off

InitInsertIntensities
InitInsertIntensitiesUp

Sub InitInsertIntensities
	dim bulb
	for each bulb in InsertLightsInPrim
		bulb.uservalue = bulb.intensity
	next
End sub

Sub InitInsertIntensitiesUp
	dim bulb
	for each bulb in InsertLightsInPrimUp
		bulb.uservalue = bulb.intensity
	next
End sub

'********************************************
' Keys and Plunger code
'********************************************


Sub Table1_KeyDown(ByVal keycode)

	If keycode = LeftMagnaSave Then 
		bLutActive = True
		Controller.Switch(9) = 1
		VRFlipperButtonLeftMagna.X = VRFlipperButtonLeftMagna.X + 8
	End If

	If keycode = RightMagnaSave Then 
		VRFlipperButtonRightMagna.X = VRFlipperButtonRightMagna.X - 8
		Controller.Switch(10) = 1
		If bLutActive Then 
			if DisableLUTSelector = 0 then
				If LutToggleSound Then
					Playsound "click", 0, LutToggleSoundLevel * VolumeDial, 0, 0.2, 0, 0, 0, 1
				End If
				LUTSet = LUTSet  + 1
				if LutSet > 17 then LUTSet = 0
				SetLUT
				ShowLUT
			end if
		End If
    End If


	If keycode = LeftTiltKey Then Nudge 90, 1 : SoundNudgeLeft
	If keycode = RightTiltKey Then Nudge 270, 1 : SoundNudgeRight
	If keycode = CenterTiltKey Then Nudge 0, 1 : SoundNudgeCenter


	If KeyCode = PlungerKey Then
		Plunger.PullBack
		SoundPlungerPull()
		TimerVRPlunger.Enabled = True
		TimerVRPlunger1.Enabled = False
		PinCab_Shooter.Y = -351
	End If

	If keycode = LeftFlipperKey Then 
		VRFlipperButtonLeft.X = VRFlipperButtonLeft.X + 8
		FlipperActivate LeftFlipper, LFPress
		FlipperActivate LeftFlipper1, LFPress1
	End If
	If keycode = RightFlipperKey Then
		VRFlipperButtonRight.X = VRFlipperButtonRight.X - 8
		FlipperActivate RightFlipper, RFPress
		FlipperActivate RightFlipper1, RFPress1
	End If

	If keycode = StartGameKey Then
		StartButton.y = 811.9485 - 5
		SoundStartButton
	End If


	'If keycode = keyInsertCoin1 or keycode = keyInsertCoin2 or keycode = keyInsertCoin3 or keycode = keyInsertCoin4 Then 'Use this for ROM based games
	If keycode = AddCreditKey or keycode = AddCreditKey2 Then
		Select Case Int(rnd*3)
			Case 0: PlaySound ("Coin_In_1"), 0, CoinSoundLevel, 0, 0.25
			Case 1: PlaySound ("Coin_In_2"), 0, CoinSoundLevel, 0, 0.25
			Case 2: PlaySound ("Coin_In_3"), 0, CoinSoundLevel, 0, 0.25
		End Select
	End If

    If vpmKeyDown(keycode) Then Exit Sub

End Sub

Sub Table1_KeyUp(ByVal keycode)
    If keycode = LeftMagnaSave Then 
		bLutActive = False
		VRFlipperButtonLeftMagna.X = VRFlipperButtonLeftMagna.X - 8
		Controller.Switch(9) = 0
	End If

	If keycode = RightMagnaSave then 
		VRFlipperButtonRightMagna.X = VRFlipperButtonRightMagna.X + 8
		Controller.Switch(10) = 0
	End If

	If keycode = PlungerKey Then 
		Plunger.Fire
		If BIPL = 1 Then
			SoundPlungerReleaseBall()			'Plunger release sound when there is a ball in shooter lane
		Else
			SoundPlungerReleaseNoBall()			'Plunger release sound when there is no ball in shooter lane
		End If
		TimerVRPlunger.Enabled = False
		TimerVRPlunger1.Enabled = True
		PinCab_Shooter.Y = -351
	End If

	If keycode = LeftFlipperKey Then 
		VRFlipperButtonLeft.X = VRFlipperButtonLeft.X - 8
		FlipperDeActivate LeftFlipper, LFPress
		FlipperDeActivate LeftFlipper1, LFPress1
	End If
	If keycode = RightFlipperKey Then
		VRFlipperButtonRight.X = VRFlipperButtonRight.X + 8
		FlipperDeActivate RightFlipper, RFPress
		FlipperDeActivate RightFlipper1, RFPress1
	End If

	If keycode = StartGameKey Then
		StartButton.y = 811.9485
	End If

	if vpmKeyUp(keycode) Then Exit Sub

End Sub



'*******************************************
'  Flippers
'*******************************************

Const ReflipAngle = 20

Sub SolLFlipper(Enabled)
	If Enabled Then
		LF.Fire  'leftflipper.rotatetoend
		lf1.Fire
		If leftflipper.currentangle < leftflipper.endangle + ReflipAngle Then 
			RandomSoundReflipUpLeft LeftFlipper
		Else 
			SoundFlipperUpAttackLeft LeftFlipper
			RandomSoundFlipperUpLeft LeftFlipper
		End If		
	Else
		LeftFlipper.RotateToStart
		LeftFlipper1.RotateToStart
		If LeftFlipper.currentangle < LeftFlipper.startAngle - 5 Then
			RandomSoundFlipperDownLeft LeftFlipper
		End If
		FlipperLeftHitParm = FlipperUpSoundLevel
	End If
End Sub

Sub SolRFlipper(Enabled)
	If Enabled Then
		RF.Fire 'rightflipper.rotatetoend
		rf1.Fire
		If rightflipper.currentangle > rightflipper.endangle - ReflipAngle Then
			RandomSoundReflipUpRight RightFlipper
		Else 
			SoundFlipperUpAttackRight RightFlipper
			RandomSoundFlipperUpRight RightFlipper
		End If
	Else
		RightFlipper.RotateToStart
		RightFlipper1.RotateToStart
		If RightFlipper.currentangle > RightFlipper.startAngle + 5 Then
			RandomSoundFlipperDownRight RightFlipper
		End If	
		FlipperRightHitParm = FlipperUpSoundLevel
	End If
End Sub


' Flipper collide subs
Sub LeftFlipper_Collide(parm)
	CheckLiveCatch Activeball, LeftFlipper, LFCount, parm
	LeftFlipperCollide parm
End Sub

Sub RightFlipper_Collide(parm)
	CheckLiveCatch Activeball, RightFlipper, RFCount, parm
	RightFlipperCollide parm
End Sub

Sub LeftFlipper1_Collide(parm)
	CheckLiveCatch Activeball, LeftFlipper1, LFCount1, parm
	LeftFlipperCollide parm
End Sub

Sub RightFlipper1_Collide(parm)
	CheckLiveCatch Activeball, RightFlipper1, RFCount1, parm
	RightFlipperCollide parm
End Sub


'*******************************************
' Sling Shot Animations
' Rstep and Lstep  are the variables that increment the animation
'*******************************************

Dim RStep, Lstep, R2Step

Sub RightSlingShot_Slingshot
	RS.VelocityCorrect(ActiveBall)
	RandomSoundSlingshotRight Sling1
	vpmTimer.PulseSw 44
    RSling.Visible = 0
    RSling1.Visible = 1
    sling1.rotx = 20
    RStep = 0
    RightSlingShot.TimerEnabled = 1
End Sub

Sub RightSlingShot_Timer
    Select Case RStep
        Case 3:RSLing1.Visible = 0:RSLing2.Visible = 1:sling1.rotx = 10
        Case 4:RSLing2.Visible = 0:RSLing.Visible = 1:sling1.rotx = 0:RightSlingShot.TimerEnabled = 0:
    End Select
    RStep = RStep + 1
End Sub

Sub sw20_Slingshot
	RS2.VelocityCorrect(ActiveBall)
	RandomSoundSlingshotLeft SLING3
	vpmTimer.PulseSw 20
    R2Sling.Visible = 0
    R2Sling1.Visible = 1
     sling3.rotx = 20
    R2Step = 0
    sw20.TimerEnabled = 1
End Sub

Sub sw20_Timer
    Select Case R2Step
        Case 3:R2SLing1.Visible = 0:R2SLing2.Visible = 1:sling3.rotx = 10
        Case 4:R2SLing2.Visible = 0:R2SLing.Visible = 1:sling3.rotx = 0:sw20.TimerEnabled = 0:
    End Select
    R2Step = R2Step + 1
End Sub


Sub LeftSlingShot_Slingshot
	LS.VelocityCorrect(ActiveBall)
	RandomSoundSlingshotLeft Sling2
	vpmTimer.PulseSw 24
    LSling.Visible = 0
    LSling1.Visible = 1
    sling2.rotx = 20
    LStep = 0
    LeftSlingShot.TimerEnabled = 1
End Sub

Sub LeftSlingShot_Timer
    Select Case LStep
        Case 3:LSLing1.Visible = 0:LSLing2.Visible = 1:sling2.rotx = 10
        Case 4:LSLing2.Visible = 0:LSLing.Visible = 1:sling2.rotx = 0:LeftSlingShot.TimerEnabled = 0:
    End Select
    LStep = LStep + 1
End Sub


'******************************************************
'			TROUGH BASED ON FOZZY and Rothbauerw
'******************************************************

Sub BallRelease_Hit 	: Controller.Switch(39) = 1	: UpdateTrough : End Sub
Sub BallRelease_UnHit 	: Controller.Switch(39) = 0 : UpdateTrough : End Sub
Sub Slot_Hit 			: Controller.Switch(38) = 1 : UpdateTrough : End Sub
Sub Slot_UnHit 			: Controller.Switch(38) = 0	: UpdateTrough : End Sub


Sub UpdateTrough
	UpdateTroughTimer.Interval = 300
	UpdateTroughTimer.Enabled = 1
End Sub

Sub UpdateTroughTimer_Timer
	If BallRelease.BallCntOver = 0 Then Slot.kick 60, 8
	Me.Enabled = 0
End Sub



'**********************************************************************************************************
'Switches Triggers
'**********************************************************************************************************

'********************************************
' Drain hole and saucer kickers
'********************************************
Sub SolOuthole(Enabled)
	If Enabled Then 
		Drain.kick 60, 15
		UpdateTrough
	End If
End Sub

Sub SolBallRelease(enabled)
	If enabled Then 
		BallRelease.kick 60, 12
		RandomSoundBallRelease BallRelease
	End If
End Sub

Sub Drain_Hit()
	vpmTimer.AddTimer 200, "Controller.Switch(36) = 1'"  ' Delaying the drain switch to give trough time to update.
	RandomSoundDrain Drain
End Sub

Sub Drain_UnHit()
	Controller.Switch(36) = 0
End Sub


Sub Kicker43_Hit()
	Controller.Switch(43) = 1
	SoundSaucerLock
End Sub

Sub SolHiddenTombShooter (Enabled)
  if enabled Then
	SoundSaucerKick 1, Kicker43
	Kicker43.kick 0, 45
	controller.switch(43) = 0
  end if
End sub

Sub Kicker33_Hit()
	Controller.Switch(33) = 1
	SoundSaucerLock
End Sub

Sub SolSlavesTombShooter (Enabled)
  if enabled Then
	SoundSaucerKick 1, Kicker33
	Kicker33.kick 0 , 17
	controller.switch(33) = 0
  end if
End sub

Sub Kicker34_Hit()
	Controller.Switch(34) = 1
	SoundSaucerLock
End Sub

Sub SolUpperEjectHole (Enabled)
  if enabled Then
	SoundSaucerKick 1, Kicker34
	Kicker34.kick 95, 11
	controller.switch(34) = 0
  end if
End sub

Sub Kicker35_Hit()
	Controller.Switch(35) = 1
	SoundSaucerLock
End Sub

Sub SolLowerEjectHole (Enabled)
  if enabled Then
	SoundSaucerKick 1, Kicker35
	Kicker35.kick 206, 11
	controller.switch(35) = 0
  end if
End sub


'********************************************
'  Rollover and Gate Triggers
'********************************************


'Wire Triggers

Sub SW13_Hit:Controller.Switch(13)=1 : End Sub 
Sub SW13_unHit:Controller.Switch(13)=0:End Sub
Sub SW14_Hit:Controller.Switch(14)=1 : End Sub 
Sub SW14_unHit:Controller.Switch(14)=0:End Sub
Sub SW15_Hit:Controller.Switch(15)=1 : End Sub 
Sub SW15_unHit:Controller.Switch(15)=0:End Sub
Sub SW16_Hit:Controller.Switch(16)=1 : End Sub 
Sub SW16_unHit:Controller.Switch(16)=0:End Sub
Sub SW41_Hit:Controller.Switch(41)=1 : End Sub
Sub SW41_unHit:Controller.Switch(41)=0:End Sub

'Lane Triggers

Sub SW40_Hit:Controller.Switch(40)=1:End Sub
Sub SW40_unHit:Controller.Switch(40)=0:End Sub

'Turn off ball reflection on Rollovers, and lower playfield targets

Sub BallReflection13_Hit:table1.ballreflection=0: End Sub
Sub BallReflection13_unHit:table1.ballreflection=BallReflections: End Sub
Sub BallReflection14_Hit:table1.ballreflection=0: End Sub
Sub BallReflection14_unHit:table1.ballreflection=BallReflections: End Sub
Sub BallReflection15_Hit:table1.ballreflection=0: End Sub
Sub BallReflection15_unHit:table1.ballreflection=BallReflections: End Sub
Sub BallReflection16_Hit:table1.ballreflection=0: End Sub
Sub BallReflection16_unHit:table1.ballreflection=BallReflections: End Sub
Sub BallReflection40_Hit:table1.ballreflection=0: End Sub
Sub BallReflection40_unHit:table1.ballreflection=BallReflections: End Sub
Sub BallReflection32_Hit:table1.ballreflection=0: End Sub
Sub BallReflection32_unHit:table1.ballreflection=BallReflections: End Sub
Sub BallReflection26_Hit:table1.ballreflection=0: End Sub
Sub BallReflection26_unHit:table1.ballreflection=BallReflections: End Sub
Sub BallReflection30_Hit:table1.ballreflection=0: End Sub
Sub BallReflection30_unHit:table1.ballreflection=BallReflections: End Sub

'********************************************
'  Targets
'********************************************

' Stand Up Targets

Sub sw28_Hit
	STHit 28
End Sub

Sub sw28o_Hit
	TargetBouncer Activeball, 1
End Sub

Sub sw32_Hit
	STHit 32
End Sub

Sub sw32o_Hit
	TargetBouncer Activeball, 1
End Sub


'Drop Targets

Sub sw17_Hit
	DTHit 17
	dtsh17.visible=False
End Sub

Sub sw18_Hit
	DTHit 18
	dtsh18.visible=False
End Sub

Sub sw19_Hit
	DTHit 19
	dtsh19.visible=False
End Sub

Sub sw21_Hit
	DTHit 21
	dtsh21.visible=False
End Sub

Sub sw22_Hit
	DTHit 22
	dtsh22.visible=False
End Sub

Sub sw23_Hit
	DTHit 23
	dtsh23.visible=False
End Sub

Sub sw25_Hit
	DTHit 25
	dtsh25.visible=False
End Sub

Sub sw26_Hit
	DTHit 26
	dtsh26.visible=False
End Sub

Sub sw27_Hit
	DTHit 27
	dtsh27.visible=False
End Sub

Sub sw29_Hit
	DTHit 29
	dtsh29.visible=False
End Sub

Sub sw30_Hit
	DTHit 30
	dtsh30.visible=False
End Sub

Sub sw31_Hit
	DTHit 31
	dtsh31.visible=False
End Sub


Sub SolDtUL(enabled)
	dim xx
	if enabled then
		RandomSoundDropTargetReset sw18p
		DTRaise 17
		DTRaise 18
		DTRaise 19
		for each xx in ShadowDTUpLeft
			xx.visible=True
		 Next
	end if
End Sub

Sub SolDtUR(enabled)
	dim xx
	if enabled then
		RandomSoundDropTargetReset sw22p
		DTRaise 21
		DTRaise 22
		DTRaise 23
		for each xx in ShadowDTUpCenter
			xx.visible=True
		 Next
	end if
End Sub

Sub SolDtLL(enabled)
	dim xx
	if enabled then
		RandomSoundDropTargetReset sw26p
		DTRaise 25
		DTRaise 26
		DTRaise 27
		for each xx in ShadowDTLowLeft
			xx.visible=True
		 Next
	end if
End Sub

Sub SolDtLR(enabled)
	dim xx
	if enabled then
		RandomSoundDropTargetReset sw30p
		DTRaise 29
		DTRaise 30
		DTRaise 31
		for each xx in ShadowDTLowRight
			xx.visible=True
		 Next
	end if
End Sub


'*******************************************
'  Knocker Solenoid
'*******************************************

Sub SolKnocker(Enabled)
	If enabled Then
		KnockerSolenoid
	End If
End Sub


'*******************************************
' GI
'*******************************************

dim gilvl:gilvl = 1

Sub UGI(Enabled)
	If Enabled Then
	'*****GI Lights Off
		GIUpOff
	Else
		GIUpOn
	End if
 End Sub

Sub PGI(Enabled)
	If Enabled Then
	'*****GI Lights Off
		GIOff
	Else
		GIOn
	End if
 End Sub

Sub GIOff
	dim xx
	For each xx in GIP:xx.State = 0: Next
	gilvl=0
	Sound_GI_Relay 0, Relay_GI
	SetLamp 101, 0 'Controls GI
	SetLamp 104, 1 'Insert GI Updates
	SetLamp 111, 0 'Prim and Ball GI Updates Lower Playfield
End Sub

Sub GIOn
	For each xx in GIP:xx.State = 1: Next
	gilvl=1
	Sound_GI_Relay 1, Relay_GI
	SetLamp 101, 1 'Controls GI
	SetLamp 104, 0 'Insert GI Updates
	SetLamp 111, 1 'Prim and Ball GI Updates Lower Playfield
End Sub

Sub GIUpOff
	dim xx
	For each xx in GIU:xx.State = 0: Next
	gilvl=0
	Sound_GI_Relay 0, Relay_GIUp
	SetLamp 102, 0 'Controls Upper GI
	SetLamp 105, 1 'Insert GI Updates Upper
	SetLamp 112, 0 'Prim and Ball GI Updates Upper Playfield
End Sub

Sub GIUpOn
	For each xx in GIU:xx.State = 1: Next
	gilvl=1
	Sound_GI_Relay 1, Relay_GIUp
	SetLamp 102, 1 'Controls Upper GI
	SetLamp 105, 0 'Insert GI Updates Upper
	SetLamp 112, 1 'Prim and Ball GI Updates Upper Playfield
End Sub


'*******************************************
' Setup Backglass
'*******************************************

Dim xoff,yoff,zoff,xrot,zscale, xcen,ycen, ix, xx, yy, xobj

Sub setup_backglass()

	xoff = -20
	yoff = 78
	zoff = 699
	xrot = -90
	zscale = 0.0000001

	xcen = 0  '(130 /2) - (92 / 2)
	ycen = (780 /2 ) + (203 /2)

	for ix = 0 to 31
		For Each xobj In VRDigits(ix)

			xx = xobj.x  
				
			xobj.x = (xoff - xcen) + xx
			yy = xobj.y ' get the yoffset before it is changed
			xobj.y = yoff 

			If (yy < 0.) then
				yy = yy * -1
			end if

			xobj.height = (zoff - ycen) + yy - (yy * (zscale))
			xobj.rotx = xrot
		Next
	Next
end sub

'*******************************************
'Digital Display
'*******************************************

' Desktop Display

Dim Digits(32)

' 1st Player
Digits(0) = Array(LED10,LED11,LED12,LED13,LED14,LED15,LED16)
Digits(1) = Array(LED20,LED21,LED22,LED23,LED24,LED25,LED26)
Digits(2) = Array(LED30,LED31,LED32,LED33,LED34,LED35,LED36)
Digits(3) = Array(LED40,LED41,LED42,LED43,LED44,LED45,LED46)
Digits(4) = Array(LED50,LED51,LED52,LED53,LED54,LED55,LED56)
Digits(5) = Array(LED60,LED61,LED62,LED63,LED64,LED65,LED66)
Digits(6) = Array(LED70,LED71,LED72,LED73,LED74,LED75,LED76)

' 2nd Player
Digits(7) = Array(LED80,LED81,LED82,LED83,LED84,LED85,LED86)
Digits(8) = Array(LED90,LED91,LED92,LED93,LED94,LED95,LED96)
Digits(9) = Array(LED100,LED101,LED102,LED103,LED104,LED105,LED106)
Digits(10) = Array(LED110,LED111,LED112,LED113,LED114,LED115,LED116)
Digits(11) = Array(LED120,LED121,LED122,LED123,LED124,LED125,LED126)
Digits(12) = Array(LED130,LED131,LED132,LED133,LED134,LED135,LED136)
Digits(13) = Array(LED140,LED141,LED142,LED143,LED144,LED145,LED146)

' 3rd Player
Digits(14) = Array(LED150,LED151,LED152,LED153,LED154,LED155,LED156)
Digits(15) = Array(LED160,LED161,LED162,LED163,LED164,LED165,LED166)
Digits(16) = Array(LED170,LED171,LED172,LED173,LED174,LED175,LED176)
Digits(17) = Array(LED180,LED181,LED182,LED183,LED184,LED185,LED186)
Digits(18) = Array(LED190,LED191,LED192,LED193,LED194,LED195,LED196)
Digits(19) = Array(LED200,LED201,LED202,LED203,LED204,LED205,LED206)
Digits(20) = Array(LED210,LED211,LED212,LED213,LED214,LED215,LED216)

' 4th Player
Digits(21) = Array(LED220,LED221,LED222,LED223,LED224,LED225,LED226)
Digits(22) = Array(LED230,LED231,LED232,LED233,LED234,LED235,LED236)
Digits(23) = Array(LED240,LED241,LED242,LED243,LED244,LED245,LED246)
Digits(24) = Array(LED250,LED251,LED252,LED253,LED254,LED255,LED256)
Digits(25) = Array(LED260,LED261,LED262,LED263,LED264,LED265,LED266)
Digits(26) = Array(LED270,LED271,LED272,LED273,LED274,LED275,LED276)
Digits(27) = Array(LED280,LED281,LED282,LED283,LED284,LED285,LED286)

' Balls
Digits(28) = Array(LED4,LED2,LED6,LED7,LED5,LED1,LED3)
Digits(29) = Array(LED18,LED9,LED27,LED28,LED19,LED8,LED17)

' Credits
Digits(30) = Array(LED39,LED37,LED48,LED49,LED47,LED29,LED38)
Digits(31) = Array(LED67,LED58,LED69,LED77,LED68,LED57,LED59)

Sub DisplayTimer
	Dim ChgLED,ii,num,chg,stat,obj
	ChgLed = Controller.ChangedLEDs(&Hffffffff, &Hffffffff)
If Not IsEmpty(ChgLED) Then
		For ii = 0 To UBound(chgLED)
			num = chgLED(ii, 0) : chg = chgLED(ii, 1) : stat = chgLED(ii, 2)
				For Each obj In Digits(num)
					If cab_mode = 1 OR VR_Room =1 Then
						obj.intensity=0
					Else
						obj.intensity=30
					End If
					If chg And 1 Then obj.State = stat And 1 
					chg = chg\2 : stat = stat\2
				Next
		next
end if

	if led39.state=1 and led37.state=1 and led48.state=1 and led49.state=1 and led47.state=1 and led29.state=1 and led38.state=0 and led67.state=1 and led58.state=1 and led69.state=1 and led77.state=1 and led68.state=1 and led57.state=1 and led59.state=0 Then
		CreditLight.state = lightstateoff
		CreditLighta.state = lightstateoff
	Else
		CreditLight.state = lightstateon
		CreditLighta.state = lightstateon
	end If

End Sub

' VR Display

Dim VRDigits(32)
VRDigits(0) = Array(LED1x0,LED1x1,LED1x2,LED1x3,LED1x4,LED1x5,LED1x6)
VRDigits(1) = Array(LED2x0,LED2x1,LED2x2,LED2x3,LED2x4,LED2x5,LED2x6)
VRDigits(2) = Array(LED3x0,LED3x1,LED3x2,LED3x3,LED3x4,LED3x5,LED3x6)
VRDigits(3) = Array(LED4x0,LED4x1,LED4x2,LED4x3,LED4x4,LED4x5,LED4x6)
VRDigits(4) = Array(LED5x0,LED5x1,LED5x2,LED5x3,LED5x4,LED5x5,LED5x6)
VRDigits(5) = Array(LED6x0,LED6x1,LED6x2,LED6x3,LED6x4,LED6x5,LED6x6)
VRDigits(6) = Array(LED7x0,LED7x1,LED7x2,LED7x3,LED7x4,LED7x5,LED7x6)

VRDigits(7) = Array(LED8x0,LED8x1,LED8x2,LED8x3,LED8x4,LED8x5,LED8x6)
VRDigits(8) = Array(LED9x0,LED9x1,LED9x2,LED9x3,LED9x4,LED9x5,LED9x6)
VRDigits(9) = Array(LED10x0,LED10x1,LED10x2,LED10x3,LED10x4,LED10x5,LED10x6)
VRDigits(10) = Array(LED11x0,LED11x1,LED11x2,LED11x3,LED11x4,LED11x5,LED11x6)
VRDigits(11) = Array(LED12x0,LED12x1,LED12x2,LED12x3,LED12x4,LED12x5,LED12x6)
VRDigits(12) = Array(LED13x0,LED13x1,LED13x2,LED13x3,LED13x4,LED13x5,LED13x6)
VRDigits(13) = Array(LED14x0,LED14x1,LED14x2,LED14x3,LED14x4,LED14x5,LED14x6)

VRDigits(14) = Array(LED1x000,LED1x001,LED1x002,LED1x003,LED1x004,LED1x005,LED1x006)
VRDigits(15) = Array(LED1x100,LED1x101,LED1x102,LED1x103,LED1x104,LED1x105,LED1x106)
VRDigits(16) = Array(LED1x200,LED1x201,LED1x202,LED1x203,LED1x204,LED1x205,LED1x206)
VRDigits(17) = Array(LED1x300,LED1x301,LED1x302,LED1x303,LED1x304,LED1x305,LED1x306)
VRDigits(18) = Array(LED1x400,LED1x401,LED1x402,LED1x403,LED1x404,LED1x405,LED1x406)
VRDigits(19) = Array(LED1x500,LED1x501,LED1x502,LED1x503,LED1x504,LED1x505,LED1x506)
VRDigits(20) = Array(LED1x600,LED1x601,LED1x602,LED1x603,LED1x604,LED1x605,LED1x606)

VRDigits(21) = Array(LED2x000,LED2x001,LED2x002,LED2x003,LED2x004,LED2x005,LED2x006)
VRDigits(22) = Array(LED2x100,LED2x101,LED2x102,LED2x103,LED2x104,LED2x105,LED2x106)
VRDigits(23) = Array(LED2x200,LED2x201,LED2x202,LED2x203,LED2x204,LED2x205,LED2x206)
VRDigits(24) = Array(LED2x300,LED2x301,LED2x302,LED2x303,LED2x304,LED2x305,LED2x306)
VRDigits(25) = Array(LED2x400,LED2x401,LED2x402,LED2x403,LED2x404,LED2x405,LED2x406)
VRDigits(26) = Array(LED2x500,LED2x501,LED2x502,LED2x503,LED2x504,LED2x505,LED2x506)
VRDigits(27) = Array(LED2x600,LED2x601,LED2x602,LED2x603,LED2x604,LED2x605,LED2x606)

VRDigits(28) = Array(LEDax300,LEDax301,LEDax302,LEDax303,LEDax304,LEDax305,LEDax306)
VRDigits(29) = Array(LEDbx400,LEDbx401,LEDbx402,LEDbx403,LEDbx404,LEDbx405,LEDbx406)

VRDigits(30) = Array(LEDcx500,LEDcx501,LEDcx502,LEDcx503,LEDcx504,LEDcx505,LEDcx506)
VRDigits(31) = Array(LEDdx600,LEDdx601,LEDdx602,LEDdx603,LEDdx604,LEDdx605,LEDdx606)



dim DisplayColor, DisplayColorG
DisplayColor =  RGB(255,40,1)

Sub VRDisplayTimer
	Dim ii, obj, ChgLED, num, chg, stat
	ChgLED=Controller.ChangedLEDs(&Hffffffff, &Hffffffff)
		If Not IsEmpty(ChgLED) Then
			For ii=0 To UBound(chgLED)
				num=chgLED(ii, 0) : chg=chgLED(ii, 1) : stat=chgLED(ii, 2)
				For Each obj In VRDigits(num)
 '                  If chg And 1 Then obj.visible=stat And 1    'if you use the object color for off; turn the display object visible to not visible on the playfield, and uncomment this line out.
					If chg And 1 Then FadeDisplay obj, stat And 1	
					chg=chg\2 : stat=stat\2
				Next
			Next
		End If
End Sub

Sub FadeDisplay(object, onoff)
	If OnOff = 1 Then
		Object.color = DisplayColor
		Object.Opacity = 20
	Else
		Object.Color = RGB(1,1,1)
		Object.Opacity = 8
	End If

	if LEDcx500.opacity=20 and LEDcx501.opacity=20 and LEDcx502.opacity=20 and LEDcx503.opacity=20 and LEDcx504.opacity=20 and LEDcx505.opacity=20 and LEDcx506.opacity=8 and LEDdx600.opacity=20 and LEDdx601.opacity=20 and LEDdx602.opacity=20 and LEDdx603.opacity=20 and LEDdx604.opacity=20 and LEDdx605.opacity=20 and LEDdx606.opacity=8 then 
		CreditLight.state = lightstateoff
		CreditLighta.state = lightstateoff
	Else
		CreditLight.state = lightstateon
		CreditLighta.state = lightstateon
	end If

End Sub

Sub InitDigits()
	dim tmp, x, obj
	for x = 0 to uBound(VRDigits)
		if IsArray(VRDigits(x) ) then
			For each obj in VRDigits(x)
				obj.height = obj.height + 0
				FadeDisplay obj, 0
			next
		end If
	Next
End Sub

If VR_Room=1 Then
	InitDigits
End If


'*******************************************
' LUT
'*******************************************

Dim bLutActive

Sub SetLUT
	Table1.ColorGradeImage = "LUT" & LUTset
	VRFlashLUT.imageA = "FlashLUT" & LUTset
end sub 

Sub LUTBox_Timer
	LUTBox.TimerEnabled = 0 
	LUTBox.Visible = 0
	VRFlashLUT.opacity = 0
End Sub

Sub ShowLUT
	LUTBox.visible = 1
	VRFlashLUT.opacity = 100
	Select Case LUTSet
		Case 0: LUTBox.text = "Fleep Natural Dark 1"
		Case 1: LUTBox.text = "Fleep Natural Dark 2"
		Case 2: LUTBox.text = "Fleep Warm Dark"
		Case 3: LUTBox.text = "Fleep Warm Bright"
		Case 4: LUTBox.text = "Fleep Warm Vivid Soft"
		Case 5: LUTBox.text = "Fleep Warm Vivid Hard"
		Case 6: LUTBox.text = "Skitso Natural and Balanced"
		Case 7: LUTBox.text = "Skitso Natural High Contrast"
		Case 8: LUTBox.text = "3rdaxis Referenced THX Standard"
		Case 9: LUTBox.text = "CalleV Punchy Brightness and Contrast"
		Case 10: LUTBox.text = "HauntFreaks Desaturated"
  		Case 11: LUTBox.text = "Tomate washed out"
        Case 12: LUTBox.text = "VPW original 1on1"
        Case 13: LUTBox.text = "bassgeige"
        Case 14: LUTBox.text = "blacklight"
        Case 15: LUTBox.text = "B&W Comic Book"
        Case 16: LUTBox.text = "Skitso New Warmer LUT"
        Case 17: LUTBox.text = "Original LUT"
	End Select

	LUTBox.TimerEnabled = 1

End Sub

Sub SaveLUT
	Dim FileObj
	Dim ScoreFile

	Set FileObj=CreateObject("Scripting.FileSystemObject")
	If Not FileObj.FolderExists(UserDirectory) then 
		Exit Sub
	End if

	if LUTset = "" then LUTset = 17 'failsafe to original

	Set ScoreFile=FileObj.CreateTextFile(UserDirectory & "Pharaoh_LUT.txt",True)
	ScoreFile.WriteLine LUTset
	Set ScoreFile=Nothing
	Set FileObj=Nothing
End Sub


Sub LoadLUT
	Dim FileObj, ScoreFile, TextStr
	dim rLine

	Set FileObj=CreateObject("Scripting.FileSystemObject")
	If Not FileObj.FolderExists(UserDirectory) then 
		LUTset=17
		Exit Sub
	End if
	If Not FileObj.FileExists(UserDirectory & "Pharaoh_LUT.txt") then
		LUTset=17
		Exit Sub
	End if
	Set ScoreFile=FileObj.GetFile(UserDirectory & "Pharaoh_LUT.txt")
	Set TextStr=ScoreFile.OpenAsTextStream(1,0)
		If (TextStr.AtEndOfStream=True) then
			Exit Sub
		End if
		rLine = TextStr.ReadLine
		If rLine = "" then
			LUTset=17
			Exit Sub
		End if
		LUTset = int (rLine) 
		Set ScoreFile = Nothing
	    Set FileObj = Nothing
End Sub

Sub ShowLUT_Init
	LUTBox.visible = 0
'	VRFlashLUT.opacity = 0
End Sub



'***************************************************************
'****  VPW DYNAMIC BALL SHADOWS by Iakki, Apophis, and Wylte
'***************************************************************

' *** Required Functions, enable these if they are not already present elswhere in your table
Function max(a,b)
	if a > b then 
		max = a
	Else
		max = b
	end if
end Function


Dim DSSources(30), numberofsources', DSGISide(30) 'Adapted for TZ with GI left / GI right

' *** Trim or extend these to *match* the number of balls/primitives/flashers on the table!
dim objrtx1(2), objrtx2(2)
dim objBallShadow(2)
Dim BallShadowA

BallShadowA = Array (BallShadowA0,BallShadowA1)

DynamicBSInit

sub DynamicBSInit()
	Dim iii, source

	for iii = 0 to tnob - 1								'Prepares the shadow objects before play begins
		Set objrtx1(iii) = Eval("RtxBallShadow" & iii)
		objrtx1(iii).material = "RtxBallShadow" & iii
		objrtx1(iii).z = 1 + iii/1000 + 0.01			'Separate z for layering without clipping
		objrtx1(iii).visible = 0

		Set objrtx2(iii) = Eval("RtxBall2Shadow" & iii)
		objrtx2(iii).material = "RtxBallShadow2_" & iii
		objrtx2(iii).z = 1 + iii/1000 + 0.02
		objrtx2(iii).visible = 0

		Set objBallShadow(iii) = Eval("BallShadow" & iii)
		objBallShadow(iii).material = "BallShadow" & iii
		UpdateMaterial objBallShadow(iii).material,1,0,0,0,0,0,AmbientBSFactor,RGB(0,0,0),0,0,False,True,0,0,0,0
		objBallShadow(iii).Z = 1 + iii/1000 + 0.04
		objBallShadow(iii).visible = 0

		BallShadowA(iii).Opacity = 100*AmbientBSFactor
		BallShadowA(iii).visible = 0
	Next

	iii = 0

	For Each Source in DynamicSources
		DSSources(iii) = Array(Source.x, Source.y)
'		If Instr(Source.name , "Left") > 0 Then DSGISide(iii) = 0 Else DSGISide(iii) = 1	'Adapted for TZ with GI left / GI right
		iii = iii + 1
	Next
	numberofsources = iii
end sub


Sub DynamicBSUpdate
	Dim falloff: falloff = 150 'Max distance to light sources, can be changed if you have a reason
	Dim ShadowOpacity1, ShadowOpacity2 
	Dim s, LSd, iii
	Dim dist1, dist2, src1, src2

	'Hide shadow of deleted balls
	For s = UBound(gBOT) + 1 to tnob - 1
		objrtx1(s).visible = 0
		objrtx2(s).visible = 0
		objBallShadow(s).visible = 0
		BallShadowA(s).visible = 0
	Next

	If UBound(gBOT) < lob Then Exit Sub		'No balls in play, exit

'The Magic happens now
	For s = lob to UBound(gBOT)

' *** Normal "ambient light" ball shadow
	'Layered from top to bottom. If you had an upper pf at for example 80 units and ramps even above that, your segments would be z>110; z<=110 And z>100; z<=100 And z>30; z<=30 And z>20; Else invisible

		If AmbientBallShadowOn = 1 Then			'Primitive shadow on playfield, flasher shadow in ramps
			If gBOT(s).Z > 30 And gBOT(s).Z < 90 Then							'The flasher follows the ball up ramps while the primitive is on the pf
				If gBOT(s).X < tablewidth/2 Then
					objBallShadow(s).X = ((gBOT(s).X) - (Ballsize/10) + ((gBOT(s).X - (tablewidth/2))/(Ballsize/AmbientMovement))) + offsetX + 5
				Else
					objBallShadow(s).X = ((gBOT(s).X) + (Ballsize/10) + ((gBOT(s).X - (tablewidth/2))/(Ballsize/AmbientMovement))) + offsetX - 5
				End If
				objBallShadow(s).Y = gBOT(s).Y + BallSize/10 + offsetY
				objBallShadow(s).visible = 0

				BallShadowA(s).X = gBOT(s).X + offsetX
				BallShadowA(s).Y = gBOT(s).Y + BallSize/5
				BallShadowA(s).height=gBOT(s).z - BallSize/4		'This is technically 1/4 of the ball "above" the ramp, but it keeps it from clipping the ramp
				BallShadowA(s).visible = 1
			Elseif gBOT(s).Z <= 30 Or gBOT(s).Z >= 90 Then	'On pf, primitive only
				objBallShadow(s).visible = 1
				If gBOT(s).X < tablewidth/2 Then
					objBallShadow(s).X = ((gBOT(s).X) - (Ballsize/10) + ((gBOT(s).X - (tablewidth/2))/(Ballsize/AmbientMovement))) + offsetX + 5
				Else
					objBallShadow(s).X = ((gBOT(s).X) + (Ballsize/10) + ((gBOT(s).X - (tablewidth/2))/(Ballsize/AmbientMovement))) + offsetX - 5
				End If
				objBallShadow(s).Z = gBOT(s).Z + s/1000 + 0.04
				objBallShadow(s).Y = gBOT(s).Y + offsetY
				BallShadowA(s).visible = 0
			Else											'Under pf, no shadows
				objBallShadow(s).visible = 0
				BallShadowA(s).visible = 0
			end if

		Elseif AmbientBallShadowOn = 2 Then		'Flasher shadow everywhere
			If gBOT(s).Z > 30 And gBOT(s).Z < 90 Then				'In a ramp
				BallShadowA(s).X = gBOT(s).X + offsetX
				BallShadowA(s).Y = gBOT(s).Y + BallSize/5
				BallShadowA(s).height=gBOT(s).z - BallSize/4		'This is technically 1/4 of the ball "above" the ramp, but it keeps it from clipping the ramp
				BallShadowA(s).visible = 1
			Elseif gBOT(s).Z <= 30 Or gBOT(s).Z >= 90 Then	'On pf
				BallShadowA(s).visible = 1
				If gBOT(s).X < tablewidth/2 Then
					BallShadowA(s).X = ((gBOT(s).X) - (Ballsize/10) + ((gBOT(s).X - (tablewidth/2))/(Ballsize/AmbientMovement))) + offsetX + 5
				Else
					BallShadowA(s).X = ((gBOT(s).X) + (Ballsize/10) + ((gBOT(s).X - (tablewidth/2))/(Ballsize/AmbientMovement))) + offsetX - 5
				End If
				BallShadowA(s).Y = gBOT(s).Y + Ballsize/10 + offsetY
				BallShadowA(s).height=gBOT(s).z - BallSize/2 + 5
			Else											'Under pf
				BallShadowA(s).visible = 0
			End If
		End If

' *** Dynamic shadows
		If DynamicBallShadowsOn Then
			If (gBOT(s).Z < 30 Or gBOT(s).Z > 90) And gBOT(s).X < 850 Then	'Parameters for where the shadows can show, here they are not visible above the table (no upper pf) or in the plunger lane
				dist1 = falloff:
				dist2 = falloff
				For iii = 0 to numberofsources - 1 ' Search the 2 nearest influencing lights
					LSd = Distance(gBOT(s).x, gBOT(s).y, DSSources(iii)(0), DSSources(iii)(1)) 'Calculating the Linear distance to the Source
					If LSd < falloff And gilvl > 0 Then
						dist2 = dist1
						dist1 = LSd
						src2 = src1
						src1 = iii
					End If
				Next
				ShadowOpacity1 = 0
				If dist1 < falloff Then
					objrtx1(s).visible = 1 : objrtx1(s).X = gBOT(s).X : objrtx1(s).Y = gBOT(s).Y
					objrtx1(s).Z = gBOT(s).Z - 25 + s/1000 + 0.01 'Uncomment if you want to add shadows to an upper/lower pf
					objrtx1(s).rotz = AnglePP(DSSources(src1)(0), DSSources(src1)(1), gBOT(s).X, gBOT(s).Y) + 90
					ShadowOpacity1 = 1 - dist1 / falloff
					objrtx1(s).size_y = Wideness * ShadowOpacity1 + Thinness
					UpdateMaterial objrtx1(s).material,1,0,0,0,0,0,ShadowOpacity1*DynamicBSFactor^3,RGB(0,0,0),0,0,False,True,0,0,0,0
				Else
					objrtx1(s).visible = 0
				End If
				ShadowOpacity2 = 0
				If dist2 < falloff Then
					objrtx2(s).visible = 1 : objrtx2(s).X = gBOT(s).X : objrtx2(s).Y = gBOT(s).Y + offsetY
					objrtx2(s).Z = gBOT(s).Z - 25 + s/1000 + 0.02 'Uncomment if you want to add shadows to an upper/lower pf
					objrtx2(s).rotz = AnglePP(DSSources(src2)(0), DSSources(src2)(1), gBOT(s).X, gBOT(s).Y) + 90
					ShadowOpacity2 = 1 - dist2 / falloff
					objrtx2(s).size_y = Wideness * ShadowOpacity2 + Thinness
					UpdateMaterial objrtx2(s).material,1,0,0,0,0,0,ShadowOpacity2*DynamicBSFactor^3,RGB(0,0,0),0,0,False,True,0,0,0,0
				Else
					objrtx2(s).visible = 0
				End If
				If AmbientBallShadowOn = 1 Then
					'Fades the ambient shadow (primitive only) when it's close to a light
					UpdateMaterial objBallShadow(s).material,1,0,0,0,0,0,AmbientBSFactor*(1 - max(ShadowOpacity1, ShadowOpacity2)),RGB(0,0,0),0,0,False,True,0,0,0,0
				Else
					BallShadowA(s).Opacity = 100 * AmbientBSFactor * (1 - max(ShadowOpacity1, ShadowOpacity2))
				End If
			Else 'Hide dynamic shadows everywhere else, just in case
				objrtx2(s).visible = 0 : objrtx1(s).visible = 0
			End If
		End If
	Next
End Sub

'****************************************************************
'****  END VPW DYNAMIC BALL SHADOWS by Iakki, Apophis, and Wylte
'****************************************************************

'******************************************************
' VPW TargetBouncer for targets and posts by Iaakki, Wrd1972, Apophis
'******************************************************


sub TargetBouncer(aBall,defvalue)
    dim zMultiplier, vel, vratio
    if TargetBouncerEnabled = 1 and aball.z < 30 then
        'debug.print "velx: " & aball.velx & " vely: " & aball.vely & " velz: " & aball.velz
        vel = BallSpeed(aBall)
        if aBall.velx = 0 then vratio = 1 else vratio = aBall.vely/aBall.velx
        Select Case Int(Rnd * 6) + 1
            Case 1: zMultiplier = 0.2*defvalue
			Case 2: zMultiplier = 0.25*defvalue
            Case 3: zMultiplier = 0.3*defvalue
			Case 4: zMultiplier = 0.4*defvalue
            Case 5: zMultiplier = 0.45*defvalue
            Case 6: zMultiplier = 0.5*defvalue
        End Select
        aBall.velz = abs(vel * zMultiplier * TargetBouncerFactor)
        aBall.velx = sgn(aBall.velx) * sqr(abs((vel^2 - aBall.velz^2)/(1+vratio^2)))
        aBall.vely = aBall.velx * vratio
        'debug.print "---> velx: " & aball.velx & " vely: " & aball.vely & " velz: " & aball.velz
        'debug.print "conservation check: " & BallSpeed(aBall)/vel
	end if
end sub

' Add targets or posts to the TargetBounce collection if you want to activate the targetbouncer code from them
Sub TargetBounce_Hit(idx)
	TargetBouncer activeball, 1
End Sub



'******************************************************
'****  FLIPPER CORRECTIONS by nFozzy
'******************************************************


'******************************************************
' Flippers Polarity (Select appropriate sub based on era) 
'******************************************************

dim LF : Set LF = New FlipperPolarity
dim RF : Set RF = New FlipperPolarity
dim LF1 : Set LF1 = New FlipperPolarity
dim RF1 : Set RF1 = New FlipperPolarity

InitPolarity

'
''*******************************************
' Late 70's to early 80's
'
Sub InitPolarity()
        dim x, a : a = Array(LF, RF, LF1, RF1)
        for each x in a
                x.AddPoint "Ycoef", 0, RightFlipper.Y-65, 1        'disabled
                x.AddPoint "Ycoef", 1, RightFlipper.Y-11, 1
                x.enabled = True
                x.TimeDelay = 80
        Next

        AddPt "Polarity", 0, 0, 0
        AddPt "Polarity", 1, 0.05, -2.7        
        AddPt "Polarity", 2, 0.33, -2.7
        AddPt "Polarity", 3, 0.37, -2.7        
        AddPt "Polarity", 4, 0.41, -2.7
        AddPt "Polarity", 5, 0.45, -2.7
        AddPt "Polarity", 6, 0.576,-2.7
        AddPt "Polarity", 7, 0.66, -1.8
        AddPt "Polarity", 8, 0.743, -0.5
        AddPt "Polarity", 9, 0.81, -0.5
        AddPt "Polarity", 10, 0.88, 0

        addpt "Velocity", 0, 0,         1
        addpt "Velocity", 1, 0.16, 1.06
        addpt "Velocity", 2, 0.41,         1.05
        addpt "Velocity", 3, 0.53,         1'0.982
        addpt "Velocity", 4, 0.702, 0.968
        addpt "Velocity", 5, 0.95,  0.968
        addpt "Velocity", 6, 1.03,         0.945

        LF.Object = LeftFlipper        
        LF.EndPoint = EndPointLp
        RF.Object = RightFlipper
        RF.EndPoint = EndPointRp
        LF1.Object = LeftFlipper1        
        LF1.EndPoint = EndPointLp1
        RF1.Object = RightFlipper1
        RF1.EndPoint = EndPointRp1
End Sub



' Flipper trigger hit subs
Sub TriggerLF_Hit() : LF.Addball activeball : End Sub
Sub TriggerLF_UnHit() : LF.PolarityCorrect activeball : End Sub
Sub TriggerRF_Hit() : RF.Addball activeball : End Sub
Sub TriggerRF_UnHit() : RF.PolarityCorrect activeball : End Sub
Sub TriggerLF1_Hit() : LF1.Addball activeball : End Sub
Sub TriggerLF1_UnHit() : LF1.PolarityCorrect activeball : End Sub
Sub TriggerRF1_Hit() : RF1.Addball activeball : End Sub
Sub TriggerRF1_UnHit() : RF1.PolarityCorrect activeball : End Sub




'******************************************************
'  FLIPPER CORRECTION FUNCTIONS
'******************************************************

Class FlipperPolarity
	Public DebugOn, Enabled
	Private FlipAt        'Timer variable (IE 'flip at 723,530ms...)
	Public TimeDelay        'delay before trigger turns off and polarity is disabled TODO set time!
	private Flipper, FlipperStart,FlipperEnd, FlipperEndY, LR, PartialFlipCoef
	Private Balls(20), balldata(20)

	dim PolarityIn, PolarityOut
	dim VelocityIn, VelocityOut
	dim YcoefIn, YcoefOut
	Public Sub Class_Initialize 
		redim PolarityIn(0) : redim PolarityOut(0) : redim VelocityIn(0) : redim VelocityOut(0) : redim YcoefIn(0) : redim YcoefOut(0)
		Enabled = True : TimeDelay = 50 : LR = 1:  dim x : for x = 0 to uBound(balls) : balls(x) = Empty : set Balldata(x) = new SpoofBall : next 
	End Sub

	Public Property let Object(aInput) : Set Flipper = aInput : StartPoint = Flipper.x : End Property
	Public Property Let StartPoint(aInput) : if IsObject(aInput) then FlipperStart = aInput.x else FlipperStart = aInput : end if : End Property
	Public Property Get StartPoint : StartPoint = FlipperStart : End Property
	Public Property Let EndPoint(aInput) : FlipperEnd = aInput.x: FlipperEndY = aInput.y: End Property
	Public Property Get EndPoint : EndPoint = FlipperEnd : End Property        
	Public Property Get EndPointY: EndPointY = FlipperEndY : End Property

	Public Sub AddPoint(aChooseArray, aIDX, aX, aY) 'Index #, X position, (in) y Position (out) 
		Select Case aChooseArray
			case "Polarity" : ShuffleArrays PolarityIn, PolarityOut, 1 : PolarityIn(aIDX) = aX : PolarityOut(aIDX) = aY : ShuffleArrays PolarityIn, PolarityOut, 0
			Case "Velocity" : ShuffleArrays VelocityIn, VelocityOut, 1 :VelocityIn(aIDX) = aX : VelocityOut(aIDX) = aY : ShuffleArrays VelocityIn, VelocityOut, 0
			Case "Ycoef" : ShuffleArrays YcoefIn, YcoefOut, 1 :YcoefIn(aIDX) = aX : YcoefOut(aIDX) = aY : ShuffleArrays YcoefIn, YcoefOut, 0
		End Select
		if gametime > 100 then Report aChooseArray
	End Sub 

	Public Sub Report(aChooseArray)         'debug, reports all coords in tbPL.text
		if not DebugOn then exit sub
		dim a1, a2 : Select Case aChooseArray
			case "Polarity" : a1 = PolarityIn : a2 = PolarityOut
			Case "Velocity" : a1 = VelocityIn : a2 = VelocityOut
			Case "Ycoef" : a1 = YcoefIn : a2 = YcoefOut 
				case else :tbpl.text = "wrong string" : exit sub
		End Select
		dim str, x : for x = 0 to uBound(a1) : str = str & aChooseArray & " x: " & round(a1(x),4) & ", " & round(a2(x),4) & vbnewline : next
		tbpl.text = str
	End Sub

	Public Sub AddBall(aBall) : dim x : for x = 0 to uBound(balls) : if IsEmpty(balls(x)) then set balls(x) = aBall : exit sub :end if : Next  : End Sub

	Private Sub RemoveBall(aBall)
		dim x : for x = 0 to uBound(balls)
			if TypeName(balls(x) ) = "IBall" then 
				if aBall.ID = Balls(x).ID Then
					balls(x) = Empty
					Balldata(x).Reset
				End If
			End If
		Next
	End Sub

	Public Sub Fire() 
		Flipper.RotateToEnd
		processballs
	End Sub

	Public Property Get Pos 'returns % position a ball. For debug stuff.
		dim x : for x = 0 to uBound(balls)
			if not IsEmpty(balls(x) ) then
				pos = pSlope(Balls(x).x, FlipperStart, 0, FlipperEnd, 1)
			End If
		Next                
	End Property

	Public Sub ProcessBalls() 'save data of balls in flipper range
		FlipAt = GameTime
		dim x : for x = 0 to uBound(balls)
			if not IsEmpty(balls(x) ) then
				balldata(x).Data = balls(x)
			End If
		Next
		PartialFlipCoef = ((Flipper.StartAngle - Flipper.CurrentAngle) / (Flipper.StartAngle - Flipper.EndAngle))
		PartialFlipCoef = abs(PartialFlipCoef-1)
	End Sub
	Private Function FlipperOn() : if gameTime < FlipAt+TimeDelay then FlipperOn = True : End If : End Function        'Timer shutoff for polaritycorrect

	Public Sub PolarityCorrect(aBall)
		if FlipperOn() then 
			dim tmp, BallPos, x, IDX, Ycoef : Ycoef = 1

			'y safety Exit
			if aBall.VelY > -8 then 'ball going down
				RemoveBall aBall
				exit Sub
			end if

			'Find balldata. BallPos = % on Flipper
			for x = 0 to uBound(Balls)
				if aBall.id = BallData(x).id AND not isempty(BallData(x).id) then 
					idx = x
					BallPos = PSlope(BallData(x).x, FlipperStart, 0, FlipperEnd, 1)
					if ballpos > 0.65 then  Ycoef = LinearEnvelope(BallData(x).Y, YcoefIn, YcoefOut)                                'find safety coefficient 'ycoef' data
				end if
			Next

			If BallPos = 0 Then 'no ball data meaning the ball is entering and exiting pretty close to the same position, use current values.
				BallPos = PSlope(aBall.x, FlipperStart, 0, FlipperEnd, 1)
				if ballpos > 0.65 then  Ycoef = LinearEnvelope(aBall.Y, YcoefIn, YcoefOut)                                                'find safety coefficient 'ycoef' data
			End If

			'Velocity correction
			if not IsEmpty(VelocityIn(0) ) then
				Dim VelCoef
				VelCoef = LinearEnvelope(BallPos, VelocityIn, VelocityOut)

				if partialflipcoef < 1 then VelCoef = PSlope(partialflipcoef, 0, 1, 1, VelCoef)

				if Enabled then aBall.Velx = aBall.Velx*VelCoef
				if Enabled then aBall.Vely = aBall.Vely*VelCoef
			End If

			'Polarity Correction (optional now)
			if not IsEmpty(PolarityIn(0) ) then
				If StartPoint > EndPoint then LR = -1        'Reverse polarity if left flipper
				dim AddX : AddX = LinearEnvelope(BallPos, PolarityIn, PolarityOut) * LR

				if Enabled then aBall.VelX = aBall.VelX + 1 * (AddX*ycoef*PartialFlipcoef)
			End If
		End If
		RemoveBall aBall
	End Sub
End Class


'******************************************************
'  SLINGSHOT CORRECTION FUNCTIONS
'******************************************************

dim LS : Set LS = New SlingshotCorrection
dim RS : Set RS = New SlingshotCorrection
dim RS2 : Set RS2 = New SlingshotCorrection

InitSlingCorrection

Sub InitSlingCorrection

	LS.Object = LeftSlingshot
	LS.EndPoint1 = EndPoint1LS
	LS.EndPoint2 = EndPoint2LS

	RS.Object = RightSlingshot
	RS.EndPoint1 = EndPoint1RS
	RS.EndPoint2 = EndPoint2RS

	RS2.Object = sw20
	RS2.EndPoint1 = EndPoint1TS
	RS2.EndPoint2 = EndPoint2TS

	'Slingshot angle corrections (pt, BallPos in %, Angle in deg)
	' These values are best guesses. Retune them if needed based on specific table research.
	AddSlingsPt 0, 0.00,	-4
	AddSlingsPt 1, 0.45,	-7
	AddSlingsPt 2, 0.48,	0
	AddSlingsPt 3, 0.52,	0
	AddSlingsPt 4, 0.55,	7
	AddSlingsPt 5, 1.00,	4

End Sub


Sub AddSlingsPt(idx, aX, aY)        'debugger wrapper for adjusting flipper script in-game
	dim a : a = Array(LS, RS, RS2)
	dim x : for each x in a
		x.addpoint idx, aX, aY
	Next
End Sub


Class SlingshotCorrection
	Public DebugOn, Enabled
	private Slingshot, SlingX1, SlingX2, SlingY1, SlingY2

	Public ModIn, ModOut
	Private Sub Class_Initialize : redim ModIn(0) : redim Modout(0): Enabled = True : End Sub 

	Public Property let Object(aInput) : Set Slingshot = aInput : End Property
	Public Property Let EndPoint1(aInput) : SlingX1 = aInput.x: SlingY1 = aInput.y: End Property
	Public Property Let EndPoint2(aInput) : SlingX2 = aInput.x: SlingY2 = aInput.y: End Property

	Public Sub AddPoint(aIdx, aX, aY) 
		ShuffleArrays ModIn, ModOut, 1 : ModIn(aIDX) = aX : ModOut(aIDX) = aY : ShuffleArrays ModIn, ModOut, 0
		If gametime > 100 then Report
	End Sub

	Public Sub Report()         'debug, reports all coords in tbPL.text
		If not debugOn then exit sub
		dim a1, a2 : a1 = ModIn : a2 = ModOut
		dim str, x : for x = 0 to uBound(a1) : str = str & x & ": " & round(a1(x),4) & ", " & round(a2(x),4) & vbnewline : next
		TBPout.text = str
	End Sub


	Public Sub VelocityCorrect(aBall)
		dim BallPos, XL, XR, YL, YR
		
		'Assign right and left end points
		If SlingX1 < SlingX2 Then 
			XL = SlingX1 : YL = SlingY1 : XR = SlingX2 : YR = SlingY2
		Else
			XL = SlingX2 : YL = SlingY2 : XR = SlingX1 : YR = SlingY1
		End If

		'Find BallPos = % on Slingshot
		If Not IsEmpty(aBall.id) Then 
			If ABS(XR-XL) > ABS(YR-YL) Then 
				BallPos = PSlope(aBall.x, XL, 0, XR, 1)
			Else
				BallPos = PSlope(aBall.y, YL, 0, YR, 1)
			End If
			If BallPos < 0 Then BallPos = 0
			If BallPos > 1 Then BallPos = 1
		End If

		'Velocity angle correction
		If not IsEmpty(ModIn(0) ) then
			Dim Angle, RotVxVy
			Angle = LinearEnvelope(BallPos, ModIn, ModOut)
			'debug.print " BallPos=" & BallPos &" Angle=" & Angle 
			'debug.print " BEFORE: aBall.Velx=" & aBall.Velx &" aBall.Vely" & aBall.Vely 
			RotVxVy = RotPoint(aBall.Velx,aBall.Vely,Angle)
			If Enabled then aBall.Velx = RotVxVy(0)
			If Enabled then aBall.Vely = RotVxVy(1)
			'debug.print " AFTER: aBall.Velx=" & aBall.Velx &" aBall.Vely" & aBall.Vely 
			'debug.print " " 
		End If
	End Sub

End Class


'******************************************************
'  FLIPPER POLARITY. RUBBER DAMPENER, AND SLINGSHOT CORRECTION SUPPORTING FUNCTIONS 
'******************************************************


Sub AddPt(aStr, idx, aX, aY)        'debugger wrapper for adjusting flipper script in-game
	dim a : a = Array(LF, RF, LF1, RF1)
	dim x : for each x in a
		x.addpoint aStr, idx, aX, aY
	Next
End Sub


' Used for flipper correction and rubber dampeners
Sub ShuffleArray(ByRef aArray, byVal offset) 'shuffle 1d array
	dim x, aCount : aCount = 0
	redim a(uBound(aArray) )
	for x = 0 to uBound(aArray)        'Shuffle objects in a temp array
		if not IsEmpty(aArray(x) ) Then
			if IsObject(aArray(x)) then 
				Set a(aCount) = aArray(x)
			Else
				a(aCount) = aArray(x)
			End If
			aCount = aCount + 1
		End If
	Next
	if offset < 0 then offset = 0
	redim aArray(aCount-1+offset)        'Resize original array
	for x = 0 to aCount-1                'set objects back into original array
		if IsObject(a(x)) then 
			Set aArray(x) = a(x)
		Else
			aArray(x) = a(x)
		End If
	Next
End Sub

' Used for flipper correction and rubber dampeners
Sub ShuffleArrays(aArray1, aArray2, offset)
	ShuffleArray aArray1, offset
	ShuffleArray aArray2, offset
End Sub

' Used for flipper correction, rubber dampeners, and drop targets
Function BallSpeed(ball) 'Calculates the ball speed
	BallSpeed = SQR(ball.VelX^2 + ball.VelY^2 + ball.VelZ^2)
End Function

' Used for flipper correction and rubber dampeners
Function PSlope(Input, X1, Y1, X2, Y2)        'Set up line via two points, no clamping. Input X, output Y
	dim x, y, b, m : x = input : m = (Y2 - Y1) / (X2 - X1) : b = Y2 - m*X2
	Y = M*x+b
	PSlope = Y
End Function

' Used for flipper correction
Class spoofball 
	Public X, Y, Z, VelX, VelY, VelZ, ID, Mass, Radius 
	Public Property Let Data(aBall)
		With aBall
			x = .x : y = .y : z = .z : velx = .velx : vely = .vely : velz = .velz
			id = .ID : mass = .mass : radius = .radius
		end with
	End Property
	Public Sub Reset()
		x = Empty : y = Empty : z = Empty  : velx = Empty : vely = Empty : velz = Empty 
		id = Empty : mass = Empty : radius = Empty
	End Sub
End Class

' Used for flipper correction and rubber dampeners
Function LinearEnvelope(xInput, xKeyFrame, yLvl)
	dim y 'Y output
	dim L 'Line
	dim ii : for ii = 1 to uBound(xKeyFrame)        'find active line
		if xInput <= xKeyFrame(ii) then L = ii : exit for : end if
	Next
	if xInput > xKeyFrame(uBound(xKeyFrame) ) then L = uBound(xKeyFrame)        'catch line overrun
	Y = pSlope(xInput, xKeyFrame(L-1), yLvl(L-1), xKeyFrame(L), yLvl(L) )

	if xInput <= xKeyFrame(lBound(xKeyFrame) ) then Y = yLvl(lBound(xKeyFrame) )         'Clamp lower
	if xInput >= xKeyFrame(uBound(xKeyFrame) ) then Y = yLvl(uBound(xKeyFrame) )        'Clamp upper

	LinearEnvelope = Y
End Function


'******************************************************
'  FLIPPER TRICKS 
'******************************************************

RightFlipper.timerinterval=1
Rightflipper.timerenabled=True

sub RightFlipper_timer()
	FlipperTricks LeftFlipper, LFPress, LFCount, LFEndAngle, LFState
	FlipperTricks RightFlipper, RFPress, RFCount, RFEndAngle, RFState
	FlipperTricks LeftFlipper1, LFPress1, LFCount1, LFEndAngle1, LFState1
	FlipperTricks RightFlipper1, RFPress1, RFCount1, RFEndAngle1, RFState1
	FlipperNudge RightFlipper, RFEndAngle, RFEOSNudge, LeftFlipper, LFEndAngle
	FlipperNudge LeftFlipper, LFEndAngle, LFEOSNudge,  RightFlipper, RFEndAngle
end sub

Dim LFEOSNudge, RFEOSNudge

Sub FlipperNudge(Flipper1, Endangle1, EOSNudge1, Flipper2, EndAngle2)
	Dim b

	If Flipper1.currentangle = Endangle1 and EOSNudge1 <> 1 Then
		EOSNudge1 = 1
		'debug.print Flipper1.currentangle &" = "& Endangle1 &"--"& Flipper2.currentangle &" = "& EndAngle2
		If Flipper2.currentangle = EndAngle2 Then 
			For b = 0 to Ubound(gBOT)
				If FlipperTrigger(gBOT(b).x, gBOT(b).y, Flipper1) Then
					'Debug.Print "ball in flip1. exit"
					exit Sub
				end If
			Next
			For b = 0 to Ubound(gBOT)
				If FlipperTrigger(gBOT(b).x, gBOT(b).y, Flipper2) Then
					gBOT(b).velx = gBOT(b).velx / 1.3
					gBOT(b).vely = gBOT(b).vely - 0.5
				end If
			Next
		End If
	Else 
		If Abs(Flipper1.currentangle) > Abs(EndAngle1) + 30 then EOSNudge1 = 0
	End If
End Sub

'*****************
' Maths
'*****************
Dim PI: PI = 4*Atn(1)

Function dSin(degrees)
	dsin = sin(degrees * Pi/180)
End Function

Function dCos(degrees)
	dcos = cos(degrees * Pi/180)
End Function

Function Atn2(dy, dx)
	If dx > 0 Then
		Atn2 = Atn(dy / dx)
	ElseIf dx < 0 Then
		If dy = 0 Then 
			Atn2 = pi
		Else
			Atn2 = Sgn(dy) * (pi - Atn(Abs(dy / dx)))
		end if
	ElseIf dx = 0 Then
		if dy = 0 Then
			Atn2 = 0
		else
			Atn2 = Sgn(dy) * pi / 2
		end if
	End If
End Function

'*************************************************
'  Check ball distance from Flipper for Rem
'*************************************************

Function Distance(ax,ay,bx,by)
	Distance = SQR((ax - bx)^2 + (ay - by)^2)
End Function

Function DistancePL(px,py,ax,ay,bx,by) ' Distance between a point and a line where point is px,py
	DistancePL = ABS((by - ay)*px - (bx - ax) * py + bx*ay - by*ax)/Distance(ax,ay,bx,by)
End Function

Function Radians(Degrees)
	Radians = Degrees * PI /180
End Function

Function AnglePP(ax,ay,bx,by)
	AnglePP = Atn2((by - ay),(bx - ax))*180/PI
End Function

Function DistanceFromFlipper(ballx, bally, Flipper)
	DistanceFromFlipper = DistancePL(ballx, bally, Flipper.x, Flipper.y, Cos(Radians(Flipper.currentangle+90))+Flipper.x, Sin(Radians(Flipper.currentangle+90))+Flipper.y)
End Function

Function FlipperTrigger(ballx, bally, Flipper)
	Dim DiffAngle
	DiffAngle  = ABS(Flipper.currentangle - AnglePP(Flipper.x, Flipper.y, ballx, bally) - 90)
	If DiffAngle > 180 Then DiffAngle = DiffAngle - 360

	If DistanceFromFlipper(ballx,bally,Flipper) < 48 and DiffAngle <= 90 and Distance(ballx,bally,Flipper.x,Flipper.y) < Flipper.Length Then
		FlipperTrigger = True
	Else
		FlipperTrigger = False
	End If        
End Function


'*************************************************
'  End - Check ball distance from Flipper for Rem
'*************************************************

dim LFPress, RFPress, LFCount, RFCount, LFPress1, RFPress1, LFCount1, RFCount1
dim LFState, RFState, LFState1, RFState1
dim EOST, EOSA,Frampup, FElasticity,FReturn
dim RFEndAngle, LFEndAngle, RFEndAngle1, LFEndAngle1

LFState = 1
RFState = 1
LFState1 = 1
RFState1 = 1
EOST = leftflipper.eostorque
EOSA = leftflipper.eostorqueangle
Frampup = LeftFlipper.rampup
FElasticity = LeftFlipper.elasticity
FReturn = LeftFlipper.return
Const EOSTnew = 1 'EM's to late 80's
Const EOSAnew = 1
Const EOSRampup = 0
Dim SOSRampup
Select Case FlipperCoilRampupMode 
	Case 0:
		SOSRampup = 2.5
	Case 1:
		SOSRampup = 6
	Case 2:
		SOSRampup = 8.5
End Select

Const LiveCatch = 16
Const LiveElasticity = 0.45
Const SOSEM = 0.815
Const EOSReturn = 0.045  'late 70's to mid 80's

LFEndAngle = Leftflipper.endangle
RFEndAngle = RightFlipper.endangle
LFEndAngle1 = LeftFlipper1.endangle
RFEndAngle1 = RightFlipper1.endangle

Sub FlipperActivate(Flipper, FlipperPress)
	FlipperPress = 1
	Flipper.Elasticity = FElasticity

	Flipper.eostorque = EOST         
	Flipper.eostorqueangle = EOSA         
End Sub

Sub FlipperDeactivate(Flipper, FlipperPress)
	FlipperPress = 0
	Flipper.eostorqueangle = EOSA
	Flipper.eostorque = EOST*EOSReturn/FReturn


	If Abs(Flipper.currentangle) <= Abs(Flipper.endangle) + 0.1 Then
		Dim b

		For b = 0 to UBound(gBOT)
			If Distance(gBOT(b).x, gBOT(b).y, Flipper.x, Flipper.y) < 55 Then 'check for cradle
				If gBOT(b).vely >= -0.4 Then gBOT(b).vely = -0.4
			End If
		Next
	End If
End Sub

Sub FlipperTricks (Flipper, FlipperPress, FCount, FEndAngle, FState) 
	Dim Dir
	Dir = Flipper.startangle/Abs(Flipper.startangle)        '-1 for Right Flipper

	If Abs(Flipper.currentangle) > Abs(Flipper.startangle) - 0.05 Then
		If FState <> 1 Then
			Flipper.rampup = SOSRampup 
			Flipper.endangle = FEndAngle - 3*Dir
			Flipper.Elasticity = FElasticity * SOSEM
			FCount = 0 
			FState = 1
		End If
	ElseIf Abs(Flipper.currentangle) <= Abs(Flipper.endangle) and FlipperPress = 1 then
		if FCount = 0 Then FCount = GameTime

		If FState <> 2 Then
			Flipper.eostorqueangle = EOSAnew
			Flipper.eostorque = EOSTnew
			Flipper.rampup = EOSRampup                        
			Flipper.endangle = FEndAngle
			FState = 2
		End If
	Elseif Abs(Flipper.currentangle) > Abs(Flipper.endangle) + 0.01 and FlipperPress = 1 Then 
		If FState <> 3 Then
			Flipper.eostorque = EOST        
			Flipper.eostorqueangle = EOSA
			Flipper.rampup = Frampup
			Flipper.Elasticity = FElasticity
			FState = 3
		End If

	End If
End Sub

Const LiveDistanceMin = 30  'minimum distance in vp units from flipper base live catch dampening will occur
Const LiveDistanceMax = 114  'maximum distance in vp units from flipper base live catch dampening will occur (tip protection)

Sub CheckLiveCatch(ball, Flipper, FCount, parm) 'Experimental new live catch
	Dim Dir
	Dir = Flipper.startangle/Abs(Flipper.startangle)    '-1 for Right Flipper
	Dim LiveCatchBounce                                                                                                                        'If live catch is not perfect, it won't freeze ball totally
	Dim CatchTime : CatchTime = GameTime - FCount

	if CatchTime <= LiveCatch and parm > 6 and ABS(Flipper.x - ball.x) > LiveDistanceMin and ABS(Flipper.x - ball.x) < LiveDistanceMax Then
		if CatchTime <= LiveCatch*0.5 Then                                                'Perfect catch only when catch time happens in the beginning of the window
			LiveCatchBounce = 0
		else
			LiveCatchBounce = Abs((LiveCatch/2) - CatchTime)        'Partial catch when catch happens a bit late
		end If

		If LiveCatchBounce = 0 and ball.velx * Dir > 0 Then ball.velx = 0
		ball.vely = LiveCatchBounce * (32 / LiveCatch) ' Multiplier for inaccuracy bounce
		ball.angmomx= 0
		ball.angmomy= 0
		ball.angmomz= 0
    Else
        If Abs(Flipper.currentangle) <= Abs(Flipper.endangle) + 1 Then FlippersD.Dampenf Activeball, parm
	End If
End Sub


'******************************************************
'****  END FLIPPER CORRECTIONS
'******************************************************


'******************************************************
'****  PHYSICS DAMPENERS
'******************************************************
'
' These are data mined bounce curves, 
' dialed in with the in-game elasticity as much as possible to prevent angle / spin issues.
' Requires tracking ballspeed to calculate COR



Sub dPosts_Hit(idx) 
	RubbersD.dampen Activeball
	TargetBouncer Activeball, 1
End Sub

Sub dSleeves_Hit(idx) 
	SleevesD.Dampen Activeball
	TargetBouncer Activeball, 0.7
End Sub


dim RubbersD : Set RubbersD = new Dampener        'frubber
RubbersD.name = "Rubbers"
RubbersD.debugOn = False        'shows info in textbox "TBPout"
RubbersD.Print = False        'debug, reports in debugger (in vel, out cor)
'cor bounce curve (linear)
'for best results, try to match in-game velocity as closely as possible to the desired curve
'RubbersD.addpoint 0, 0, 0.935        'point# (keep sequential), ballspeed, CoR (elasticity)
RubbersD.addpoint 0, 0, 1.1        'point# (keep sequential), ballspeed, CoR (elasticity)
RubbersD.addpoint 1, 3.77, 0.97
RubbersD.addpoint 2, 5.76, 0.967        'dont take this as gospel. if you can data mine rubber elasticitiy, please help!
RubbersD.addpoint 3, 15.84, 0.874
RubbersD.addpoint 4, 56, 0.64        'there's clamping so interpolate up to 56 at least

dim SleevesD : Set SleevesD = new Dampener        'this is just rubber but cut down to 85%...
SleevesD.name = "Sleeves"
SleevesD.debugOn = False        'shows info in textbox "TBPout"
SleevesD.Print = False        'debug, reports in debugger (in vel, out cor)
SleevesD.CopyCoef RubbersD, 0.85

'######################### Add new FlippersD Profile
'#########################    Adjust these values to increase or lessen the elasticity

dim FlippersD : Set FlippersD = new Dampener
FlippersD.name = "Flippers"
FlippersD.debugOn = False
FlippersD.Print = False	
FlippersD.addpoint 0, 0, 1.1	
FlippersD.addpoint 1, 3.77, 0.99
FlippersD.addpoint 2, 6, 0.99

Class Dampener
	Public Print, debugOn 'tbpOut.text
	public name, Threshold         'Minimum threshold. Useful for Flippers, which don't have a hit threshold.
	Public ModIn, ModOut
	Private Sub Class_Initialize : redim ModIn(0) : redim Modout(0): End Sub 

	Public Sub AddPoint(aIdx, aX, aY) 
		ShuffleArrays ModIn, ModOut, 1 : ModIn(aIDX) = aX : ModOut(aIDX) = aY : ShuffleArrays ModIn, ModOut, 0
		if gametime > 100 then Report
	End Sub

	public sub Dampen(aBall)
		if threshold then if BallSpeed(aBall) < threshold then exit sub end if end if
		dim RealCOR, DesiredCOR, str, coef
		DesiredCor = LinearEnvelope(cor.ballvel(aBall.id), ModIn, ModOut )
		RealCOR = BallSpeed(aBall) / (cor.ballvel(aBall.id)+0.0001)
		coef = desiredcor / realcor 
		if debugOn then str = name & " in vel:" & round(cor.ballvel(aBall.id),2 ) & vbnewline & "desired cor: " & round(desiredcor,4) & vbnewline & _
		"actual cor: " & round(realCOR,4) & vbnewline & "ballspeed coef: " & round(coef, 3) & vbnewline 
		if Print then debug.print Round(cor.ballvel(aBall.id),2) & ", " & round(desiredcor,3)

		aBall.velx = aBall.velx * coef : aBall.vely = aBall.vely * coef
		if debugOn then TBPout.text = str
	End Sub

	public sub Dampenf(aBall, parm) 'Rubberizer is handle here
		dim RealCOR, DesiredCOR, str, coef
		DesiredCor = LinearEnvelope(cor.ballvel(aBall.id), ModIn, ModOut )
		RealCOR = BallSpeed(aBall) / (cor.ballvel(aBall.id)+0.0001)
		coef = desiredcor / realcor 
		If abs(aball.velx) < 2 and aball.vely < 0 and aball.vely > -3.75 then 
			aBall.velx = aBall.velx * coef : aBall.vely = aBall.vely * coef
		End If
	End Sub

	Public Sub CopyCoef(aObj, aCoef) 'alternative addpoints, copy with coef
		dim x : for x = 0 to uBound(aObj.ModIn)
			addpoint x, aObj.ModIn(x), aObj.ModOut(x)*aCoef
		Next
	End Sub


	Public Sub Report()         'debug, reports all coords in tbPL.text
		if not debugOn then exit sub
		dim a1, a2 : a1 = ModIn : a2 = ModOut
		dim str, x : for x = 0 to uBound(a1) : str = str & x & ": " & round(a1(x),4) & ", " & round(a2(x),4) & vbnewline : next
		TBPout.text = str
	End Sub

End Class



'******************************************************
'  TRACK ALL BALL VELOCITIES
'  FOR RUBBER DAMPENER AND DROP TARGETS
'******************************************************

dim cor : set cor = New CoRTracker

Class CoRTracker
	public ballvel, ballvelx, ballvely

	Private Sub Class_Initialize : redim ballvel(0) : redim ballvelx(0): redim ballvely(0) : End Sub 

	Public Sub Update()	'tracks in-ball-velocity
		dim str, b, AllBalls, highestID : allBalls = getballs

		for each b in allballs
			if b.id >= HighestID then highestID = b.id
		Next

		if uBound(ballvel) < highestID then redim ballvel(highestID)	'set bounds
		if uBound(ballvelx) < highestID then redim ballvelx(highestID)	'set bounds
		if uBound(ballvely) < highestID then redim ballvely(highestID)	'set bounds

		for each b in allballs
			ballvel(b.id) = BallSpeed(b)
			ballvelx(b.id) = b.velx
			ballvely(b.id) = b.vely
		Next
	End Sub
End Class

'******************************************************
'****  END PHYSICS DAMPENERS
'******************************************************



'******************************************************
'****  DROP TARGETS by Rothbauerw
'******************************************************

'******************************************************
'  DROP TARGETS INITIALIZATION
'******************************************************

Dim DT17, DT18, DT19, DT21, DT22, DT23, DT25, DT26, DT27, DT29, DT30, DT31

'Set array with drop target objects
'
'DropTargetvar = Array(primary, secondary, prim, swtich, animate)
' 	primary: 			primary target wall to determine drop
'	secondary:			wall used to simulate the ball striking a bent or offset target after the initial Hit
'	prim:				primitive target used for visuals and animation
'							IMPORTANT!!! 
'							rotz must be used for orientation
'							rotx to bend the target back
'							transz to move it up and down
'							the pivot point should be in the center of the target on the x, y and at or below the playfield (0) on z
'	switch:				ROM switch number
'	animate:			Arrary slot for handling the animation instrucitons, set to 0
'
'	Values for annimate: 1 - bend target (hit to primary), 2 - drop target (hit to secondary), 3 - brick target (high velocity hit to secondary), -1 - raise target 


Class DropTarget
  Private m_primary, m_secondary, m_prim, m_sw, m_animate, m_isDropped

  Public Property Get Primary(): Set Primary = m_primary: End Property
  Public Property Let Primary(input): Set m_primary = input: End Property

  Public Property Get Secondary(): Set Secondary = m_secondary: End Property
  Public Property Let Secondary(input): Set m_secondary = input: End Property

  Public Property Get Prim(): Set Prim = m_prim: End Property
  Public Property Let Prim(input): Set m_prim = input: End Property

  Public Property Get Sw(): Sw = m_sw: End Property
  Public Property Let Sw(input): m_sw = input: End Property

  Public Property Get Animate(): Animate = m_animate: End Property
  Public Property Let Animate(input): m_animate = input: End Property

  Public Property Get IsDropped(): IsDropped = m_isDropped: End Property
  Public Property Let IsDropped(input): m_isDropped = input: End Property

  Public default Function init(primary, secondary, prim, sw, animate, isDropped)
    Set m_primary = primary
    Set m_secondary = secondary
    Set m_prim = prim
    m_sw = sw
    m_animate = animate
    m_isDropped = isDropped

    Set Init = Me
  End Function
End Class

Set DT17 = (new DropTarget)(sw17, sw17a, sw17p, 17, 0, false)
Set DT18 = (new DropTarget)(sw18, sw18a, sw18p, 18, 0, false)
Set DT19 = (new DropTarget)(sw19, sw19a, sw19p, 19, 0, false)
Set DT21 = (new DropTarget)(sw21, sw21a, sw21p, 21, 0, false)
Set DT22 = (new DropTarget)(sw22, sw22a, sw22p, 22, 0, false)
Set DT23 = (new DropTarget)(sw23, sw23a, sw23p, 23, 0, false)
Set DT25 = (new DropTarget)(sw25, sw25a, sw25p, 25, 0, false)
Set DT26 = (new DropTarget)(sw26, sw26a, sw26p, 26, 0, false)
Set DT27 = (new DropTarget)(sw27, sw27a, sw27p, 27, 0, false)
Set DT29 = (new DropTarget)(sw29, sw29a, sw29p, 29, 0, false)
Set DT30 = (new DropTarget)(sw30, sw30a, sw30p, 30, 0, false)
Set DT31 = (new DropTarget)(sw31, sw31a, sw31p, 31, 0, false)


Dim DTArray
DTArray = Array(DT17, DT18, DT19, DT21, DT22, DT23, DT25, DT26, DT27, DT29, DT30, DT31)

'Configure the behavior of Drop Targets.
Const DTDropSpeed = 110 'in milliseconds
Const DTDropUpSpeed = 40 'in milliseconds
Const DTDropUnits = 45 'VP units primitive drops so top of at or below the playfield
Const DTDropUpUnits = 10 'VP units primitive raises above the up position on drops up
Const DTMaxBend = 8 'max degrees primitive rotates when hit
Const DTDropDelay = 20 'time in milliseconds before target drops (due to friction/impact of the ball)
Const DTRaiseDelay = 40 'time in milliseconds before target drops back to normal up position after the solenoid fires to raise the target
Const DTBrickVel = 30 'velocity at which the target will brick, set to '0' to disable brick

Const DTEnableBrick = 0 'Set to 0 to disable bricking, 1 to enable bricking
Const DTHitSound = "" 'Drop Target Hit sound
Const DTDropSound = "DropTarget_Down" 'Drop Target Drop sound
Const DTResetSound = "DropTarget_Up" 'Drop Target reset sound

Const DTMass = 0.2 'Mass of the Drop Target (between 0 and 1), higher values provide more resistance


'******************************************************
'  DROP TARGETS FUNCTIONS
'******************************************************

Sub DTHit(switch)
	Dim i
	i = DTArrayID(switch)

	PlayTargetSound
	DTArray(i).animate =  DTCheckBrick(Activeball,DTArray(i).prim)
	If DTArray(i).animate = 1 or DTArray(i).animate = 3 or DTArray(i).animate = 4 Then
		DTBallPhysics Activeball, DTArray(i).prim.rotz, DTMass
	End If
	DoDTAnim
End Sub

Sub DTRaise(switch)
	Dim i
	i = DTArrayID(switch)

	DTArray(i).animate = -1
	DoDTAnim
End Sub

Sub DTDrop(switch)
	Dim i
	i = DTArrayID(switch)

	DTArray(i).animate = 1
	DoDTAnim
End Sub

Function DTArrayID(switch)
	Dim i
	For i = 0 to uBound(DTArray) 
		If DTArray(i).sw = switch Then DTArrayID = i:Exit Function 
	Next
End Function


sub DTBallPhysics(aBall, angle, mass)
	dim rangle,bangle,calc1, calc2, calc3
	rangle = (angle - 90) * 3.1416 / 180
	bangle = atn2(cor.ballvely(aball.id),cor.ballvelx(aball.id))

	calc1 = cor.BallVel(aball.id) * cos(bangle - rangle) * (aball.mass - mass) / (aball.mass + mass)
	calc2 = cor.BallVel(aball.id) * sin(bangle - rangle) * cos(rangle + 4*Atn(1)/2)
	calc3 = cor.BallVel(aball.id) * sin(bangle - rangle) * sin(rangle + 4*Atn(1)/2)

	aBall.velx = calc1 * cos(rangle) + calc2
	aBall.vely = calc1 * sin(rangle) + calc3
End Sub


'Check if target is hit on it's face or sides and whether a 'brick' occurred
Function DTCheckBrick(aBall, dtprim) 
	dim bangle, bangleafter, rangle, rangle2, Xintersect, Yintersect, cdist, perpvel, perpvelafter, paravel, paravelafter
	rangle = (dtprim.rotz - 90) * 3.1416 / 180
	rangle2 = dtprim.rotz * 3.1416 / 180
	bangle = atn2(cor.ballvely(aball.id),cor.ballvelx(aball.id))
	bangleafter = Atn2(aBall.vely,aball.velx)

	Xintersect = (aBall.y - dtprim.y - tan(bangle) * aball.x + tan(rangle2) * dtprim.x) / (tan(rangle2) - tan(bangle))
	Yintersect = tan(rangle2) * Xintersect + (dtprim.y - tan(rangle2) * dtprim.x)

	cdist = Distance(dtprim.x, dtprim.y, Xintersect, Yintersect)

	perpvel = cor.BallVel(aball.id) * cos(bangle-rangle)
	paravel = cor.BallVel(aball.id) * sin(bangle-rangle)

	perpvelafter = BallSpeed(aBall) * cos(bangleafter - rangle) 
	paravelafter = BallSpeed(aBall) * sin(bangleafter - rangle)

	If perpvel > 0 and  perpvelafter <= 0 Then
		If DTEnableBrick = 1 and  perpvel > DTBrickVel and DTBrickVel <> 0 and cdist < 8 Then
			DTCheckBrick = 3
		Else
			DTCheckBrick = 1
		End If
	ElseIf perpvel > 0 and ((paravel > 0 and paravelafter > 0) or (paravel < 0 and paravelafter < 0)) Then
		DTCheckBrick = 4
	Else 
		DTCheckBrick = 0
	End If
End Function


Sub DoDTAnim()
	Dim i
	For i=0 to Ubound(DTArray)
		DTArray(i).animate = DTAnimate(DTArray(i).primary,DTArray(i).secondary,DTArray(i).prim,DTArray(i).sw,DTArray(i).animate)
	Next
End Sub

Function DTAnimate(primary, secondary, prim, switch,  animate)
	dim transz, switchid
	Dim animtime, rangle

	switchid = switch

	rangle = prim.rotz * PI / 180

	DTAnimate = animate

	if animate = 0  Then
		primary.uservalue = 0
		DTAnimate = 0
		Exit Function
	Elseif primary.uservalue = 0 then 
		primary.uservalue = gametime
	end if

	animtime = gametime - primary.uservalue

	If (animate = 1 or animate = 4) and animtime < DTDropDelay Then
		primary.collidable = 0
	If animate = 1 then secondary.collidable = 1 else secondary.collidable= 0
		prim.rotx = DTMaxBend * cos(rangle)
		prim.roty = DTMaxBend * sin(rangle)
		DTAnimate = animate
		Exit Function
		elseif (animate = 1 or animate = 4) and animtime > DTDropDelay Then
		primary.collidable = 0
		If animate = 1 then secondary.collidable = 1 else secondary.collidable= 0
		prim.rotx = DTMaxBend * cos(rangle)
		prim.roty = DTMaxBend * sin(rangle)
		animate = 2
		SoundDropTargetDrop prim
	End If

	if animate = 2 Then
		transz = (animtime - DTDropDelay)/DTDropSpeed *  DTDropUnits * -1
		if prim.transz > -DTDropUnits  Then
			prim.transz = transz
		end if

		prim.rotx = DTMaxBend * cos(rangle)/2
		prim.roty = DTMaxBend * sin(rangle)/2

		if prim.transz <= -DTDropUnits Then 
			prim.transz = -DTDropUnits
			secondary.collidable = 0
			if UsingROM then 
				controller.Switch(Switchid) = 1
			else 
				DTAction switchid
			end if
			primary.uservalue = 0
			DTAnimate = 0
			Exit Function
		Else
			DTAnimate = 2
			Exit Function
		end If 
	End If

	If animate = 3 and animtime < DTDropDelay Then
		primary.collidable = 0
		secondary.collidable = 1
		prim.rotx = DTMaxBend * cos(rangle)
		prim.roty = DTMaxBend * sin(rangle)
	elseif animate = 3 and animtime > DTDropDelay Then
		primary.collidable = 1
		secondary.collidable = 0
		prim.rotx = 0
		prim.roty = 0
		primary.uservalue = 0
		DTAnimate = 0
		Exit Function
	End If

	if animate = -1 Then
		transz = (1 - (animtime)/DTDropUpSpeed) *  DTDropUnits * -1

		If prim.transz = -DTDropUnits Then
			Dim b

			For b = 0 to UBound(gBOT)
				If InRotRect(gBOT(b).x,gBOT(b).y,prim.x, prim.y, prim.rotz, -25,-10,25,-10,25,25,-25,25) and gBOT(b).z < prim.z+DTDropUnits+25 Then
					gBOT(b).velz = 20
				End If
			Next
		End If

		if prim.transz < 0 Then
			prim.transz = transz
		elseif transz > 0 then
			prim.transz = transz
		end if

		if prim.transz > DTDropUpUnits then 
			DTAnimate = -2
			prim.transz = DTDropUpUnits
			prim.rotx = 0
			prim.roty = 0
			primary.uservalue = gametime
		end if
		primary.collidable = 0
		secondary.collidable = 1
		if UsingROM then controller.Switch(Switchid) = 0

	End If

	if animate = -2 and animtime > DTRaiseDelay Then
		prim.transz = (animtime - DTRaiseDelay)/DTDropSpeed *  DTDropUnits * -1 + DTDropUpUnits 
		if prim.transz < 0 then
			prim.transz = 0
			primary.uservalue = 0
			DTAnimate = 0

			primary.collidable = 1
			secondary.collidable = 0
		end If 
	End If
End Function

Sub DTAction(switchid)
	Select Case switchid
		Case 1:
			Addscore 1000
			ShadowDT(0).visible=False
		Case 2:
			Addscore 1000
			ShadowDT(1).visible=False
		Case 3:
			Addscore 1000
			ShadowDT(2).visible=False
	End Select
End Sub


'******************************************************
'  DROP TARGET
'  SUPPORTING FUNCTIONS 
'******************************************************


' Used for drop targets
'*** Determines if a Points (px,py) is inside a 4 point polygon A-D in Clockwise/CCW order
Function InRect(px,py,ax,ay,bx,by,cx,cy,dx,dy)
	Dim AB, BC, CD, DA
	AB = (bx*py) - (by*px) - (ax*py) + (ay*px) + (ax*by) - (ay*bx)
	BC = (cx*py) - (cy*px) - (bx*py) + (by*px) + (bx*cy) - (by*cx)
	CD = (dx*py) - (dy*px) - (cx*py) + (cy*px) + (cx*dy) - (cy*dx)
	DA = (ax*py) - (ay*px) - (dx*py) + (dy*px) + (dx*ay) - (dy*ax)

	If (AB <= 0 AND BC <=0 AND CD <= 0 AND DA <= 0) Or (AB >= 0 AND BC >=0 AND CD >= 0 AND DA >= 0) Then
		InRect = True
	Else
		InRect = False       
	End If
End Function

Function InRotRect(ballx,bally,px,py,angle,ax,ay,bx,by,cx,cy,dx,dy)
    Dim rax,ray,rbx,rby,rcx,rcy,rdx,rdy
    Dim rotxy
    rotxy = RotPoint(ax,ay,angle)
    rax = rotxy(0)+px : ray = rotxy(1)+py
    rotxy = RotPoint(bx,by,angle)
    rbx = rotxy(0)+px : rby = rotxy(1)+py
    rotxy = RotPoint(cx,cy,angle)
    rcx = rotxy(0)+px : rcy = rotxy(1)+py
    rotxy = RotPoint(dx,dy,angle)
    rdx = rotxy(0)+px : rdy = rotxy(1)+py

    InRotRect = InRect(ballx,bally,rax,ray,rbx,rby,rcx,rcy,rdx,rdy)
End Function

Function RotPoint(x,y,angle)
    dim rx, ry
    rx = x*dCos(angle) - y*dSin(angle)
    ry = x*dSin(angle) + y*dCos(angle)
    RotPoint = Array(rx,ry)
End Function


'******************************************************
'****  END DROP TARGETS
'******************************************************

'******************************************************
'		STAND-UP TARGET INITIALIZATION
'******************************************************

Class StandupTarget
  Private m_primary, m_prim, m_sw, m_animate

  Public Property Get Primary(): Set Primary = m_primary: End Property
  Public Property Let Primary(input): Set m_primary = input: End Property

  Public Property Get Prim(): Set Prim = m_prim: End Property
  Public Property Let Prim(input): Set m_prim = input: End Property

  Public Property Get Sw(): Sw = m_sw: End Property
  Public Property Let Sw(input): m_sw = input: End Property

  Public Property Get Animate(): Animate = m_animate: End Property
  Public Property Let Animate(input): m_animate = input: End Property

  Public default Function init(primary, prim, sw, animate)
    Set m_primary = primary
    Set m_prim = prim
    m_sw = sw
    m_animate = animate

    Set Init = Me
  End Function
End Class

'Define a variable for each stand-up target

Dim ST28, ST32


'Set array with stand-up target objects
'
'StandupTargetvar = Array(primary, prim, swtich)
' 	primary: 			vp target to determine target hit
'	prim:				primitive target used for visuals and animation
'							IMPORTANT!!! 
'							transy must be used to offset the target animation
'	switch:				ROM switch number
'	animate:			Arrary slot for handling the animation instrucitons, set to 0
' 
'You will also need to add a secondary hit object for each stand up (name sw11o, sw12o, and sw13o on the example Table1)
'these are inclined primitives to simulate hitting a bent target and should provide so z velocity on high speed impacts

Set ST28 = (new StandupTarget)(sw28, psw28,28, 0)
Set ST32 = (new StandupTarget)(sw32, psw32,32, 0)

Dim STArray
STArray = Array(ST28, ST32)



'Configure the behavior of Stand-up Targets
Const STAnimStep =  1.5 				'vpunits per animation step (control return to Start)
Const STMaxOffset = 9 			'max vp units target moves when hit

Const STMass = 0.2				'Mass of the Stand-up Target (between 0 and 1), higher values provide more resistance

'******************************************************
'				STAND-UP TARGETS FUNCTIONS
'******************************************************

Sub STHit(switch)
	Dim i
	i = STArrayID(switch)

	PlayTargetSound
	STArray(i).animate =  STCheckHit(Activeball,STArray(i).primary)

	If STArray(i).animate <> 0 Then
		DTBallPhysics Activeball, STArray(i).primary.orientation, STMass
	End If
	DoSTAnim
End Sub

Function STArrayID(switch)
	Dim i
	For i = 0 to uBound(STArray) 
		If STArray(i).sw = switch Then STArrayID = i:Exit Function 
	Next
End Function

'Check if target is hit on it's face
Function STCheckHit(aBall, target) 
	dim bangle, bangleafter, rangle, rangle2, perpvel, perpvelafter, paravel, paravelafter
	rangle = (target.orientation - 90) * 3.1416 / 180	
	bangle = atn2(cor.ballvely(aball.id),cor.ballvelx(aball.id))
	bangleafter = Atn2(aBall.vely,aball.velx)

	perpvel = cor.BallVel(aball.id) * cos(bangle-rangle)
	paravel = cor.BallVel(aball.id) * sin(bangle-rangle)

	perpvelafter = BallSpeed(aBall) * cos(bangleafter - rangle) 
	paravelafter = BallSpeed(aBall) * sin(bangleafter - rangle)

	If perpvel > 0 and  perpvelafter <= 0 Then
		STCheckHit = 1
	ElseIf perpvel > 0 and ((paravel > 0 and paravelafter > 0) or (paravel < 0 and paravelafter < 0)) Then
		STCheckHit = 1
	Else 
		STCheckHit = 0
	End If
End Function

Sub DoSTAnim()
	Dim i
	For i=0 to Ubound(STArray)
		STArray(i).animate = STAnimate(STArray(i).primary,STArray(i).prim,STArray(i).sw,STArray(i).animate)
	Next
End Sub

Function STAnimate(primary, prim, switch,  animate)
	Dim animtime

	STAnimate = animate

	if animate = 0  Then
		primary.uservalue = 0
		STAnimate = 0
		Exit Function
	Elseif primary.uservalue = 0 then 
		primary.uservalue = gametime
	end if

	animtime = gametime - primary.uservalue

	If animate = 1 Then
		primary.collidable = 0
		prim.transy = -STMaxOffset
		if UsingROM then 
			vpmTimer.PulseSw switch
		else
			STAction switch
		end if
		STAnimate = 2
		Exit Function
	elseif animate = 2 Then
		prim.transy = prim.transy + STAnimStep
		If prim.transy >= 0 Then
			prim.transy = 0
			primary.collidable = 1
			STAnimate = 0
			Exit Function
		Else 
			STAnimate = 2
		End If
	End If	
End Function

Sub STAction(Switch)
	Select Case Switch
		Case 11:
			Addscore 1000
			Flash1 True								'Demo of the flasher
			vpmTimer.AddTimer 150,"Flash1 False'"	'Disable the flash after short time, just like a ROM would do
		Case 12:
			Addscore 1000
			Flash2 True								'Demo of the flasher
			vpmTimer.AddTimer 150,"Flash2 False'"	'Disable the flash after short time, just like a ROM would do
		Case 13:
			Addscore 1000
			Flash3 True								'Demo of the flasher
			vpmTimer.AddTimer 150,"Flash3 False'"	'Disable the flash after short time, just like a ROM would do
	End Select
End Sub

'******************************************************
'		END STAND-UP TARGETS
'******************************************************



'******************************************************
'****  BALL ROLLING AND DROP SOUNDS
'******************************************************
'
' Be sure to call RollingUpdate in a timer with a 10ms interval see the GameTimer_Timer() sub

ReDim rolling(tnob)
InitRolling

Dim DropCount
ReDim DropCount(tnob)

Sub InitRolling
	Dim i
	For i = 0 to tnob
		rolling(i) = False
	Next
End Sub

Sub RollingUpdate()
	Dim b

	' stop the sound of deleted balls
	For b = UBound(gBOT) + 1 to tnob - 1
		' Comment the next line if you are not implementing Dyanmic Ball Shadows
		If AmbientBallShadowOn = 0 Then BallShadowA(b).visible = 0
		rolling(b) = False
		StopSound("BallRoll_" & b)
	Next

	' exit the sub if no balls on the table
	If UBound(gBOT) = -1 Then Exit Sub

	' play the rolling sound for each ball

	For b = 0 to UBound(gBOT)
		If BallVel(gBOT(b)) > 1 AND gBOT(b).z < 30 Then
			rolling(b) = True
			PlaySound ("BallRoll_" & b), -1, VolPlayfieldRoll(gBOT(b)) * BallRollVolume * VolumeDial, AudioPan(gBOT(b)), 0, PitchPlayfieldRoll(gBOT(b)), 1, 0, AudioFade(gBOT(b))
		ElseIf BallVel(gBOT(b)) > 1 AND gBOT(b).z > 70 Then
			rolling(b) = True
			PlaySound ("BallRoll_" & b), -1, VolPlayfieldRoll(gBOT(b)) * BallRollVolume * VolumeDial, AudioPan(gBOT(b)), 0, PitchPlayfieldRoll(gBOT(b)), 1, 0, AudioFade(gBOT(b))
		Else
			If rolling(b) = True Then
				StopSound("BallRoll_" & b)
				rolling(b) = False
			End If
		End If

		' Ball Drop Sounds
		If gBOT(b).VelZ < -1 and gBOT(b).z < 55 and gBOT(b).z > 27 Then 'height adjust for ball drop sounds
			If DropCount(b) >= 5 Then
				DropCount(b) = 0
				If gBOT(b).velz > -7 Then
					RandomSoundBallBouncePlayfieldSoft gBOT(b)
				Else
					RandomSoundBallBouncePlayfieldHard gBOT(b)
				End If				
			End If
		End If
		If DropCount(b) < 5 Then
			DropCount(b) = DropCount(b) + 1
		End If

        ' "Static" Ball Shadows
        ' Comment the next If block, if you are not implementing the Dyanmic Ball Shadows
        If AmbientBallShadowOn = 0 Then
            If gBOT(b).Z > 30 And gBOT(b).Z < 90 Then
                BallShadowA(b).height=gBOT(b).z - BallSize/4        'This is technically 1/4 of the ball "above" the ramp, but it keeps it from clipping
            Else
                BallShadowA(b).height=gBOT(b).z - BallSize/2 + 5
            End If
            BallShadowA(b).Y = gBOT(b).Y + Ballsize/5 + offsetY
            BallShadowA(b).X = gBOT(b).X
            BallShadowA(b).visible = 1
        End If

	Next
End Sub


'******************************************************
'****  END BALL ROLLING AND DROP SOUNDS
'******************************************************




'******************************************************
'**** RAMP ROLLING SFX
'******************************************************

'Ball tracking ramp SFX 1.0
'   Reqirements:
'          * Import A Sound File for each ball on the table for plastic ramps.  Call It RampLoop<Ball_Number> ex: RampLoop1, RampLoop2, ...
'          * Import a Sound File for each ball on the table for wire ramps. Call it WireLoop<Ball_Number> ex: WireLoop1, WireLoop2, ...
'          * Create a Timer called RampRoll, that is enabled, with a interval of 100
'          * Set RampBAlls and RampType variable to Total Number of Balls
'	Usage:
'          * Setup hit events and call WireRampOn True or WireRampOn False (True = Plastic ramp, False = Wire Ramp)
'          * To stop tracking ball
'                 * call WireRampOff
'                 * Otherwise, the ball will auto remove if it's below 30 vp units
'

dim RampMinLoops : RampMinLoops = 4

' RampBalls
'      Setup:        Set the array length of x in RampBalls(x,2) Total Number of Balls on table + 1:  if tnob = 5, then RammBalls(6,2)
'      Description:  
dim RampBalls(4,2)
'x,0 = ball x,1 = ID,	2 = Protection against ending early (minimum amount of updates)
'0,0 is boolean on/off, 0,1 unused for now
RampBalls(0,0) = False

' RampType
'     Setup: Set this array to the number Total number of balls that can be tracked at one time + 1.  5 ball multiball then set value to 6
'     Description: Array type indexed on BallId and a values used to deterimine what type of ramp the ball is on: False = Wire Ramp, True = Plastic Ramp
dim RampType(4)	

Sub WireRampOn(input)  : Waddball ActiveBall, input : RampRollUpdate: End Sub
Sub WireRampOff() : WRemoveBall ActiveBall.ID	: End Sub


' WaddBall (Active Ball, Boolean)
'     Description: This subroutine is called from WireRampOn to Add Balls to the RampBalls Array
Sub Waddball(input, RampInput)	'Add ball
	' This will loop through the RampBalls array checking each element of the array x, position 1
	' To see if the the ball was already added to the array.
	' If the ball is found then exit the subroutine
	dim x : for x = 1 to uBound(RampBalls)	'Check, don't add balls twice
		if RampBalls(x, 1) = input.id then 
			if Not IsEmpty(RampBalls(x,1) ) then Exit Sub	'Frustating issue with BallId 0. Empty variable = 0
		End If
	Next

	' This will itterate through the RampBalls Array.
	' The first time it comes to a element in the array where the Ball Id (Slot 1) is empty.  It will add the current ball to the array
	' The RampBalls assigns the ActiveBall to element x,0 and ball id of ActiveBall to 0,1
	' The RampType(BallId) is set to RampInput
	' RampBalls in 0,0 is set to True, this will enable the timer and the timer is also turned on
	For x = 1 to uBound(RampBalls)
		if IsEmpty(RampBalls(x, 1)) then 
			Set RampBalls(x, 0) = input
			RampBalls(x, 1)	= input.ID
			RampType(x) = RampInput
			RampBalls(x, 2)	= 0
			'exit For
			RampBalls(0,0) = True
			RampRoll.Enabled = 1	 'Turn on timer
			'RampRoll.Interval = RampRoll.Interval 'reset timer
			exit Sub
		End If
		if x = uBound(RampBalls) then 	'debug
			Debug.print "WireRampOn error, ball queue is full: " & vbnewline & _
			RampBalls(0, 0) & vbnewline & _
			Typename(RampBalls(1, 0)) & " ID:" & RampBalls(1, 1) & "type:" & RampType(1) & vbnewline & _
			Typename(RampBalls(2, 0)) & " ID:" & RampBalls(2, 1) & "type:" & RampType(2) & vbnewline & _
			Typename(RampBalls(3, 0)) & " ID:" & RampBalls(3, 1) & "type:" & RampType(3) & vbnewline & _
			Typename(RampBalls(4, 0)) & " ID:" & RampBalls(4, 1) & "type:" & RampType(4) & vbnewline & _
			Typename(RampBalls(5, 0)) & " ID:" & RampBalls(5, 1) & "type:" & RampType(5) & vbnewline & _
			" "
		End If
	next
End Sub

' WRemoveBall (BallId)
'    Description: This subroutine is called from the RampRollUpdate subroutine 
'                 and is used to remove and stop the ball rolling sounds
Sub WRemoveBall(ID)		'Remove ball
	'Debug.Print "In WRemoveBall() + Remove ball from loop array"
	dim ballcount : ballcount = 0
	dim x : for x = 1 to Ubound(RampBalls)
		if ID = RampBalls(x, 1) then 'remove ball
			Set RampBalls(x, 0) = Nothing
			RampBalls(x, 1) = Empty
			RampType(x) = Empty
			StopSound("RampLoop" & x)
			StopSound("wireloop" & x)
		end If
		'if RampBalls(x,1) = Not IsEmpty(Rampballs(x,1) then ballcount = ballcount + 1
		if not IsEmpty(Rampballs(x,1)) then ballcount = ballcount + 1
	next
	if BallCount = 0 then RampBalls(0,0) = False	'if no balls in queue, disable timer update
End Sub

Sub RampRoll_Timer():RampRollUpdate:End Sub

Sub RampRollUpdate()		'Timer update
	dim x : for x = 1 to uBound(RampBalls)
		if Not IsEmpty(RampBalls(x,1) ) then 
			if BallVel(RampBalls(x,0) ) > 1 then ' if ball is moving, play rolling sound
				If RampType(x) then 
					PlaySound("RampLoop" & x), -1, VolPlayfieldRoll(RampBalls(x,0)) * RampRollVolume * VolumeDial, AudioPan(RampBalls(x,0)), 0, BallPitchV(RampBalls(x,0)), 1, 0, AudioFade(RampBalls(x,0))				
					StopSound("wireloop" & x)
				Else
					StopSound("RampLoop" & x)
					PlaySound("wireloop" & x), -1, VolPlayfieldRoll(RampBalls(x,0)) * RampRollVolume * VolumeDial, AudioPan(RampBalls(x,0)), 0, BallPitch(RampBalls(x,0)), 1, 0, AudioFade(RampBalls(x,0))
				End If
				RampBalls(x, 2)	= RampBalls(x, 2) + 1
			Else
				StopSound("RampLoop" & x)
				StopSound("wireloop" & x)
			end if
			if RampBalls(x,0).Z < 30 and RampBalls(x, 2) > RampMinLoops then	'if ball is on the PF, remove  it
				StopSound("RampLoop" & x)
				StopSound("wireloop" & x)
				Wremoveball RampBalls(x,1)
			End If
		Else
			StopSound("RampLoop" & x)
			StopSound("wireloop" & x)
		end if
	next
	if not RampBalls(0,0) then RampRoll.enabled = 0

End Sub

' This can be used to debug the Ramp Roll time.  You need to enable the tbWR timer on the TextBox
Sub tbWR_Timer()	'debug textbox
	me.text =	"on? " & RampBalls(0, 0) & " timer: " & RampRoll.Enabled & vbnewline & _
	"1 " & Typename(RampBalls(1, 0)) & " ID:" & RampBalls(1, 1) & " type:" & RampType(1) & " Loops:" & RampBalls(1, 2) & vbnewline & _
	"2 " & Typename(RampBalls(2, 0)) & " ID:" & RampBalls(2, 1) & " type:" & RampType(2) & " Loops:" & RampBalls(2, 2) & vbnewline & _
	"3 " & Typename(RampBalls(3, 0)) & " ID:" & RampBalls(3, 1) & " type:" & RampType(3) & " Loops:" & RampBalls(3, 2) & vbnewline & _
	"4 " & Typename(RampBalls(4, 0)) & " ID:" & RampBalls(4, 1) & " type:" & RampType(4) & " Loops:" & RampBalls(4, 2) & vbnewline & _
	"5 " & Typename(RampBalls(5, 0)) & " ID:" & RampBalls(5, 1) & " type:" & RampType(5) & " Loops:" & RampBalls(5, 2) & vbnewline & _
	"6 " & Typename(RampBalls(6, 0)) & " ID:" & RampBalls(6, 1) & " type:" & RampType(6) & " Loops:" & RampBalls(6, 2) & vbnewline & _
	" "
End Sub


Function BallPitch(ball) ' Calculates the pitch of the sound based on the ball speed
    BallPitch = pSlope(BallVel(ball), 1, -1000, 60, 10000)
End Function

Function BallPitchV(ball) ' Calculates the pitch of the sound based on the ball speed Variation
	BallPitchV = pSlope(BallVel(ball), 1, -4000, 60, 7000)
End Function


'******************************************************
'**** END RAMP ROLLING SFX
'******************************************************


'******************************************************
'****  FLEEP MECHANICAL SOUNDS
'******************************************************


'///////////////////////////////  SOUNDS PARAMETERS  //////////////////////////////
Dim GlobalSoundLevel, CoinSoundLevel, PlungerReleaseSoundLevel, PlungerPullSoundLevel, NudgeLeftSoundLevel
Dim NudgeRightSoundLevel, NudgeCenterSoundLevel, StartButtonSoundLevel, RollingSoundFactor

CoinSoundLevel = 1														'volume level; range [0, 1]
NudgeLeftSoundLevel = 1													'volume level; range [0, 1]
NudgeRightSoundLevel = 1												'volume level; range [0, 1]
NudgeCenterSoundLevel = 1												'volume level; range [0, 1]
StartButtonSoundLevel = 0.1												'volume level; range [0, 1]
PlungerReleaseSoundLevel = 0.8 '1 wjr											'volume level; range [0, 1]
PlungerPullSoundLevel = 1												'volume level; range [0, 1]
RollingSoundFactor = 1.1/5		

'///////////////////////-----Solenoids, Kickers and Flash Relays-----///////////////////////
Dim FlipperUpAttackMinimumSoundLevel, FlipperUpAttackMaximumSoundLevel, FlipperUpAttackLeftSoundLevel, FlipperUpAttackRightSoundLevel
Dim FlipperUpSoundLevel, FlipperDownSoundLevel, FlipperLeftHitParm, FlipperRightHitParm
Dim SlingshotSoundLevel, BumperSoundFactor, KnockerSoundLevel

FlipperUpAttackMinimumSoundLevel = 0.010           						'volume level; range [0, 1]
FlipperUpAttackMaximumSoundLevel = 0.635								'volume level; range [0, 1]
FlipperUpSoundLevel = 1.0                        						'volume level; range [0, 1]
FlipperDownSoundLevel = 0.45                      						'volume level; range [0, 1]
FlipperLeftHitParm = FlipperUpSoundLevel								'sound helper; not configurable
FlipperRightHitParm = FlipperUpSoundLevel								'sound helper; not configurable
SlingshotSoundLevel = 0.95												'volume level; range [0, 1]
BumperSoundFactor = 4.25												'volume multiplier; must not be zero
KnockerSoundLevel = 1 													'volume level; range [0, 1]

'///////////////////////-----Ball Drops, Bumps and Collisions-----///////////////////////
Dim RubberStrongSoundFactor, RubberWeakSoundFactor, RubberFlipperSoundFactor,BallWithBallCollisionSoundFactor
Dim BallBouncePlayfieldSoftFactor, BallBouncePlayfieldHardFactor, PlasticRampDropToPlayfieldSoundLevel, WireRampDropToPlayfieldSoundLevel, DelayedBallDropOnPlayfieldSoundLevel
Dim WallImpactSoundFactor, MetalImpactSoundFactor, SubwaySoundLevel, SubwayEntrySoundLevel, ScoopEntrySoundLevel
Dim SaucerLockSoundLevel, SaucerKickSoundLevel

BallWithBallCollisionSoundFactor = 3.2									'volume multiplier; must not be zero
RubberStrongSoundFactor = 0.055/5											'volume multiplier; must not be zero
RubberWeakSoundFactor = 0.075/5											'volume multiplier; must not be zero
RubberFlipperSoundFactor = 0.075/5										'volume multiplier; must not be zero
BallBouncePlayfieldSoftFactor = 0.025									'volume multiplier; must not be zero
BallBouncePlayfieldHardFactor = 0.025									'volume multiplier; must not be zero
DelayedBallDropOnPlayfieldSoundLevel = 0.8									'volume level; range [0, 1]
WallImpactSoundFactor = 0.075											'volume multiplier; must not be zero
MetalImpactSoundFactor = 0.075/3
SaucerLockSoundLevel = 0.8
SaucerKickSoundLevel = 0.8

'///////////////////////-----Gates, Spinners, Rollovers and Targets-----///////////////////////

Dim GateSoundLevel, TargetSoundFactor, SpinnerSoundLevel, RolloverSoundLevel, DTSoundLevel

GateSoundLevel = 0.5/5													'volume level; range [0, 1]
TargetSoundFactor = 0.0025 * 10											'volume multiplier; must not be zero
DTSoundLevel = 0.25														'volume multiplier; must not be zero
RolloverSoundLevel = 0.25                              					'volume level; range [0, 1]
SpinnerSoundLevel = 0.5                              					'volume level; range [0, 1]

'///////////////////////-----Ball Release, Guides and Drain-----///////////////////////
Dim DrainSoundLevel, BallReleaseSoundLevel, BottomArchBallGuideSoundFactor, FlipperBallGuideSoundFactor 

DrainSoundLevel = 0.8														'volume level; range [0, 1]
BallReleaseSoundLevel = 1												'volume level; range [0, 1]
BottomArchBallGuideSoundFactor = 0.2									'volume multiplier; must not be zero
FlipperBallGuideSoundFactor = 0.015										'volume multiplier; must not be zero

'///////////////////////-----Loops and Lanes-----///////////////////////
Dim ArchSoundFactor
ArchSoundFactor = 0.025/5													'volume multiplier; must not be zero


'/////////////////////////////  SOUND PLAYBACK FUNCTIONS  ////////////////////////////
'/////////////////////////////  POSITIONAL SOUND PLAYBACK METHODS  ////////////////////////////
' Positional sound playback methods will play a sound, depending on the X,Y position of the table element or depending on ActiveBall object position
' These are similar subroutines that are less complicated to use (e.g. simply use standard parameters for the PlaySound call)
' For surround setup - positional sound playback functions will fade between front and rear surround channels and pan between left and right channels
' For stereo setup - positional sound playback functions will only pan between left and right channels
' For mono setup - positional sound playback functions will not pan between left and right channels and will not fade between front and rear channels

' PlaySound full syntax - PlaySound(string, int loopcount, float volume, float pan, float randompitch, int pitch, bool useexisting, bool restart, float front_rear_fade)
' Note - These functions will not work (currently) for walls/slingshots as these do not feature a simple, single X,Y position
Sub PlaySoundAtLevelStatic(playsoundparams, aVol, tableobj)
	PlaySound playsoundparams, 0, aVol * VolumeDial, AudioPan(tableobj), 0, 0, 0, 0, AudioFade(tableobj)
End Sub

Sub PlaySoundAtLevelExistingStatic(playsoundparams, aVol, tableobj)
	PlaySound playsoundparams, 0, aVol * VolumeDial, AudioPan(tableobj), 0, 0, 1, 0, AudioFade(tableobj)
End Sub

Sub PlaySoundAtLevelStaticLoop(playsoundparams, aVol, tableobj)
	PlaySound playsoundparams, -1, aVol * VolumeDial, AudioPan(tableobj), 0, 0, 0, 0, AudioFade(tableobj)
End Sub

Sub PlaySoundAtLevelStaticRandomPitch(playsoundparams, aVol, randomPitch, tableobj)
	PlaySound playsoundparams, 0, aVol * VolumeDial, AudioPan(tableobj), randomPitch, 0, 0, 0, AudioFade(tableobj)
End Sub

Sub PlaySoundAtLevelActiveBall(playsoundparams, aVol)
	PlaySound playsoundparams, 0, aVol * VolumeDial, AudioPan(ActiveBall), 0, 0, 0, 0, AudioFade(ActiveBall)
End Sub

Sub PlaySoundAtLevelExistingActiveBall(playsoundparams, aVol)
	PlaySound playsoundparams, 0, aVol * VolumeDial, AudioPan(ActiveBall), 0, 0, 1, 0, AudioFade(ActiveBall)
End Sub

Sub PlaySoundAtLeveTimerActiveBall(playsoundparams, aVol, ballvariable)
	PlaySound playsoundparams, 0, aVol * VolumeDial, AudioPan(ballvariable), 0, 0, 0, 0, AudioFade(ballvariable)
End Sub

Sub PlaySoundAtLevelTimerExistingActiveBall(playsoundparams, aVol, ballvariable)
	PlaySound playsoundparams, 0, aVol * VolumeDial, AudioPan(ballvariable), 0, 0, 1, 0, AudioFade(ballvariable)
End Sub

Sub PlaySoundAtLevelRoll(playsoundparams, aVol, pitch)
	PlaySound playsoundparams, -1, aVol * VolumeDial, AudioPan(tableobj), randomPitch, 0, 0, 0, AudioFade(tableobj)
End Sub

' Previous Positional Sound Subs

Sub PlaySoundAt(soundname, tableobj)
	PlaySound soundname, 1, 1 * VolumeDial, AudioPan(tableobj), 0,0,0, 1, AudioFade(tableobj)
End Sub

Sub PlaySoundAtVol(soundname, tableobj, aVol)
	PlaySound soundname, 1, aVol * VolumeDial, AudioPan(tableobj), 0,0,0, 1, AudioFade(tableobj)
End Sub

Sub PlaySoundAtBall(soundname)
	PlaySoundAt soundname, ActiveBall
End Sub

Sub PlaySoundAtBallVol (Soundname, aVol)
	Playsound soundname, 1,aVol * VolumeDial, AudioPan(ActiveBall), 0,0,0, 1, AudioFade(ActiveBall)
End Sub

Sub PlaySoundAtBallVolM (Soundname, aVol)
	Playsound soundname, 1,aVol * VolumeDial, AudioPan(ActiveBall), 0,0,0, 0, AudioFade(ActiveBall)
End Sub

Sub PlaySoundAtVolLoops(sound, tableobj, Vol, Loops)
	PlaySound sound, Loops, Vol * VolumeDial, AudioPan(tableobj), 0,0,0, 1, AudioFade(tableobj)
End Sub


'******************************************************
'  Fleep  Supporting Ball & Sound Functions
'******************************************************

Function AudioFade(tableobj) ' Fades between front and back of the table (for surround systems or 2x2 speakers, etc), depending on the Y position on the table. "table1" is the name of the table
  Dim tmp
    tmp = tableobj.y * 2 / tableheight-1

	if tmp > 7000 Then
		tmp = 7000
	elseif tmp < -7000 Then
		tmp = -7000
	end if

    If tmp > 0 Then
		AudioFade = Csng(tmp ^10)
    Else
        AudioFade = Csng(-((- tmp) ^10) )
    End If
End Function

Function AudioPan(tableobj) ' Calculates the pan for a tableobj based on the X position on the table. "table1" is the name of the table
    Dim tmp
    tmp = tableobj.x * 2 / tablewidth-1

	if tmp > 7000 Then
		tmp = 7000
	elseif tmp < -7000 Then
		tmp = -7000
	end if

    If tmp > 0 Then
        AudioPan = Csng(tmp ^10)
    Else
        AudioPan = Csng(-((- tmp) ^10) )
    End If
End Function

Function Vol(ball) ' Calculates the volume of the sound based on the ball speed
	Vol = Csng(BallVel(ball) ^2)
End Function

Function Volz(ball) ' Calculates the volume of the sound based on the ball speed
	Volz = Csng((ball.velz) ^2)
End Function

Function Pitch(ball) ' Calculates the pitch of the sound based on the ball speed
	Pitch = BallVel(ball) * 20
End Function

Function BallVel(ball) 'Calculates the ball speed
	BallVel = INT(SQR((ball.VelX ^2) + (ball.VelY ^2) ) )
End Function

Function VolPlayfieldRoll(ball) ' Calculates the roll volume of the sound based on the ball speed
	VolPlayfieldRoll = RollingSoundFactor * 0.0005 * Csng(BallVel(ball) ^3)
End Function

Function PitchPlayfieldRoll(ball) ' Calculates the roll pitch of the sound based on the ball speed
	PitchPlayfieldRoll = BallVel(ball) ^2 * 15
End Function

Function RndInt(min, max)
	RndInt = Int(Rnd() * (max-min + 1) + min)' Sets a random number integer between min and max
End Function

Function RndNum(min, max)
	RndNum = Rnd() * (max-min) + min' Sets a random number between min and max
End Function

'/////////////////////////////  GENERAL SOUND SUBROUTINES  ////////////////////////////
Sub SoundStartButton()
	PlaySound ("Start_Button"), 0, StartButtonSoundLevel, 0, 0.25
End Sub

Sub SoundNudgeLeft()
	PlaySound ("Nudge_" & Int(Rnd*2)+1), 0, NudgeLeftSoundLevel * VolumeDial, -0.1, 0.25
End Sub

Sub SoundNudgeRight()
	PlaySound ("Nudge_" & Int(Rnd*2)+1), 0, NudgeRightSoundLevel * VolumeDial, 0.1, 0.25
End Sub

Sub SoundNudgeCenter()
	PlaySound ("Nudge_" & Int(Rnd*2)+1), 0, NudgeCenterSoundLevel * VolumeDial, 0, 0.25
End Sub


Sub SoundPlungerPull()
	PlaySoundAtLevelStatic ("Plunger_Pull_1"), PlungerPullSoundLevel, Plunger
End Sub

Sub SoundPlungerReleaseBall()
	PlaySoundAtLevelStatic ("Plunger_Release_Ball"), PlungerReleaseSoundLevel, Plunger	
End Sub

Sub SoundPlungerReleaseNoBall()
	PlaySoundAtLevelStatic ("Plunger_Release_No_Ball"), PlungerReleaseSoundLevel, Plunger
End Sub


'/////////////////////////////  KNOCKER SOLENOID  ////////////////////////////
Sub KnockerSolenoid()
	PlaySoundAtLevelStatic SoundFX("Knocker_1",DOFKnocker), KnockerSoundLevel, KnockerPosition
End Sub

'/////////////////////////////  DRAIN SOUNDS  ////////////////////////////
Sub RandomSoundDrain(drainswitch)
	PlaySoundAtLevelStatic ("Drain_" & Int(Rnd*11)+1), DrainSoundLevel, drainswitch
End Sub

'/////////////////////////////  TROUGH BALL RELEASE SOLENOID SOUNDS  ////////////////////////////

Sub RandomSoundBallRelease(drainswitch)
	PlaySoundAtLevelStatic SoundFX("BallRelease" & Int(Rnd*7)+1,DOFContactors), BallReleaseSoundLevel, drainswitch
End Sub

'/////////////////////////////  SLINGSHOT SOLENOID SOUNDS  ////////////////////////////
Sub RandomSoundSlingshotLeft(sling)
	PlaySoundAtLevelStatic SoundFX("Sling_L" & Int(Rnd*10)+1,DOFContactors), SlingshotSoundLevel, Sling
End Sub

Sub RandomSoundSlingshotRight(sling)
	PlaySoundAtLevelStatic SoundFX("Sling_R" & Int(Rnd*8)+1,DOFContactors), SlingshotSoundLevel, Sling
End Sub

'/////////////////////////////  BUMPER SOLENOID SOUNDS  ////////////////////////////
Sub RandomSoundBumperTop(Bump)
	PlaySoundAtLevelStatic SoundFX("Bumpers_Top_" & Int(Rnd*5)+1,DOFContactors), Vol(ActiveBall) * BumperSoundFactor, Bump
End Sub

Sub RandomSoundBumperMiddle(Bump)
	PlaySoundAtLevelStatic SoundFX("Bumpers_Middle_" & Int(Rnd*5)+1,DOFContactors), Vol(ActiveBall) * BumperSoundFactor, Bump
End Sub

Sub RandomSoundBumperBottom(Bump)
	PlaySoundAtLevelStatic SoundFX("Bumpers_Bottom_" & Int(Rnd*5)+1,DOFContactors), Vol(ActiveBall) * BumperSoundFactor, Bump
End Sub

'/////////////////////////////  SPINNER SOUNDS  ////////////////////////////
Sub SoundSpinner(spinnerswitch)
	PlaySoundAtLevelStatic ("Spinner"), SpinnerSoundLevel, spinnerswitch
End Sub


'/////////////////////////////  FLIPPER BATS SOUND SUBROUTINES  ////////////////////////////
'/////////////////////////////  FLIPPER BATS SOLENOID ATTACK SOUND  ////////////////////////////
Sub SoundFlipperUpAttackLeft(flipper)
	FlipperUpAttackLeftSoundLevel = RndNum(FlipperUpAttackMinimumSoundLevel, FlipperUpAttackMaximumSoundLevel)
	PlaySoundAtLevelStatic SoundFX("Flipper_Attack-L01",DOFFlippers), FlipperUpAttackLeftSoundLevel, flipper
End Sub

Sub SoundFlipperUpAttackRight(flipper)
	FlipperUpAttackRightSoundLevel = RndNum(FlipperUpAttackMinimumSoundLevel, FlipperUpAttackMaximumSoundLevel)
	PlaySoundAtLevelStatic SoundFX("Flipper_Attack-R01",DOFFlippers), FlipperUpAttackLeftSoundLevel, flipper
End Sub

'/////////////////////////////  FLIPPER BATS SOLENOID CORE SOUND  ////////////////////////////
Sub RandomSoundFlipperUpLeft(flipper)
	PlaySoundAtLevelStatic SoundFX("Flipper_L0" & Int(Rnd*9)+1,DOFFlippers), FlipperLeftHitParm, Flipper
End Sub

Sub RandomSoundFlipperUpRight(flipper)
	PlaySoundAtLevelStatic SoundFX("Flipper_R0" & Int(Rnd*9)+1,DOFFlippers), FlipperRightHitParm, Flipper
End Sub

Sub RandomSoundReflipUpLeft(flipper)
	PlaySoundAtLevelStatic SoundFX("Flipper_ReFlip_L0" & Int(Rnd*3)+1,DOFFlippers), (RndNum(0.8, 1))*FlipperUpSoundLevel, Flipper
End Sub

Sub RandomSoundReflipUpRight(flipper)
	PlaySoundAtLevelStatic SoundFX("Flipper_ReFlip_R0" & Int(Rnd*3)+1,DOFFlippers), (RndNum(0.8, 1))*FlipperUpSoundLevel, Flipper
End Sub

Sub RandomSoundFlipperDownLeft(flipper)
	PlaySoundAtLevelStatic SoundFX("Flipper_Left_Down_" & Int(Rnd*7)+1,DOFFlippers), FlipperDownSoundLevel, Flipper
End Sub

Sub RandomSoundFlipperDownRight(flipper)
	PlaySoundAtLevelStatic SoundFX("Flipper_Right_Down_" & Int(Rnd*8)+1,DOFFlippers), FlipperDownSoundLevel, Flipper
End Sub

'/////////////////////////////  FLIPPER BATS BALL COLLIDE SOUND  ////////////////////////////

Sub LeftFlipperCollide(parm)
	FlipperLeftHitParm = parm/10
	If FlipperLeftHitParm > 1 Then
		FlipperLeftHitParm = 1
	End If
	FlipperLeftHitParm = FlipperUpSoundLevel * FlipperLeftHitParm
	RandomSoundRubberFlipper(parm)
End Sub

Sub RightFlipperCollide(parm)
	FlipperRightHitParm = parm/10
	If FlipperRightHitParm > 1 Then
		FlipperRightHitParm = 1
	End If
	FlipperRightHitParm = FlipperUpSoundLevel * FlipperRightHitParm
	RandomSoundRubberFlipper(parm)
End Sub

Sub RandomSoundRubberFlipper(parm)
	PlaySoundAtLevelActiveBall ("Flipper_Rubber_" & Int(Rnd*7)+1), parm  * RubberFlipperSoundFactor
End Sub

'/////////////////////////////  ROLLOVER SOUNDS  ////////////////////////////
Sub RandomSoundRollover()
	PlaySoundAtLevelActiveBall ("Rollover_" & Int(Rnd*4)+1), RolloverSoundLevel
End Sub

Sub Rollovers_Hit(idx)
	RandomSoundRollover
End Sub

'/////////////////////////////  VARIOUS PLAYFIELD SOUND SUBROUTINES  ////////////////////////////
'/////////////////////////////  RUBBERS AND POSTS  ////////////////////////////
'/////////////////////////////  RUBBERS - EVENTS  ////////////////////////////
Sub Rubbers_Hit(idx)
	dim finalspeed
	finalspeed=SQR(activeball.velx * activeball.velx + activeball.vely * activeball.vely)
	If finalspeed > 5 then		
		RandomSoundRubberStrong 1
	End if
	If finalspeed <= 5 then
		RandomSoundRubberWeak()
	End If	
End Sub

'/////////////////////////////  RUBBERS AND POSTS - STRONG IMPACTS  ////////////////////////////
Sub RandomSoundRubberStrong(voladj)
	Select Case Int(Rnd*10)+1
		Case 1 : PlaySoundAtLevelActiveBall ("Rubber_Strong_1"), Vol(ActiveBall) * RubberStrongSoundFactor*voladj
		Case 2 : PlaySoundAtLevelActiveBall ("Rubber_Strong_2"), Vol(ActiveBall) * RubberStrongSoundFactor*voladj
		Case 3 : PlaySoundAtLevelActiveBall ("Rubber_Strong_3"), Vol(ActiveBall) * RubberStrongSoundFactor*voladj
		Case 4 : PlaySoundAtLevelActiveBall ("Rubber_Strong_4"), Vol(ActiveBall) * RubberStrongSoundFactor*voladj
		Case 5 : PlaySoundAtLevelActiveBall ("Rubber_Strong_5"), Vol(ActiveBall) * RubberStrongSoundFactor*voladj
		Case 6 : PlaySoundAtLevelActiveBall ("Rubber_Strong_6"), Vol(ActiveBall) * RubberStrongSoundFactor*voladj
		Case 7 : PlaySoundAtLevelActiveBall ("Rubber_Strong_7"), Vol(ActiveBall) * RubberStrongSoundFactor*voladj
		Case 8 : PlaySoundAtLevelActiveBall ("Rubber_Strong_8"), Vol(ActiveBall) * RubberStrongSoundFactor*voladj
		Case 9 : PlaySoundAtLevelActiveBall ("Rubber_Strong_9"), Vol(ActiveBall) * RubberStrongSoundFactor*voladj
		Case 10 : PlaySoundAtLevelActiveBall ("Rubber_1_Hard"), Vol(ActiveBall) * RubberStrongSoundFactor * 0.6*voladj
	End Select
End Sub

'/////////////////////////////  RUBBERS AND POSTS - WEAK IMPACTS  ////////////////////////////
Sub RandomSoundRubberWeak()
	PlaySoundAtLevelActiveBall ("Rubber_" & Int(Rnd*9)+1), Vol(ActiveBall) * RubberWeakSoundFactor
End Sub

'/////////////////////////////  WALL IMPACTS  ////////////////////////////
Sub Walls_Hit(idx)
	RandomSoundWall()      
End Sub

Sub RandomSoundWall()
	dim finalspeed
	finalspeed=SQR(activeball.velx * activeball.velx + activeball.vely * activeball.vely)
	If finalspeed > 16 then 
		Select Case Int(Rnd*5)+1
			Case 1 : PlaySoundAtLevelExistingActiveBall ("Wall_Hit_1"), Vol(ActiveBall) * WallImpactSoundFactor
			Case 2 : PlaySoundAtLevelExistingActiveBall ("Wall_Hit_2"), Vol(ActiveBall) * WallImpactSoundFactor
			Case 3 : PlaySoundAtLevelExistingActiveBall ("Wall_Hit_5"), Vol(ActiveBall) * WallImpactSoundFactor
			Case 4 : PlaySoundAtLevelExistingActiveBall ("Wall_Hit_7"), Vol(ActiveBall) * WallImpactSoundFactor
			Case 5 : PlaySoundAtLevelExistingActiveBall ("Wall_Hit_9"), Vol(ActiveBall) * WallImpactSoundFactor
		End Select
	End if
	If finalspeed >= 6 AND finalspeed <= 16 then
		Select Case Int(Rnd*4)+1
			Case 1 : PlaySoundAtLevelExistingActiveBall ("Wall_Hit_3"), Vol(ActiveBall) * WallImpactSoundFactor
			Case 2 : PlaySoundAtLevelExistingActiveBall ("Wall_Hit_4"), Vol(ActiveBall) * WallImpactSoundFactor
			Case 3 : PlaySoundAtLevelExistingActiveBall ("Wall_Hit_6"), Vol(ActiveBall) * WallImpactSoundFactor
			Case 4 : PlaySoundAtLevelExistingActiveBall ("Wall_Hit_8"), Vol(ActiveBall) * WallImpactSoundFactor
		End Select
	End If
	If finalspeed < 6 Then
		Select Case Int(Rnd*3)+1
			Case 1 : PlaySoundAtLevelExistingActiveBall ("Wall_Hit_4"), Vol(ActiveBall) * WallImpactSoundFactor
			Case 2 : PlaySoundAtLevelExistingActiveBall ("Wall_Hit_6"), Vol(ActiveBall) * WallImpactSoundFactor
			Case 3 : PlaySoundAtLevelExistingActiveBall ("Wall_Hit_8"), Vol(ActiveBall) * WallImpactSoundFactor
		End Select
	End if
End Sub

'/////////////////////////////  METAL TOUCH SOUNDS  ////////////////////////////
Sub RandomSoundMetal()
	PlaySoundAtLevelActiveBall ("Metal_Touch_" & Int(Rnd*13)+1), Vol(ActiveBall) * MetalImpactSoundFactor
End Sub

'/////////////////////////////  METAL - EVENTS  ////////////////////////////

Sub Metals_Hit (idx)
	RandomSoundMetal
End Sub

Sub ShooterDiverter_collide(idx)
	RandomSoundMetal
End Sub

'/////////////////////////////  BOTTOM ARCH BALL GUIDE  ////////////////////////////
'/////////////////////////////  BOTTOM ARCH BALL GUIDE - SOFT BOUNCES  ////////////////////////////
Sub RandomSoundBottomArchBallGuide()
	dim finalspeed
	finalspeed=SQR(activeball.velx * activeball.velx + activeball.vely * activeball.vely)
	If finalspeed > 16 then 
		PlaySoundAtLevelActiveBall ("Apron_Bounce_"& Int(Rnd*2)+1), Vol(ActiveBall) * BottomArchBallGuideSoundFactor
	End if
	If finalspeed >= 6 AND finalspeed <= 16 then
		Select Case Int(Rnd*2)+1
			Case 1 : PlaySoundAtLevelActiveBall ("Apron_Bounce_1"), Vol(ActiveBall) * BottomArchBallGuideSoundFactor
			Case 2 : PlaySoundAtLevelActiveBall ("Apron_Bounce_Soft_1"), Vol(ActiveBall) * BottomArchBallGuideSoundFactor
		End Select
	End If
	If finalspeed < 6 Then
		Select Case Int(Rnd*2)+1
			Case 1 : PlaySoundAtLevelActiveBall ("Apron_Bounce_Soft_1"), Vol(ActiveBall) * BottomArchBallGuideSoundFactor
			Case 2 : PlaySoundAtLevelActiveBall ("Apron_Medium_3"), Vol(ActiveBall) * BottomArchBallGuideSoundFactor
		End Select
	End if
End Sub

'/////////////////////////////  BOTTOM ARCH BALL GUIDE - HARD HITS  ////////////////////////////
Sub RandomSoundBottomArchBallGuideHardHit()
	PlaySoundAtLevelActiveBall ("Apron_Hard_Hit_" & Int(Rnd*3)+1), BottomArchBallGuideSoundFactor * 0.25
End Sub

Sub Apron_Hit (idx)
	If Abs(cor.ballvelx(activeball.id) < 4) and cor.ballvely(activeball.id) > 7 then
		RandomSoundBottomArchBallGuideHardHit()
	Else
		RandomSoundBottomArchBallGuide
	End If
End Sub

'/////////////////////////////  FLIPPER BALL GUIDE  ////////////////////////////
Sub RandomSoundFlipperBallGuide()
	dim finalspeed
	finalspeed=SQR(activeball.velx * activeball.velx + activeball.vely * activeball.vely)
	If finalspeed > 16 then 
		Select Case Int(Rnd*2)+1
			Case 1 : PlaySoundAtLevelActiveBall ("Apron_Hard_1"),  Vol(ActiveBall) * FlipperBallGuideSoundFactor
			Case 2 : PlaySoundAtLevelActiveBall ("Apron_Hard_2"),  Vol(ActiveBall) * 0.8 * FlipperBallGuideSoundFactor
		End Select
	End if
	If finalspeed >= 6 AND finalspeed <= 16 then
		PlaySoundAtLevelActiveBall ("Apron_Medium_" & Int(Rnd*3)+1),  Vol(ActiveBall) * FlipperBallGuideSoundFactor
	End If
	If finalspeed < 6 Then
		PlaySoundAtLevelActiveBall ("Apron_Soft_" & Int(Rnd*7)+1),  Vol(ActiveBall) * FlipperBallGuideSoundFactor
	End If
End Sub

'/////////////////////////////  TARGET HIT SOUNDS  ////////////////////////////
Sub RandomSoundTargetHitStrong()
	PlaySoundAtLevelActiveBall SoundFX("Target_Hit_" & Int(Rnd*4)+5,DOFTargets), Vol(ActiveBall) * 0.45 * TargetSoundFactor
End Sub

Sub RandomSoundTargetHitWeak()		
	PlaySoundAtLevelActiveBall SoundFX("Target_Hit_" & Int(Rnd*4)+1,DOFTargets), Vol(ActiveBall) * TargetSoundFactor
End Sub

Sub PlayTargetSound()
	dim finalspeed
	finalspeed=SQR(activeball.velx * activeball.velx + activeball.vely * activeball.vely)
	If finalspeed > 10 then
		RandomSoundTargetHitStrong()
		RandomSoundBallBouncePlayfieldSoft Activeball
	Else 
		RandomSoundTargetHitWeak()
	End If	
End Sub

Sub Targets_Hit (idx)
	PlayTargetSound	
End Sub

'/////////////////////////////  BALL BOUNCE SOUNDS  ////////////////////////////
Sub RandomSoundBallBouncePlayfieldSoft(aBall)
	Select Case Int(Rnd*9)+1
		Case 1 : PlaySoundAtLevelStatic ("Ball_Bounce_Playfield_Soft_1"), volz(aBall) * BallBouncePlayfieldSoftFactor, aBall
		Case 2 : PlaySoundAtLevelStatic ("Ball_Bounce_Playfield_Soft_2"), volz(aBall) * BallBouncePlayfieldSoftFactor * 0.5, aBall
		Case 3 : PlaySoundAtLevelStatic ("Ball_Bounce_Playfield_Soft_3"), volz(aBall) * BallBouncePlayfieldSoftFactor * 0.8, aBall
		Case 4 : PlaySoundAtLevelStatic ("Ball_Bounce_Playfield_Soft_4"), volz(aBall) * BallBouncePlayfieldSoftFactor * 0.5, aBall
		Case 5 : PlaySoundAtLevelStatic ("Ball_Bounce_Playfield_Soft_5"), volz(aBall) * BallBouncePlayfieldSoftFactor, aBall
		Case 6 : PlaySoundAtLevelStatic ("Ball_Bounce_Playfield_Hard_1"), volz(aBall) * BallBouncePlayfieldSoftFactor * 0.2, aBall
		Case 7 : PlaySoundAtLevelStatic ("Ball_Bounce_Playfield_Hard_2"), volz(aBall) * BallBouncePlayfieldSoftFactor * 0.2, aBall
		Case 8 : PlaySoundAtLevelStatic ("Ball_Bounce_Playfield_Hard_5"), volz(aBall) * BallBouncePlayfieldSoftFactor * 0.2, aBall
		Case 9 : PlaySoundAtLevelStatic ("Ball_Bounce_Playfield_Hard_7"), volz(aBall) * BallBouncePlayfieldSoftFactor * 0.3, aBall
	End Select
End Sub

Sub RandomSoundBallBouncePlayfieldHard(aBall)
	PlaySoundAtLevelStatic ("Ball_Bounce_Playfield_Hard_" & Int(Rnd*7)+1), volz(aBall) * BallBouncePlayfieldHardFactor, aBall
End Sub

'/////////////////////////////  DELAYED DROP - TO PLAYFIELD - SOUND  ////////////////////////////
Sub RandomSoundDelayedBallDropOnPlayfield(aBall)
	Select Case Int(Rnd*5)+1
		Case 1 : PlaySoundAtLevelStatic ("Ball_Drop_Playfield_1_Delayed"), DelayedBallDropOnPlayfieldSoundLevel, aBall
		Case 2 : PlaySoundAtLevelStatic ("Ball_Drop_Playfield_2_Delayed"), DelayedBallDropOnPlayfieldSoundLevel, aBall
		Case 3 : PlaySoundAtLevelStatic ("Ball_Drop_Playfield_3_Delayed"), DelayedBallDropOnPlayfieldSoundLevel, aBall
		Case 4 : PlaySoundAtLevelStatic ("Ball_Drop_Playfield_4_Delayed"), DelayedBallDropOnPlayfieldSoundLevel, aBall
		Case 5 : PlaySoundAtLevelStatic ("Ball_Drop_Playfield_5_Delayed"), DelayedBallDropOnPlayfieldSoundLevel, aBall
	End Select
End Sub

'/////////////////////////////  BALL GATES AND BRACKET GATES SOUNDS  ////////////////////////////

Sub SoundPlayfieldGate()			
	PlaySoundAtLevelStatic ("Gate_FastTrigger_" & Int(Rnd*2)+1), GateSoundLevel, Activeball
End Sub

Sub SoundHeavyGate()
	PlaySoundAtLevelStatic ("Gate_2"), GateSoundLevel, Activeball
End Sub

Sub Gates_hit(idx)
	SoundHeavyGate
End Sub

Sub GatesWire_hit(idx)	
	SoundPlayfieldGate	
End Sub	

'/////////////////////////////  LEFT LANE ENTRANCE - SOUNDS  ////////////////////////////

Sub RandomSoundLeftArch()
	PlaySoundAtLevelActiveBall ("Arch_L" & Int(Rnd*4)+1), Vol(ActiveBall) * ArchSoundFactor
End Sub

Sub RandomSoundRightArch()
	PlaySoundAtLevelActiveBall ("Arch_R" & Int(Rnd*4)+1), Vol(ActiveBall) * ArchSoundFactor
End Sub


Sub Arch1_hit()
	If Activeball.velx > 1 Then SoundPlayfieldGate
	StopSound "Arch_L1"
	StopSound "Arch_L2"
	StopSound "Arch_L3"
	StopSound "Arch_L4"
End Sub

Sub Arch1_unhit()
	If activeball.velx < -8 Then
		RandomSoundRightArch
	End If
End Sub

Sub Arch2_hit()
	If Activeball.velx < 1 Then SoundPlayfieldGate
	StopSound "Arch_R1"
	StopSound "Arch_R2"
	StopSound "Arch_R3"
	StopSound "Arch_R4"
End Sub

Sub Arch2_unhit()
	If activeball.velx > 10 Then
		RandomSoundLeftArch
	End If
End Sub

'/////////////////////////////  SAUCERS (KICKER HOLES)  ////////////////////////////

Sub SoundSaucerLock()
	PlaySoundAtLevelStatic ("Saucer_Enter_" & Int(Rnd*2)+1), SaucerLockSoundLevel, Activeball
End Sub

Sub SoundSaucerKick(scenario, saucer)
	Select Case scenario
		Case 0: PlaySoundAtLevelStatic SoundFX("Saucer_Empty", DOFContactors), SaucerKickSoundLevel, saucer
		Case 1: PlaySoundAtLevelStatic SoundFX("Saucer_Kick", DOFContactors), SaucerKickSoundLevel, saucer
	End Select
End Sub

'/////////////////////////////  BALL COLLISION SOUND  ////////////////////////////
Sub OnBallBallCollision(ball1, ball2, velocity)
	Dim snd
	Select Case Int(Rnd*7)+1
		Case 1 : snd = "Ball_Collide_1"
		Case 2 : snd = "Ball_Collide_2"
		Case 3 : snd = "Ball_Collide_3"
		Case 4 : snd = "Ball_Collide_4"
		Case 5 : snd = "Ball_Collide_5"
		Case 6 : snd = "Ball_Collide_6"
		Case 7 : snd = "Ball_Collide_7"
	End Select

	PlaySound (snd), 0, Csng(velocity) ^2 / 200 * BallWithBallCollisionSoundFactor * VolumeDial, AudioPan(ball1), 0, Pitch(ball1), 0, 0, AudioFade(ball1)
End Sub


'///////////////////////////  DROP TARGET HIT SOUNDS  ///////////////////////////

Sub RandomSoundDropTargetReset(obj)
	PlaySoundAtLevelStatic SoundFX("Drop_Target_Reset_" & Int(Rnd*6)+1,DOFContactors), 1, obj
End Sub

Sub SoundDropTargetDrop(obj)
	PlaySoundAtLevelStatic ("Drop_Target_Down_" & Int(Rnd*6)+1), 200, obj
End Sub

'/////////////////////////////  GI AND FLASHER RELAYS  ////////////////////////////

Const RelayFlashSoundLevel = 0.315									'volume level; range [0, 1];
Const RelayGISoundLevel = 1.05									'volume level; range [0, 1];

Sub Sound_GI_Relay(toggle, obj)
	Select Case toggle
		Case 1
			PlaySoundAtLevelStatic ("Relay_GI_On"), 0.025*RelayGISoundLevel, obj
		Case 0
			PlaySoundAtLevelStatic ("Relay_GI_Off"), 0.025*RelayGISoundLevel, obj
	End Select
End Sub

Sub Sound_Flash_Relay(toggle, obj)
	Select Case toggle
		Case 1
			PlaySoundAtLevelStatic ("Relay_Flash_On"), 0.025*RelayFlashSoundLevel, obj			
		Case 0
			PlaySoundAtLevelStatic ("Relay_Flash_Off"), 0.025*RelayFlashSoundLevel, obj		
	End Select
End Sub

'/////////////////////////////////////////////////////////////////
'					End Mechanical Sounds
'/////////////////////////////////////////////////////////////////

'******************************************************
'****  FLEEP MECHANICAL SOUNDS
'******************************************************



'******************************************************
'****  LAMPZ by nFozzy
'******************************************************


Sub SetLamp(aNr, aOn)
	Lampz.state(aNr) = abs(aOn)
End Sub



Dim NullFader : set NullFader = new NullFadingObject
Dim Lampz : Set Lampz = New LampFader
InitLampsNF              	' Setup lamp assignments
LampTimer.Interval = -1
LampTimer.Enabled = 1

Sub LampTimer_Timer()
	dim x, chglamp
	if UsingROM then chglamp = Controller.ChangedLamps
	If Not IsEmpty(chglamp) Then
		For x = 0 To UBound(chglamp) 			'nmbr = chglamp(x, 0), state = chglamp(x, 1)
			Lampz.state(chglamp(x, 0)) = chglamp(x, 1)
		next
	End If
	Lampz.Update2	'update (fading logic only)
End Sub

Sub DisableLighting(pri, DLintensity, ByVal aLvl)	'cp's script  DLintensity = disabled lighting intesity
	if Lampz.UseFunction then aLvl = Lampz.FilterOut(aLvl)	'Callbacks don't get this filter automatically
	pri.blenddisablelighting = aLvl * DLintensity
End Sub

Sub SetModLamp(id, val)
	Lampz.state(id) = val
End Sub


Sub InsertIntensityUpdate(ByVal aLvl)
	if Lampz.UseFunction then aLvl = LampFilter(aLvl)	'Callbacks don't get this filter automatically
	dim bulb
	for each bulb in InsertLightsInPrim
		bulb.intensity = bulb.uservalue*(1 + aLvl*.35)
	next
End Sub

Sub InsertIntensityUpdateUp(ByVal aLvl)
	if Lampz.UseFunction then aLvl = LampFilter(aLvl)	'Callbacks don't get this filter automatically
	dim bulb
	for each bulb in InsertLightsInPrimUp
		bulb.intensity = bulb.uservalue*(1 + aLvl*.35)
	next
End Sub



const insert_dl_on_white = 200
const insert_dl_on_red = 60
const insert_dl_on_blue = 200
const insert_dl_on_green_tri = 80
const insert_dl_on_green = 200
const insert_dl_on_orange = 200


Sub InitLampsNF()

	'Filtering (comment out to disable)
	Lampz.Filter = "LampFilter"	'Puts all lamp intensityscale output (no callbacks) through this function before updating

	'Adjust fading speeds (max level / full MS fading time). The Modulate property must be set to 1 / max level if lamp is modulated.
'	dim x : for x = 0 to 150 : Lampz.FadeSpeedUp(x) = 1/40 : Lampz.FadeSpeedDown(x) = 1/120 : Lampz.Modulate(x) = 1 : next
	dim x : for x = 0 to 150 : Lampz.FadeSpeedUp(x) = 1/4 : Lampz.FadeSpeedDown(x) = 1/10 : Lampz.Modulate(x) = 1 : next

' GI Fading
	Lampz.FadeSpeedUp(101) = 1/4 : Lampz.FadeSpeedDown(101) = 1/16 : Lampz.Modulate(101) = 1
	Lampz.FadeSpeedUp(102) = 1/4 : Lampz.FadeSpeedDown(102) = 1/16 : Lampz.Modulate(102) = 1
	Lampz.FadeSpeedUp(103) = 1/4 : Lampz.FadeSpeedDown(103) = 1/16 : Lampz.Modulate(103) = 1
	Lampz.FadeSpeedUp(104) = 1/4 : Lampz.FadeSpeedDown(104) = 1/16 : Lampz.Modulate(104) = 1
	Lampz.FadeSpeedUp(105) = 1/4 : Lampz.FadeSpeedDown(105) = 1/16 : Lampz.Modulate(105) = 1
	Lampz.FadeSpeedUp(111) = 1/4 : Lampz.FadeSpeedDown(111) = 1/16 : Lampz.Modulate(111) = 1
	Lampz.FadeSpeedUp(112) = 1/4 : Lampz.FadeSpeedDown(112) = 1/16 : Lampz.Modulate(112) = 1

	'Lampz Assignments

	Lampz.MassAssign(8)=L8
	Lampz.MassAssign(8)= l8a
	Lampz.Callback(8) = "DisableLighting p8, insert_dl_on_red,"
	Lampz.MassAssign(9)=L9
	Lampz.MassAssign(9)= l9a
	Lampz.Callback(9) = "DisableLighting p9, insert_dl_on_orange,"
	Lampz.MassAssign(10)=L10
	Lampz.MassAssign(10)= l10a
	Lampz.Callback(10) = "DisableLighting p10, insert_dl_on_orange,"
	Lampz.MassAssign(11)=L11
	Lampz.MassAssign(11)= l11a
	Lampz.Callback(11) = "DisableLighting p11, insert_dl_on_orange,"
	Lampz.MassAssign(12)=L12
	Lampz.MassAssign(12)= l12a
	Lampz.Callback(12) = "DisableLighting p12, insert_dl_on_orange,"
	Lampz.MassAssign(13)=L13
	Lampz.MassAssign(13)= l13a
	Lampz.Callback(13) = "DisableLighting p13, insert_dl_on_orange,"
	Lampz.MassAssign(14)=L14
	Lampz.MassAssign(11)= l14a
	Lampz.Callback(11) = "DisableLighting p11, insert_dl_on_orange,"
	Lampz.MassAssign(15)=L15
	Lampz.MassAssign(15)= l15a
	Lampz.Callback(15) = "DisableLighting p15, insert_dl_on_green,"
	Lampz.MassAssign(16)=L16
	Lampz.MassAssign(16)= l16a
	Lampz.Callback(16) = "DisableLighting p16, insert_dl_on_green,"
	Lampz.MassAssign(17)=L17
	Lampz.MassAssign(17)= l17a
	Lampz.Callback(17) = "DisableLighting p17, insert_dl_on_green,"
	Lampz.MassAssign(18)=L18
	Lampz.MassAssign(18)= l18a
	Lampz.Callback(18) = "DisableLighting p18, insert_dl_on_blue,"
	Lampz.MassAssign(19)=L19
	Lampz.MassAssign(19)= l19a
	Lampz.Callback(19) = "DisableLighting p19, insert_dl_on_red,"
	Lampz.MassAssign(20)=L20
	Lampz.MassAssign(20)= l20a
	Lampz.Callback(20) = "DisableLighting p20, insert_dl_on_red,"
	Lampz.MassAssign(21)=L21
	Lampz.MassAssign(21)= l21a
	Lampz.Callback(21) = "DisableLighting p21, insert_dl_on_blue,"
	Lampz.MassAssign(22)=L22
	Lampz.MassAssign(22)= l22a
	Lampz.Callback(22) = "DisableLighting p22, insert_dl_on_blue,"
	Lampz.MassAssign(23)=L23
	Lampz.MassAssign(23)= l23a
	Lampz.Callback(23) = "DisableLighting p23, insert_dl_on_blue,"
	Lampz.MassAssign(24)=L24
	Lampz.MassAssign(24)= l24a
	Lampz.Callback(24) = "DisableLighting p24, insert_dl_on_blue,"
	Lampz.MassAssign(25)=L25
	Lampz.MassAssign(25)= l25a
	Lampz.Callback(25) = "DisableLighting p25, insert_dl_on_blue,"
	Lampz.MassAssign(26)=L26
	Lampz.MassAssign(26)= l26a
	Lampz.Callback(26) = "DisableLighting p26, insert_dl_on_blue,"
	Lampz.MassAssign(27)=L27
	Lampz.MassAssign(27)= l27a
	Lampz.Callback(27) = "DisableLighting p27, insert_dl_on_blue,"
	Lampz.MassAssign(28)=L28
	Lampz.MassAssign(28)= l28a
	Lampz.Callback(28) = "DisableLighting p28, insert_dl_on_red,"
	Lampz.MassAssign(29)=L29
	Lampz.MassAssign(29)= l29a
	Lampz.Callback(29) = "DisableLighting p29, insert_dl_on_blue,"
	Lampz.MassAssign(30)=L30
	Lampz.MassAssign(30)= l30a
	Lampz.Callback(30) = "DisableLighting p30, insert_dl_on_orange,"
	Lampz.MassAssign(31)=L31
	Lampz.MassAssign(31)= l31a
	Lampz.Callback(31) = "DisableLighting p31, insert_dl_on_red,"
	Lampz.MassAssign(32)=L32
	Lampz.MassAssign(32)= l32a
	Lampz.Callback(32) = "DisableLighting p32, insert_dl_on_red,"
	Lampz.MassAssign(33)=L33
	Lampz.MassAssign(33)= l33a
	Lampz.Callback(33) = "DisableLighting p33, insert_dl_on_orange,"
	Lampz.MassAssign(34)=L34
	Lampz.MassAssign(34)= l34a
	Lampz.Callback(34) = "DisableLighting p34, insert_dl_on_green_tri,"
	Lampz.MassAssign(35)=L35
	Lampz.MassAssign(35)= l35a
	Lampz.Callback(35) = "DisableLighting p35, insert_dl_on_green_tri,"
	Lampz.MassAssign(43)=L43
	Lampz.MassAssign(43)= l43a
	Lampz.Callback(43) = "DisableLighting p43, insert_dl_on_orange,"
	Lampz.MassAssign(46)=L46
	Lampz.MassAssign(46)= l46a
	Lampz.Callback(46) = "DisableLighting p46, insert_dl_on_blue,"
	Lampz.MassAssign(47)=L47
	Lampz.MassAssign(47)= l47a
	Lampz.Callback(47) = "DisableLighting p47, insert_dl_on_orange,"
	Lampz.MassAssign(48)=L48
	Lampz.MassAssign(48)= l48a
	Lampz.Callback(48) = "DisableLighting p48, insert_dl_on_red,"
	Lampz.MassAssign(49)=L49
	Lampz.MassAssign(49)= l49a
	Lampz.Callback(49) = "DisableLighting p49, insert_dl_on_red,"
	Lampz.MassAssign(50)=L50
	Lampz.MassAssign(50)= l50a
	Lampz.Callback(50) = "DisableLighting p50, insert_dl_on_red,"
	Lampz.MassAssign(51)=L51
	Lampz.MassAssign(51)= l51a
	Lampz.Callback(51) = "DisableLighting p51, insert_dl_on_red,"
	Lampz.MassAssign(52)=L52
	Lampz.MassAssign(52)= l52a
	Lampz.Callback(52) = "DisableLighting p52, insert_dl_on_blue,"
	Lampz.MassAssign(53)=L53
	Lampz.MassAssign(53)= l53a
	Lampz.Callback(53) = "DisableLighting p53, insert_dl_on_blue,"
	Lampz.MassAssign(54)=L54
	Lampz.MassAssign(54)= l54a
	Lampz.Callback(54) = "DisableLighting p54, insert_dl_on_blue,"
	Lampz.MassAssign(55)=L55
	Lampz.MassAssign(55)= l55a
	Lampz.Callback(55) = "DisableLighting p55, insert_dl_on_red,"
	Lampz.MassAssign(56)=L56
	Lampz.MassAssign(56)= l56a
	Lampz.Callback(56) = "DisableLighting p56, insert_dl_on_red,"
	Lampz.MassAssign(57)=L57
	Lampz.MassAssign(57)= l57a
	Lampz.Callback(57) = "DisableLighting p57, insert_dl_on_red,"
	Lampz.MassAssign(58)=L58
	Lampz.MassAssign(58)= l58a
	Lampz.Callback(58) = "DisableLighting p58, insert_dl_on_blue,"
	Lampz.MassAssign(59)=L59
	Lampz.MassAssign(59)= l59a
	Lampz.Callback(59) = "DisableLighting p59, insert_dl_on_blue,"
	Lampz.MassAssign(60)=L60
	Lampz.MassAssign(60)= l60a
	Lampz.Callback(60) = "DisableLighting p60, insert_dl_on_blue,"
	Lampz.MassAssign(61)=L61
	Lampz.MassAssign(61)= l61a
	Lampz.Callback(61) = "DisableLighting p61, insert_dl_on_blue,"
	Lampz.MassAssign(62)=L62
	Lampz.MassAssign(62)= l62a
	Lampz.Callback(62) = "DisableLighting p62, insert_dl_on_red,"
	Lampz.MassAssign(63)=L63
	Lampz.MassAssign(63)= l63a
	Lampz.Callback(63) = "DisableLighting p63, insert_dl_on_red,"
	Lampz.MassAssign(64)=L64
	Lampz.MassAssign(64)= l64a
	Lampz.Callback(64) = "DisableLighting p64, insert_dl_on_red,"

	for each x in GIP
		Lampz.MassAssign(101)= x
	Next

	for each x in GIU
		Lampz.MassAssign(102)= x
	Next


if VR_Room = 0 and cab_mode = 0 Then
	Lampz.Callback(1)="UpdateDTLamps"
	Lampz.Callback(2)="UpdateDTLamps"
	Lampz.Callback(3)="UpdateDTLamps"
	Lampz.Callback(4)="UpdateDTLamps"
	Lampz.Callback(5)="UpdateDTLamps"
	Lampz.Callback(6)="UpdateDTLamps"
	Lampz.Callback(7)="UpdateDTLamps"
End If

if VR_Room = 1 Then
	Lampz.Callback(1)="UpdateVRLamps"
	Lampz.Callback(2)="UpdateVRLamps"
	Lampz.Callback(3)="UpdateVRLamps"
	Lampz.Callback(4)="UpdateVRLamps"
	Lampz.Callback(5)="UpdateVRLamps"
	Lampz.Callback(6)="UpdateVRLamps"
	Lampz.Callback(7)="UpdateVRLamps"
	Lampz.Callback(36)="UpdateVRLamps"
	Lampz.Callback(37)="UpdateVRLamps"
	Lampz.Callback(38)="UpdateVRLamps"
	Lampz.Callback(39)="UpdateVRLamps"
	Lampz.Callback(40)="UpdateVRLamps"
	Lampz.Callback(41)="UpdateVRLamps"
	Lampz.Callback(42)="UpdateVRLamps"

	for each x in VRGILamps
		Lampz.MassAssign(103)= x
	Next

	Lampz.Callback(103)="GIVRBackglass"

End If


	Lampz.Callback(104) = "InsertIntensityUpdate"
	Lampz.Callback(105) = "InsertIntensityUpdateUp"
	Lampz.Callback(111) = "GIUpdates"
	Lampz.Callback(112) = "GIUpdatesUp"

	'Turn off all lamps on startup
	Lampz.Init	'This just turns state of any lamps to 1

	'Immediate update to turn on GI, turn off lamps
	Lampz.Update

End Sub


'====================
'Class jungle nf
'====================

'No-op object instead of adding more conditionals to the main loop
'It also prevents errors if empty lamp numbers are called, and it's only one object
'should be g2g?

Class NullFadingObject : Public Property Let IntensityScale(input) : : End Property : End Class

'version 0.11 - Mass Assign, Changed modulate style
'version 0.12 - Update2 (single -1 timer update) update method for core.vbs
'Version 0.12a - Filter can now be accessed via 'FilterOut'
'Version 0.12b - Changed MassAssign from a sub to an indexed property (new syntax: lampfader.MassAssign(15) = Light1 )
'Version 0.13 - No longer requires setlocale. Callback() can be assigned multiple times per index
' Note: if using multiple 'LampFader' objects, set the 'name' variable to avoid conflicts with callbacks
'Version 0.14 - Updated to support modulated signals - Niwak

Class LampFader
	Public FadeSpeedDown(150), FadeSpeedUp(150)
	Private Lock(150), Loaded(150), OnOff(150)
	Public UseFunction
	Private cFilter
	Public UseCallback(150), cCallback(150)
	Public Lvl(150), Obj(150)
	Private Mult(150)
	Public FrameTime
	Private InitFrame
	Public Name

	Sub Class_Initialize()
		InitFrame = 0
		dim x : for x = 0 to uBound(OnOff) 	'Set up fade speeds
			FadeSpeedDown(x) = 1/100	'fade speed down
			FadeSpeedUp(x) = 1/80		'Fade speed up
			UseFunction = False
			lvl(x) = 0
			OnOff(x) = 0
			Lock(x) = True : Loaded(x) = False
			Mult(x) = 1
		Next
		Name = "LampFaderNF" 'NEEDS TO BE CHANGED IF THERE'S MULTIPLE OF THESE OBJECTS, OTHERWISE CALLBACKS WILL INTERFERE WITH EACH OTHER!!
		for x = 0 to uBound(OnOff) 		'clear out empty obj
			if IsEmpty(obj(x) ) then Set Obj(x) = NullFader' : Loaded(x) = True
		Next
	End Sub

	Public Property Get Locked(idx) : Locked = Lock(idx) : End Property		''debug.print Lampz.Locked(100)	'debug
	Public Property Get state(idx) : state = OnOff(idx) : end Property
	Public Property Let Filter(String) : Set cFilter = GetRef(String) : UseFunction = True : End Property
	Public Function FilterOut(aInput) : if UseFunction Then FilterOut = cFilter(aInput) Else FilterOut = aInput End If : End Function
	'Public Property Let Callback(idx, String) : cCallback(idx) = String : UseCallBack(idx) = True : End Property
	Public Property Let Callback(idx, String)
		UseCallBack(idx) = True
		'cCallback(idx) = String 'old execute method
		'New method: build wrapper subs using ExecuteGlobal, then call them
		cCallback(idx) = cCallback(idx) & "___" & String	'multiple strings dilineated by 3x _

		dim tmp : tmp = Split(cCallback(idx), "___")

		dim str, x : for x = 0 to uBound(tmp)	'build proc contents
			'If Not tmp(x)="" then str = str & "	" & tmp(x) & " aLVL" & "	'" & x & vbnewline	'more verbose
			If Not tmp(x)="" then str = str & tmp(x) & " aLVL:"
		Next
		'msgbox "Sub " & name & idx & "(aLvl):" & str & "End Sub"
		dim out : out = "Sub " & name & idx & "(aLvl):" & str & "End Sub"
		ExecuteGlobal Out

	End Property

	Public Property Let state(ByVal idx, input) 'Major update path
		if TypeName(input) <> "Double" and typename(input) <> "Integer"  and typename(input) <> "Long" then
			If input Then
				input = 1
			Else
				input = 0
			End If
		End If
		if Input <> OnOff(idx) then  'discard redundant updates
			OnOff(idx) = input
			Lock(idx) = False
			Loaded(idx) = False
		End If
	End Property

	'Mass assign, Builds arrays where necessary
	'Sub MassAssign(aIdx, aInput)
	Public Property Let MassAssign(aIdx, aInput)
		If typename(obj(aIdx)) = "NullFadingObject" Then 'if empty, use Set
			if IsArray(aInput) then
				obj(aIdx) = aInput
			Else
				Set obj(aIdx) = aInput
			end if
		Else
			Obj(aIdx) = AppendArray(obj(aIdx), aInput)
		end if
	end Property

	Sub SetLamp(aIdx, aOn) : state(aIdx) = aOn : End Sub	'Solenoid Handler

	Public Sub TurnOnStates()	'If obj contains any light objects, set their states to 1 (Fading is our job!)
		dim debugstr
		dim idx : for idx = 0 to uBound(obj)
			if IsArray(obj(idx)) then
				'debugstr = debugstr & "array found at " & idx & "..."
				dim x, tmp : tmp = obj(idx) 'set tmp to array in order to access it
				for x = 0 to uBound(tmp)
					if typename(tmp(x)) = "Light" then DisableState tmp(x)' : debugstr = debugstr & tmp(x).name & " state'd" & vbnewline
					tmp(x).intensityscale = 0.001 ' this can prevent init stuttering
				Next
			Else
				if typename(obj(idx)) = "Light" then DisableState obj(idx)' : debugstr = debugstr & obj(idx).name & " state'd (not array)" & vbnewline
				obj(idx).intensityscale = 0.001 ' this can prevent init stuttering
			end if
		Next
		''debug.print debugstr
	End Sub
	Private Sub DisableState(ByRef aObj) : aObj.FadeSpeedUp = 1000 : aObj.State = 1 : End Sub	'turn state to 1

	Public Sub Init()	'Just runs TurnOnStates right now
		TurnOnStates
	End Sub

	Public Property Let Modulate(aIdx, aCoef) : Mult(aIdx) = aCoef : Lock(aIdx) = False : Loaded(aIdx) = False: End Property
	Public Property Get Modulate(aIdx) : Modulate = Mult(aIdx) : End Property

	Public Sub Update1()	 'Handle all boolean numeric fading. If done fading, Lock(x) = True. Update on a '1' interval Timer!
		dim x : for x = 0 to uBound(OnOff)
			if not Lock(x) then 'and not Loaded(x) then
				if OnOff(x) > 0 then 'Fade Up
					Lvl(x) = Lvl(x) + FadeSpeedUp(x)
					if Lvl(x) >= OnOff(x) then Lvl(x) = OnOff(x) : Lock(x) = True
				else 'fade down
					Lvl(x) = Lvl(x) - FadeSpeedDown(x)
					if Lvl(x) <= 0 then Lvl(x) = 0 : Lock(x) = True
				end if
			end if
		Next
	End Sub

	Public Sub Update2()	 'Both updates on -1 timer (Lowest latency, but less accurate fading at 60fps vsync)
		FrameTime = gametime - InitFrame : InitFrame = GameTime	'Calculate frametime
		dim x : for x = 0 to uBound(OnOff)
			if not Lock(x) then 'and not Loaded(x) then
				if OnOff(x) > 0 then 'Fade Up
					Lvl(x) = Lvl(x) + FadeSpeedUp(x) * FrameTime
					if Lvl(x) >= OnOff(x) then Lvl(x) = OnOff(x) : Lock(x) = True
				else 'fade down
					Lvl(x) = Lvl(x) - FadeSpeedDown(x) * FrameTime
					if Lvl(x) <= 0 then Lvl(x) = 0 : Lock(x) = True
				end if
			end if
		Next
		Update
	End Sub

	Public Sub Update()	'Handle object updates. Update on a -1 Timer! If done fading, loaded(x) = True
		dim x,xx, aLvl : for x = 0 to uBound(OnOff)
			if not Loaded(x) then
				aLvl = Lvl(x)*Mult(x)
				if IsArray(obj(x) ) Then	'if array
					If UseFunction then
						for each xx in obj(x) : xx.IntensityScale = cFilter(aLvl) : Next
					Else
						for each xx in obj(x) : xx.IntensityScale = aLvl : Next
					End If
				else						'if single lamp or flasher
					If UseFunction then
						obj(x).Intensityscale = cFilter(aLvl)
					Else
						obj(x).Intensityscale = aLvl
					End If
				end if
				'if TypeName(lvl(x)) <> "Double" and typename(lvl(x)) <> "Integer" and typename(lvl(x)) <> "Long" then msgbox "uhh " & 2 & " = " & lvl(x)
				'If UseCallBack(x) then execute cCallback(x) & " " & (Lvl(x))	'Callback
				If UseCallBack(x) then Proc name & x,aLvl	'Proc
				If Lock(x) Then
					if Lvl(x) = OnOff(x) or Lvl(x) = 0 then Loaded(x) = True	'finished fading
				end if
			end if
		Next
	End Sub
End Class


'Lamp Filter
Function LampFilter(aLvl)
	LampFilter = aLvl^1.6	'exponential curve?
End Function


'Helper functions
Sub Proc(string, Callback)	'proc using a string and one argument
	'On Error Resume Next
	dim p : Set P = GetRef(String)
	P Callback
	If err.number = 13 then  msgbox "Proc error! No such procedure: " & vbnewline & string
	if err.number = 424 then msgbox "Proc error! No such Object"
End Sub

Function AppendArray(ByVal aArray, aInput)	'append one value, object, or Array onto the end of a 1 dimensional array
	if IsArray(aInput) then 'Input is an array...
		dim tmp : tmp = aArray
		If not IsArray(aArray) Then	'if not array, create an array
			tmp = aInput
		Else						'Append existing array with aInput array
			Redim Preserve tmp(uBound(aArray) + uBound(aInput)+1)	'If existing array, increase bounds by uBound of incoming array
			dim x : for x = 0 to uBound(aInput)
				if isObject(aInput(x)) then
					Set tmp(x+uBound(aArray)+1 ) = aInput(x)
				Else
					tmp(x+uBound(aArray)+1 ) = aInput(x)
				End If
			Next
			AppendArray = tmp	 'return new array
		End If
	Else 'Input is NOT an array...
		If not IsArray(aArray) Then	'if not array, create an array
			aArray = Array(aArray, aInput)
		Else
			Redim Preserve aArray(uBound(aArray)+1)	'If array, increase bounds by 1
			if isObject(aInput) then
				Set aArray(uBound(aArray)) = aInput
			Else
				aArray(uBound(aArray)) = aInput
			End If
		End If
		AppendArray = aArray 'return new array
	End If
End Function

'******************************************************
'****  END LAMPZ
'******************************************************



'*******************************************
'  Ball brightness code
'*******************************************

if BallLightness = 0 Then
	table1.BallImage="ball-dark"
	table1.BallFrontDecal="JPBall-Scratches"
elseif BallLightness = 1 Then
	table1.BallImage="ball-HDR"
	table1.BallFrontDecal="Scratches"
elseif BallLightness = 2 Then
	table1.BallImage="ball-light-hf"
	table1.BallFrontDecal="g5kscratchedmorelight"
else
	table1.BallImage="ball-lighter-hf"
	table1.BallFrontDecal="g5kscratchedmorelight"
End if

' ****************************************************



'*******************************************
' Hybrid code for VR, Cab, and Desktop
'*******************************************

Dim VRThings

if VR_Room = 0 and cab_mode = 0 Then
	for each VRThings in VRStuff:VRThings.visible = 0:Next
	for each VRThings in VRClock:VRThings.visible = 0:Next
	for each VRThings in VRBackglass:VRThings.visible = 0:Next
	for each VRThings in DTRails:VRThings.visible = 1:Next
	pBlackSideWall.visible = 0
	Backrail.z = 0
Elseif VR_Room = 0 and cab_mode = 1 Then
	for each VRThings in VRStuff:VRThings.visible = 0:Next
	for each VRThings in VRClock:VRThings.visible = 0:Next
	for each VRThings in VRBackglass:VRThings.visible = 0:Next
	for each VRThings in DTBackglass:VRThings.visible = 0: Next
	for each VRThings in DTRails:VRThings.visible = 0:Next
	pBlackSideWall.visible = cabsideblades
	Backrail.z = 0
Else
	for each VRThings in VRStuff:VRThings.visible = 1:Next
	for each VRThings in VRClock:VRThings.visible = WallClock:Next
	for each VRThings in DTBackglass:VRThings.visible = 0: Next
	for each VRThings in DTRails:VRThings.visible = 0:Next
	pBlackSideWall.visible = 0
	Backrail.z = 30
'Custom Walls, Floor, and Roof
	if CustomWalls = 1 Then
		VR_Wall_Left.image = "VR_Wall_Left"
		VR_Wall_Right.image = "VR_Wall_Right"
		VR_Floor.image = "VR_Floor"
		VR_Roof.image = "VR_Roof"
	end if


	If topper = 1 Then
		Primary_topper.visible = 1
	Else
		Primary_topper.visible = 0
	End If

	If poster = 1 Then
		VRposter.visible = 1
	Else
		VRposter.visible = 0
	End If

	If poster2 = 1 Then
		VRposter2.visible = 1
	Else
		VRposter2.visible = 0
	End If

End If


'*******************************************
' VR Clock
'*******************************************

Dim CurrentMinute ' for VR clock

Sub ClockTimer_Timer()
	Pminutes.RotAndTra2 = (Minute(Now())+(Second(Now())/100))*6
	Phours.RotAndTra2 = Hour(Now())*30+(Minute(Now())/2)
	Pseconds.RotAndTra2 = (Second(Now()))*6
	CurrentMinute=Minute(Now())

End Sub



'*******************************************
' VR Plunger Code
'*******************************************

Sub TimerVRPlunger_Timer
  If PinCab_Shooter.Y < -260 then
       PinCab_Shooter.Y = PinCab_Shooter.Y + 5
  End If
End Sub

Sub TimerVRPlunger1_Timer
  PinCab_Shooter.Y = -351 + (5* Plunger.Position) -20
End Sub


'*******************************************
' Backbox Flashers (For VR)
'*******************************************

Sub SolBG3(enabled)
	If Enabled Then
		SetLamp 103, 0 'Controls VR Backbox GI
	Else
		SetLamp 103, 1 'Controls VR Backbox GI
	End If
End Sub


Sub GIVRBackglass(ByVal aLvl)
dim gibg
	if alvl=0 Then
		For Each gibg In VRGILamps
			gibg.visible = 0
		Next
	Elseif aLvl=1 Then
		For Each gibg In VRGILamps
			gibg.visible = 1
			gibg.opacity = 500
		Next
	Else
		For Each gibg In VRGILamps
			gibg.opacity = 500*aLvl
		Next
	End If
End Sub


'*******************************************
' LAMP CALLBACK for the VR backglass flasher lamps
'*******************************************

Sub UpdateVRLamps(ByVal aLvl)
	If Controller.Lamp(1) = 0 Then: f1bg.visible=0: else: f1bg.visible=1 'Shoot again
	If Controller.Lamp(2) = 0 Then: f2bg.visible=0: else: f2bg.visible=1 'Ball in  play
	If Controller.Lamp(3) = 0 Then: f3bg.visible=0: else: f3bg.visible=1 'Tilt
	If Controller.Lamp(4) = 0 Then: f4bg.visible=0: else: f4bg.visible=1 'Game Over
	If Controller.Lamp(5) = 0 Then: f5bg.visible=0: else: f5bg.visible=1 'Match
	If Controller.Lamp(6) = 0 Then: f6bg.visible=0: else: f6bg.visible=1 'High Score
	If Controller.Lamp(7) = 0 Then: f7bg.visible=0: else: f7bg.visible=1 'Bonus Ball Timer'
	If Controller.Lamp(36) = 0 Then: FlBGL36.visible=0: else: FlBGL36.visible=1 'P
	If Controller.Lamp(37) = 0 Then: FlBGL37.visible=0: else: FlBGL37.visible=1 'H
	If Controller.Lamp(38) = 0 Then: FlBGL38.visible=0: else: FlBGL38.visible=1 'A
	If Controller.Lamp(39) = 0 Then: FlBGL39.visible=0: else: FlBGL39.visible=1 'R
	If Controller.Lamp(40) = 0 Then: FlBGL40.visible=0: else: FlBGL40.visible=1 'A
	If Controller.Lamp(41) = 0 Then: FlBGL41.visible=0: else: FlBGL41.visible=1 'O
	If Controller.Lamp(42) = 0 Then: FlBGL42.visible=0: else: FlBGL42.visible=1 'H
End Sub



Sub UpdateDTLamps(ByVal aLvl)
	If Controller.Lamp(1) = 0 Then: ShootAgainReel.setValue(0):		Else: ShootAgainReel.setValue(1) 'Shoot Again
	If Controller.Lamp(2) = 0 Then: BIPReel.setValue(0):			Else: BIPReel.setValue(1) 'Ball in Play
	If Controller.Lamp(3) = 0 Then: TiltReel.setValue(0):			Else: TiltReel.setValue(1) 'Tilt
	If Controller.Lamp(4) = 0 Then: GameOverReel.setValue(0):		Else: GameOverReel.setValue(1) 'Game Over
	If Controller.Lamp(5) = 0 Then: MatchReel.setValue(0):			Else: MatchReel.setValue(1) 'Match
	If Controller.Lamp(6) = 0 Then: HighScoreReel.setValue(0):		Else: HighScoreReel.setValue(1) 'High Score
	If Controller.Lamp(7) = 0 Then: BonusBallReel.setValue(0):		Else: BonusBallReel.setValue(1) 'Bonus Ball Timer
End Sub

'*******************************************
' Set Up Backglass Flashers
'   this is for lining up the backglass flashers on top of a backglass image
'*******************************************

Sub SetBackglass()
	Dim obj

	For Each obj In VRBackglassFlash
		obj.x = obj.x
		obj.height = - obj.y
		obj.y = 78 'adjusts the distance from the backglass towards the user
	Next


End Sub


'******************************************************
'****  Ball GI Brightness Level Code
'******************************************************

const BallBrightMax = 255			'Brightness setting when GI is on (max of 255). Only applies for Normal ball.
const BallBrightMin = 100			'Brightness setting when GI is off (don't set above the max). Only applies for Normal ball.


Sub UpdateBallBrightness
	Dim brightness

		if ballbrightness >=0 Then 
			if PBall1.z <70 Then
				PBall1.color = ballbrightness + (ballbrightness * 256) + (ballbrightness * 256 * 256)
			end If
			if PBall2.z <70 Then
				PBall2.color = ballbrightness + (ballbrightness * 256) + (ballbrightness * 256 * 256)
			end If

			if ballbrightness = ballbrightMax Or ballbrightness = ballbrightMin then ballbrightness = -1

		end If

		if ballbrightnessC >=0 Then 
			CBall.color = ballbrightnessC + (ballbrightnessC * 256) + (ballbrightnessC * 256 * 256)
			
			if PBall1.z >70 Then
				PBall1.color = ballbrightnessC + (ballbrightnessC * 256) + (ballbrightnessC * 256 * 256)
			end If
			if PBall2.z >70 Then
				PBall2.color = ballbrightnessC + (ballbrightnessC * 256) + (ballbrightnessC * 256 * 256)
			end If

			if ballbrightnessC = ballbrightMax Or ballbrightnessC = ballbrightMin then ballbrightnessC = -1

		end if

End Sub


'******************
'		GI
'******************

dim ballbrightness, ballbrightnessC

'GI callback Lower Playfield

Sub GIUpdates(ByVal aLvl)	'argument is unused
	dim x, girubbercolor, giaproncolor, girampcolor

	if Lampz.UseFunction then aLvl = LampFilter(aLvl)	'Callbacks don't get this filter automatically

	if aLvl = 0 then										'GI OFF, let's hide ON prims
		if ballbrightness <> -1 then ballbrightness = ballbrightMin

	Elseif aLvl = 1 then									'GI ON, let's hide OFF prims
		if ballbrightness <> -1 then ballbrightness = ballbrightMax
	Else
		if gilvl = 0 Then								'GI has just changed from OFF to fading, let's show ON
			ballbrightness = ballbrightMin + 1
		elseif gilvl = 1 Then							'GI has just changed from ON to fading, let's show OFF
			ballbrightness = ballbrightMax - 1
		Else
			'no change
		end if

	end if

' flippers
	RFLogo.blenddisablelighting = 0.5 * alvl + .2
	LFLogo.blenddisablelighting = 0.5 * alvl + .2

' screws
	For each x in GIScrews
		DisableLighting x,0.075,aLvl
	Next

'targets
	For each x in GITargets
		x.blenddisablelighting = 0.25 * alvl + .1
	Next

	psw32.blenddisablelighting = 0.6 * alvl + .1

' rubbers and White screw caps
	girubbercolor = 144*alvl + 48
	MaterialColor "Rubber White",RGB(girubbercolor,girubbercolor,girubbercolor)

' Apron, Plunger Cover, Plunger
	giaproncolor = 160*alvl + 95
	MaterialColor "Plunger",RGB(giaproncolor,giaproncolor,giaproncolor)
	DisableLighting Primitive1,0.15,aLvl

' posts
	For each x in GIPosts
		x.blenddisablelighting = 0.075 * alvl + 0.075
'		DisableLighting x,0.15,aLvl
	Next

' sleeves
	For each x in GISleeves
		DisableLighting x,0.15,aLvl
	Next

' side wood walls
	DisableLighting wall1,0.2,aLvl
	DisableLighting Wall123,0.2,aLvl
	DisableLighting Wall350,0.2,aLvl

' metal ramps and walls
	girampcolor = 64*alvl + 32
	MaterialColor "Metal Ramps",RGB(girampcolor,girampcolor,girampcolor)
	For each x in GIRailsPF
		DisableLighting x,0.075,aLvl
	Next
	DisableLighting Primitive66,0.075,aLvl
	DisableLighting Primitive67,0.075,aLvl
	For each x in GIRamps
		DisableLighting x,0.075,aLvl
	Next

' ball
	if ballbrightness <> ballbrightMax Or ballbrightness <> ballbrightMin Or ballbrightness <> -1 then ballbrightness = INT(alvl * (ballbrightMax - ballbrightMin) + ballbrightMin)

	gilvl = alvl

End Sub



'GI callback Upper Playfield

Sub GIUpdatesUp(ByVal aLvl)	'argument is unused
	dim x, girubbercolor, girampcolor

	if Lampz.UseFunction then aLvl = LampFilter(aLvl)	'Callbacks don't get this filter automatically

	if aLvl = 0 then										'GI OFF, let's hide ON prims
		if ballbrightnessC <> -1 then ballbrightnessC = BallBrightMin

	Elseif aLvl = 1 then									'GI ON, let's hide OFF prims
		if ballbrightnessC <> -1 then ballbrightnessC = ballbrightMax
	Else
		if gilvl = 0 Then								'GI has just changed from OFF to fading, let's show ON
			ballbrightnessC = ballbrightMin + 1
		elseif gilvl = 1 Then							'GI has just changed from ON to fading, let's show OFF
			ballbrightnessC = ballbrightMax - 1
		Else
			'no change
		end if

	end if

' flippers
	RFLogoUp.blenddisablelighting = 0.5 * alvl + .2
	LFLogoUp.blenddisablelighting = 0.5 * alvl + .2

' screws
	For each x in GIScrewsUp
		DisableLighting x,0.075,aLvl
	Next

'targets
	For each x in GITargetsUp
		x.blenddisablelighting = 0.25 * alvl + .1
	Next

	psw28.blenddisablelighting = 0.6 * alvl + .1

' rubbers and White screw caps
	girubbercolor = 144*alvl + 48
	MaterialColor "Rubber White Up",RGB(girubbercolor,girubbercolor,girubbercolor)

' posts
	For each x in GIPostsUp
		x.blenddisablelighting = 0.075 * alvl + 0.075
'		DisableLighting x,0.15,aLvl
	Next

' sleeves
	For each x in GISleevesUp
		DisableLighting x,0.15,aLvl
	Next

' side wood walls
	DisableLighting Wall3,0.2,aLvl
	DisableLighting Wall5,0.2,aLvl

' metal ramps and walls
	girampcolor = 64*alvl + 32
	MaterialColor "Metal RampsUp",RGB(girampcolor,girampcolor,girampcolor)
	DisableLighting Rail_Left7,0.075,aLvl
	DisableLighting Rail_Left8,0.075,aLvl

' ball
	if ballbrightnessC <> ballbrightMax Or ballbrightnessC <> ballbrightMin Or ballbrightnessC <> -1 then ballbrightnessC = INT(alvl * (ballbrightMax - ballbrightMin) + ballbrightMin)

	gilvl = alvl

End Sub