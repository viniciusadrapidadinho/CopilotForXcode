//////////////////////////////////////////////////
//						//
//	    Copyright Information		//
//						//
//////////////////////////////////////////////////

- AAMods.com (c) Copyright 2009, all rights reserved!
 
- No portion of this file or data may be copied, altered, or reused modify, 
  redistributed, transfered, decompiled, disassembled or otherwise reverse 
  engineer in any way, shape, or form for any reason.



//////////////////////////////////////////////////
//						//
//	      Terms & Conditions		//
//						//
//////////////////////////////////////////////////

- By using this file/content from www.aamods.com you must agree to the following 
  and if you do not agree to these terms and conditions, you will not use the content/files 
  or information found. If you agree to the Terms and Conditions and break any of the Terms 
  and Conditions you are open to, but not limited to, prosecution and criminal charges.

- By using this file/content from www.aamods.com I agree that all files and content downloaded 
  from www.aamods.com come with no warranties what-so-ever that guarantees that files or content 
  from www.aamods.com will not damage or other wise harm the system it is running on. In no event 
  shall any persons or companies be held liable for any direct or indirect effects of the files, 
  including but not limited to the loss of data, damage of hardware, or loss of profit.

- By using this file/content from www.aamods.com I agree that all files and information are only 
  for non-commercial home use and that I agree to all terms and conditions on this terms and conditions. 
  I agree that www.aamods.com is allowed to modify this terms and conditions at without prior warning and 
  I will agree to this new terms and conditions. All file, downloads, information, content and data are 
  without warranty what-so-ever. I agree I use any file, information or content at my own risk and 
  www.aamods.com is not responsible for any damages caused by using any files, content or information found on www.aamods.com.

- By using this file/content from www.aamods.com I agree that I am not visiting this site to obtain information, 
  files, source codes or any other data to use legally or illegally against the owners, webmasters, hosts, ISPs or 
  any person in any imaginable manner. I agree that I will not modify any files or any other content, unless I have 
  authorization by the www.aamods.com owners. I also agree that everything that is download from www.aamods.com is for 
  educational purposes only and I will not modify, redistribute, copy, transfer, decompile, disassemble, alter, or otherwise 
  reverse engineer anything here for any reason. I also agree that I am at least 18 years old or at least the age of majority, 
  whichever is greater.

- By using this file/content from www.aamods.com I agree that I am not part of any anti-piracy organization/company/person, 
  game development/distribution organization/companies/person, government or law enforcement from any country. I also agree 
  I am not searching out evidence which may serve as a medium for any charge of violating laws relating to any country to use 
  against www.aamods.com in any way or to use against the owners, webmasters, site operators, hosts, ISPs or any persons in any conceivable manner.

- By using this file/content from www.aamods.com I agree that I have reviewed all rules, regulations, and license agreements of 
  any program, application, or item that interacts or interfaces, directly or otherwise, with this file or content before downloading, 
  installing and/or running this program and abide by these articles accordingly.

- I, declare and agree I have read and understood the above Terms and Conditions and agree to all of the above Terms and Conditions 
  and declare that this Terms and Conditions has the same rights as a legal contract or legal agreement. 



//////////////////////////////////////////////////
//						//
//	            Licence			//
//						//
//////////////////////////////////////////////////

- You are downloading a non-transferable single IP license to this software. 

- You can use this software 14 days (2 weeks) for free, after that the mod will shut down and in order to make it works again you need to buy an official licence.

- If you have problems authorizing make sure the correct ports are open so the software can connect to our licence system.



//////////////////////////////////////////////////
//						//
//	           CREDITS			//
//						//
//////////////////////////////////////////////////

- Zgamer * Helping at code.
 """"""""
- uNrEaL * Software Development Kit.
 """"""""
- ZoX * Helping & Testing
 """""
- Smokez * Basic Servermod Loader
  """"""


//////////////////////////////////////////////////
//						//
//	         Installation			//
//						//
//////////////////////////////////////////////////

*** prefered Methode ***

- For servers running on your own computer:
* Manual
   1. rename your Ultimate.dll to AAMods.dll
   2. put the DLL in the same folder as AAMods.exe
   3. Start AAMOds.exe
   4. start your server

* auto injection every time you start a server
   1. rename your Ultimate.dll to AAMods.dll 
   2. copy AAMods.dll and AAMods.exe to your servers system folder
   3. edit your runserver.bat and add 'start AAMods.exe' above your server loading line. 
      it will then look someting like this.
	start AAMods.exe
	server.exe GLOBAL Bridge.aao log=server.log ini=server.ini
   4. now run your runserver.bat file

- For Hosted servers:
   1. edit your Ultimate.ini and Copy it to your America's army/System/ folder.
   2. Download: autoban
	http://uploadrobots.com/T6zhCw
   3. follow rifles read me to install autoban then change the dllextender.ini to:
      [DLLExtender]
      Entries=1
      DLL[0]=Ultimate.dll
   4. Start your server

*** Other Methodes ***

- For servers running on your own computer:
   1. edit your Ultimate.ini and Copy it to your America's army/System/ folder.
   2. Download: Winject
	http://www.filefront.com/7808471/Winject.exe
   3. unzip winject and execute the winject.exe file
   4. Start your server
   5. In the winject menu for target process pick server.exe
   6. for the dll to inject select the Ultimate.dll
   7. Wait untill you see:
      Server is running Mode 1 - Authorized - Servers that have been registered in the SAS system: Authorized
   8. Now press Inject (+)

- For Hosted servers:
   1. rename your Ultimate.dll to AAMods.dll 
   2. Upload AAMods.dll and AAMods.exe to your servers system folder
   3. edit your runserver.bat and add 'start AAMods.exe' above your server loading line. 
      it will then look someting like this.
	start AAMods.exe
	server.exe GLOBAL Bridge.aao log=server.log ini=server.ini
   4. now run your runserver.bat file

//////////////////////////////////////////////////
//						//
//	         it's working?			//
//						//
//////////////////////////////////////////////////

http://forum.aamods.com/viewtopic.php?t=1162


//////////////////////////////////////////////////
//						//
//	           Webpanel			//
//						//
//////////////////////////////////////////////////

(note: many server providers block most ports, 9011 is known to work on most GameServer servers)

To connect type the following into your browser "http://<server ip>:<server port>/" where server ip is the IP address of your game server 
(set as "WebIP" in your ultimate.ini) and server port is the port you set to access your web server (set as "WebPort" in your ultimate.ini)
- Enter the correct user name and password when prompted
- Use as you would with any other HTML form but note that we do not check if your input is valid. Therefore you might obtain unwanted features.
  or even worse crashing your own server.

The webpanel is only tested on Internet Explorer 8 and Firefox 3.5.7. it's also been tested on chrome but dos not work on this browser.

//////////////////////////////////////////////////
//						//
//	           Features			//
//						//
//////////////////////////////////////////////////

- Level property changing (like gravity, gamespeed and high jump)

- Weapon ammo changing (any weapon can shoot rockets, sniper bullets or m203's)

- Random weapons with different options (random weapons, same random weapon to all, random snipers, same random snipers to all, 
					 random opfor weapons, same random opfor weapon, random opfor snipers, same random opfor snipers to all)

- Anyone can pick his own gun

- X Amount of nades/flashes/incediaries/smokes to all

- Respawn and respawn on teamkill

- Objective disable

- Killingspree

- Headshot messages

- State changing (flying/spidering)

- Honor Ability to choose which server you want (Leased Official, Offical, Dev Leased Official, Authorized Beta...)

- Level admins - every admin can have limited access to functions

- Delete doors, make doors breachable

- Anti camping, warning shaker, killer

- End game

- Icon Giver

- Vehicle and fire spawning

- Ammo changing

- webpanel

- balancing teams by tag



//////////////////////////////////////////////////
//						//
//	         Weapon List			//
//						//
//////////////////////////////////////////////////

ak	- AK-47 Assault Rifle
ar	- M249 Squad Automatic Weapon (SAW)
at4	- M136 AT4 Light Anti-Tank Weapon
nade	- 50 frag, smoke, flash, incediary grenades 
b	- M870 shotgun
g	- M16A2 / M203 Grenade Launcher
gp	- AK-47 / GP30 Grenade Launcher
m9	- M9 Beretta Pistol
mos	- Mosin-Nagant
pso	- AK74SU with a scope
r	- M16A2 Assault Rifle 
rpg	- Rocket-propelled grenade	
rpk	- Ruchnoy Pulemyot Kalashnikova (RPK)
s24	- M24 SWS
s	- M82A1 SAMR
svd	- Snayperskaya Vintovka Dragunova
spr	- MK 12 MOD 0 Special Purpose Rifle (SPR)
v	- Vintorez - Vintovka Snayperskaya Spetsialnaya
sf	- M4A1 SOPMOD (Special Operations Peculuiar Modification) 
d	- M4A1 SOPMOD & M141 Bunker Defeat Munition (BDM)
jav	- M4A1 SOPMOD & Javelin Anti-tank Missile 



//////////////////////////////////////////////////
//						//
//	          Commands			//
//						//
//////////////////////////////////////////////////

Mutate weaponlist 			Gives a list of available weapons
Mutate config				show current mod settings
Mutate list1				Show 1st commands list
Mutate list2 				Show 2nd commands list
Mutate list3 				Show 3nd commands list

Mutate walk 				Make everyone walk
Mutate Vehicle [1/14]			spawn a vehicle (14 is the only on that actually works)
Mutate unlimitedammoaux 		Give aux ammo when clip hits 0
Mutate unlimitedclipammo		clips never go empty
Mutate unlimitedammo 			Give normalammo when clip hits 0
Mutate spider				Make everyone spider
Mutate speed [speed] 			Change gamespeed
Mutate shake [playerid] 		Shake this player for 10 seconds 
Mutate respawnonteamkill 		Toggle respawn on teamkill
Mutate respawnme [playerid] 		Respawn this player 
Mutate respawn	 			Toggle respawn
Mutate reloadini 			Loads settings from ini file
Mutate regenerate 			Toggle life regeneration
Mutate randomweaponssame 		Give everyone the same random weapon
Mutate randomweapon 			Enable random weapons
Mutate randomsniperssame 		Give everyone the same random sniper
Mutate randomsnipers 			Enable random snipers
Mutate randomrussian 			Enable random russian
Mutate pickweapon 			Toggle pickweapon
Mutate objective 			Toggle objectives
Mutate normalgameplay 			Normal gameplay
Mutate normal 				Normal weapons
Mutate noadminmessage 			Disable mod adminmessage broadcast
Mutate killingspree 			Toggle killingspree 
mutate kill [playerid]			Kill this player
mutate kick [playerid]			kick this player
Mutate jump [int] 			Change jump hight 
Mutate honor [int] 			Change  server honor mode 
Mutate hide [playerid] 			Become invisible 
Mutate health [playerid] 		Give 100 health 
Mutate headshotmessage	 		Toggle headshot messages
Mutate gravity [int] 			change level gravity 
Mutate force [weapon] [g/at/s]		Force weapon now
Mutate fly 				Make everyone fly
Mutate flash [playerid] 		Flash this player for 10 seconds 
Mutate fire [1/7]			spawn a fire
Mutate endgame	 			End the game
Mutate deletefire			delete all fires
Mutate deletenades 			Toggle remove nades 
Mutate deletem9 			Toggle remove m9 
Mutate deletedoors 			Remove doors 
Mutate deleteammo 			Toggle remove ammo 
Mutate customsame	 		random custom weapons from ultimate.ini
Mutate custom	 			random custom weapons from ultimate.ini
Mutate camp [playerid]	 		Show where player is 
Mutate breachdoors 			Make doors breachable 
Mutate Balanceempty			remove autobalancing teams
Mutate Balancesave [tag] [1/0]		save balancin this tag to a team (can only force 1 tag per team)
Mutate Balance [tag] [1/0]		balance teams now (works best on roundend)
Mutate ban [playerid] [weeks]		ban a player by name,ip,guid and mac
Mutate autoreload // not yet working
Mutate alive: 				Show all alive players 
Mutate adminset [string] 		Use adminset commands  
Mutate addsmoke 			Add 10 smokes  
Mutate addnade 				Add 10 nades  
Mutate addinc 				Add 10 incs  
Mutate addflash 			Add 10 flashes  
Mutate addbreacher			add 10 breachers
Mutate [Weapon] [optional at4/g/s] 	Force weapon next round

//////////////////////////////////////////////////
//						//
//	     additional information		//
//						//
//////////////////////////////////////////////////

All bans made by this mod are saved into the America's army/system/banlist.txt

The log system logs logins so you know who is trying to use it
[HTTPAuthorize] [IP]

The log system logs mutate's so you know who is trying to use it
[Ultimate] mutate [command] by [name]

cheaters are logged into the America's army/system/ultimatecheat.log

classes that can be used in ultimate.ini for FORCEWEAPON and Randomclass[]:
AGP_Characters.ClassAutomaticRifleman
AGP_Characters.ClassAutomaticRiflemanRPK
AGP_Characters.ClassBDMRocket
AGP_Characters.ClassBreacher
AGP_Characters.ClassDemolitions
AGP_Characters.ClassGrenadier
AGP_Characters.ClassGrenadierGP30_Op
AGP_Characters.ClassGuerrillaAK74su
AGP_Characters.ClassGuerrillaAK74suReflex
AGP_Characters.ClassGuerrillaPSO
AGP_Characters.ClassGuerrillaRPG
AGP_Characters.ClassGuerrillaRPGNine
AGP_Characters.ClassGuerrillaRPK
AGP_Characters.ClassGuerrillaSniper
AGP_Characters.ClassJavelin
AGP_Characters.ClassJavelinTube
AGP_Characters.ClassPistol
AGP_Characters.ClassRifleman
AGP_Characters.ClassRiflemanAK74su
AGP_Characters.ClassRiflemanAK
AGP_Characters.ClassSF18Z
AGP_Characters.ClassSF18E
AGP_Characters.ClassSF18F
AGP_Characters.ClassRiflemanM4A1Mod
AGP_Characters.ClassSF
AGP_Characters.ClassSFSniper
AGP_Characters.ClassSniper24_US
AGP_Characters.ClassSniper
AGP_Characters.ClassSniperMos
AGP_Characters.ClassSniperSVD
AGP_Characters.ClassRecruit



//////////////////////////////////////////////////
//						//
//	   	Known issues			//
//						//
//////////////////////////////////////////////////

The following bugs were found:
  
   1. Respawnme sometimes doesn't work (happens only the first time you use it)
   
   2. When changing ammo for s24 or mos you don't get enough ammo.

   3. adding players in the webpanel can crash the server. (propably memory leak but didn't find this yet)

//////////////////////////////////////////////////
//						//
//	   	Bugs found			//
//						//
//////////////////////////////////////////////////
If you find any other problems please help us to improve this mod and report the bug at aamods.com

Also make sure to check site for mod updates - bug fixes.


