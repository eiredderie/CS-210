intro(){
clear
echo "        
       _   _      ___ ___   ___  _      ___       .         ___      ___      
      |_) ( ) |_/  |  |__    |  ( ) | | |_) |\ | /_\ |\  /| |__ |\ |  |       
      |   (_) | \ _|_ |__    |  (_) (_) | \ | \| | | | \/ | |__ | \|  |       
                                
                                PRESS ANY KEY.
"
read -sn1 -p ""

echo "Hi, Welcome to the Pokie Tournament."
read -sn1 -p ""
echo "You are here to compete with a pokie who 
are aiming to be the first ever pokie champion."
read -sn1 -p ""
echo "To start with the tournament I am gonna give you a pokie."
read -sn1 -p ""
}

choose(){
clear
#pokie ints
fpartner1="\033[0;31m      O>   \033[0m"
fpartner2="\033[0;31m   __/__   \033[0m"
fpartner3="\033[0;31m     \     \033[0m"
fpartner4="\033[0;31m     /     \033[0m"
fpartner5="\033[0;31m     \     \033[0m"
wpartner1="\033[0;32m    .^.    \033[0m"
wpartner2="\033[0;32m    /|\    \033[0m"
wpartner3="\033[0;32m   / | \   \033[0m"
wpartner4="\033[0;32m  //v|v\\\\\\  \033[0m"
wpartner5="\033[0;32m /v  |  v\ \033[0m"
lpartner1="\033[0;35m     /   \ \033[0m"
lpartner2="\033[0;35m     \_|_/ \033[0m"
lpartner3="\033[0;35m \___(**)  \033[0m"
lpartner4="\033[0;35m (______)  \033[0m"
lpartner5="\033[0;35m  VV  VV   \033[0m"
apartner1="\033[0;34m       O<  \033[0m"
apartner2="\033[0;34m      S    \033[0m"
apartner3="\033[0;34m     S     \033[0m"
apartner4="\033[0;34m    S      \033[0m"
apartner5="\033[0;34m   S       \033[0m"
epartner1="\033[0;33m    _()_   \033[0m"
epartner2="\033[0;33m \_[_  _]_/\033[0m"
epartner3="\033[0;33m    [  ]   \033[0m"
epartner4="\033[0;33m    [__]   \033[0m"
epartner5="\033[0;33m    |  |   \033[0m"
echo "Choose your pokie:
                                                  
         $fpartner1  $wpartner1   $lpartner1   $apartner1   $epartner1
         $fpartner2  $wpartner2   $lpartner2   $apartner2   $epartner2
         $fpartner3  $wpartner3   $lpartner3   $apartner3   $epartner3
         $fpartner4  $wpartner4   $lpartner4   $apartner4   $epartner4
         $fpartner5  $wpartner5   $lpartner5   $apartner5   $epartner5   
         1) Katon     2) Fuuton     3) Raiton     4) Suiton     5) Doton
Type        Fire          Wind        Lightning       Water        Earth
Attack	    100            90            95            85           80       
Defense     10             16            12            18           20
$errmsg1"
read -p "Choice: " pick
if [ $pick == 1 ] 
 then
	pname="Katon "
    ptype=1
	patk=100
	pdef=10
	partner1=$fpartner1
	partner2=$fpartner2
	partner3=$fpartner3
	partner4=$fpartner4
	partner5=$fpartner5
elif [ $pick == 2 ]
 then
	pname="Fuuton"
    ptype=2
	patk=90
	pdef=16
	partner1=$wpartner1
	partner2=$wpartner2
	partner3=$wpartner3
	partner4=$wpartner4
	partner5=$wpartner5
elif [ $pick == 3 ]
 then
	pname="Raiton"
    ptype=3
	patk=95
	pdef=12
	partner1=$lpartner1
	partner2=$lpartner2
	partner3=$lpartner3
	partner4=$lpartner4
	partner5=$lpartner5
elif [ $pick == 4 ]
 then
	pname="Suiton"
    ptype=4
	patk=85
	pdef=18
	partner1=$apartner1
	partner2=$apartner2
	partner3=$apartner3
	partner4=$apartner4
	partner5=$apartner5
elif [ $pick == 5 ]
 then
	pname="Doton "
    ptype=5
	patk=80
	pdef=20
	partner1=$epartner1
	partner2=$epartner2
	partner3=$epartner3
	partner4=$epartner4
	partner5=$epartner5
else
	errmsg1="WRONG INPUT!!!"	
	choose
fi

ctr=0
enemy=$(($pick))
}

opponent(){
effect="


"
p_hp=1000
o_hp=1000
enemy=$(($enemy + 1))
((ctr++))
if [ $enemy == 6 ]
 then
	enemy=1
elif [ $pick == $enemy ]
 then
	$enemy+=1
fi

if [ $enemy == 1 ] 
 then
	oname="Katon "
    otype=1
	oatk=100
	odef=10
	enemy1=$fpartner1
	enemy2=$fpartner2
	enemy3=$fpartner3
	enemy4=$fpartner4
	enemy5=$fpartner5
	battlemessage="\033[0;31mKaton: I'll show no mercy!!!! \033[0;0m"
elif [ $enemy == 2 ]
 then
	oname="Fuuton"
    otype=2
	oatk=90
	odef=16
	enemy1=$wpartner1
	enemy2=$wpartner2
	enemy3=$wpartner3
	enemy4=$wpartner4
	enemy5=$wpartner5
	battlemessage="\033[0;32mFuuton: I hope I don't hurt you.... \033[0;0m"
elif [ $enemy == 3 ]
 then
	oname="Raiton"
    otype=3
	oatk=95
	odef=12
	enemy1=$lpartner1
	enemy2=$lpartner2
	enemy3=$lpartner3
	enemy4=$lpartner4
	enemy5=$lpartner5
	battlemessage="\033[0;35mRaiton: He he, think ya can beat me???? \033[0;0m"
elif [ $enemy == 4 ]
 then
	oname="Suiton"
    otype=4
	oatk=85
	odef=18
	enemy1=$apartner1
	enemy2=$apartner2
	enemy3=$apartner3
	enemy4=$apartner4
	enemy5=$apartner5
	battlemessage="\033[0;34mSuiton: Here I go.... \033[0;0m"
elif [ $enemy == 5 ]
 then
	oname="Doton "
    otype=5
	oatk=80
	odef=20
	enemy1=$epartner1
	enemy2=$epartner2
	enemy3=$epartner3
	enemy4=$epartner4
	enemy5=$epartner5
	battlemessage="\033[0;33mDoton: What are you going to do???? \033[0;0m"
fi
if (( $ptype == $otype ))
 then
	mult=2
	omult=2
elif (($otype - $ptype  == 1 )) || (($otype - $ptype  == -4 ))
 then
	mult=3
	omult=1
else
	mult=1
	omult=3
fi
}

gameui(){
clear
healthbar
if [ $condatk -eq 2 ]
	then
		errormsgs
else
	oppatks
fi
echo "
   ________________      
   |$oname         |    $enemy1
   |HP $obar  |    $enemy2
   |_______________|    $enemy3
                        $enemy4
                        $enemy5
$effect
                        $partner1
   ________________     $partner2
   |$pname         |    $partner3
   |HP $pbar  |    $partner4
   |_______________|    $partner5
"
echo $battlemessage
echo $omessage
if [ $o_hp -le 0  ]
then
	read -sn1 -p ""
	opponent
elif [ $p_hp -le 0 ]
then
	ctr=6
	read -sn1 -p ""
else
	battle
fi
}

battle(){
echo "
Duels play like Rock-Paper-Scissors, 
Attack beats Defend, Defend beats Special Attack, Special Attack beats Attack."
echo "     1) Normal Attack     2) Defend     3) Special Attack     "
	read -p "Choice: " c_atk
	if [ $c_atk == 1 -o $c_atk == 2 -o $c_atk == 3 ]
		then
		condatk=1

		if [ $c_atk -eq $e_atk ]
		 then
			battlemessage="DRAW!!"
			cond=1
			efx
		elif (($c_atk - $e_atk == 1)) || (($c_atk - $e_atk == -2))
		 then
			let odmg=($oatk * $omult)
			let p_hp=($p_hp-$odmg+$pdef)
			if [ $p_hp -lt 0 ]
				then
				p_hp=0
			fi
			battlemessage="$oname dealt damage"
			cond=2
			efx
		else
			a=2
			let pdmg=($patk * $mult)
			let o_hp=($o_hp-$pdmg+$odef)
			if [ $o_hp -lt 0 ]
				then
				o_hp=0
			fi
			battlemessage="$pname dealt damage"
			cond=3
			efx
		fi
	else
		condatk=2
		effect="


				"
		battlemessage="Choose a proper command!!!"
		gameui
	fi
}

healthbar(){
obar=""
pbar=""
octr=0
pctr=0
for value in {1..10..1}
do
	if [ $o_hp -gt $(($octr * 100)) ]
		then
		obar=$obar"*"
	else
		obar=$obar" "
	fi
	((octr++))
	if [ $p_hp -gt $(($pctr * 100)) ]
		then
		pbar=$pbar"*"
	else
		pbar=$pbar" "
	fi
	((pctr++))
done
}

oppatks(){
e_atk=$(( ( $RANDOM % 3 ) + 1))
if [ $o_hp -le 0 ] 
	then
	case $otype in
		1*)
		omessage="\033[0;31mKaton: You're pretty good. \033[0;0m"
		;;
		2*)
		omessage="\033[0;32mFuuton: Well done! \033[0;0m"
		;;
		3*)
		omessage="\033[0;35mRaiton: Ya got me. \033[0;0m"
		;;
		4*)
		omessage="\033[0;34mSuiton: Impressive. \033[0;0m"
		;;
		5*)
		omessage="\033[0;33mDoton: It can't be. \033[0;0m"
		;;
	esac
	battlemessage="You've won!"
elif [ $p_hp -le 0 ]
	then
	case $otype in
		1*)
		omessage="\033[0;31mKaton: Farewell. \033[0;0m"
		;;
		2*)
		omessage="\033[0;32mFuuton: He he, sorry. \033[0;0m"
		;;
		3*)
		omessage="\033[0;35mRaiton: You're pretty good. \033[0;0m"
		;;
		4*)
		omessage="\033[0;34mSuiton: I had to stop you. \033[0;0m"
		;;
		5*)
		omessage="\033[0;33mDoton: Ha.... Ha ha ha ha ha!!!! Puny insect!!!!!!!!! \033[0;0m"
		;;
	esac
	battlemessage="You've lost"
else
	case $otype in
		1*)
		case $e_atk in
			1*)
			omessage="\033[0;31mKaton: It's my turn... \033[0;0m"
			;;
			2*)
			omessage="\033[0;31mKaton: I must be more cautious!.. \033[0;0m"
			;;
			3*)
			omessage="\033[0;31mKaton: Taste my wrath!! \033[0;0m"
			;;
		esac
		;;
		2*)
		case $e_atk in
			1*)
			omessage="\033[0;32mFuuton: Here goes... \033[0;0m"
			;;
			2*)
			omessage="\033[0;32mFuuton: Let's test your strength. \033[0;0m"
			;;
			3*)
			omessage="\033[0;32mFuuton: That's enough.. \033[0;0m"
			;;
		esac
		;;
		3*)
		case $e_atk in
			1*)
			omessage="\033[0;35mRaiton: Okay, let's see what you've got... \033[0;0m"
			;;
			2*)
			omessage="\033[0;35mRaiton: C'mon take a swing at me. \033[0;0m"
			;;
			3*)
			omessage="\033[0;35mRaiton: Here goes! Hope you can handle this! \033[0;0m"
			;;
		esac
		;;
		4*)
		case $e_atk in
			1*)
			omessage="\033[0;34mSuiton: Here I come!!! \033[0;0m"
			;;
			2*)
			omessage="\033[0;34mSuiton: See if you can hit me. \033[0;0m"
			;;
			3*)
			omessage="\033[0;34mSuiton: I'll show you what I can do.. \033[0;0m"
			;;
		esac
		;;
		5*)
		case $e_atk in
			1*)
			omessage="\033[0;33mDoton: Hah hah hah hah!!! \033[0;0m"
			;;
			2*)
			omessage="\033[0;33mDoton: Hahahahahahah! \033[0;0m"
			;;
			3*)
			omessage="\033[0;33mDoton: Hah hah hah hah hah!! \033[0;0m"
			;;
		esac
		;;
		esac
fi
}

errormsgs(){
case $otype in
	1*)
	omessage="\033[0;31mKaton: What are you doing? \033[0;0m"
	;;
	2*)
	omessage="\033[0;32mFuuton: You must be crazy \033[0;0m"
	;;
	3*)
	omessage="\033[0;35mRaiton: Do something will you? \033[0;0m"
	;;
	4*)
	omessage="\033[0;34mSuiton: Are you nuts? \033[0;0m"
	;;
	5*)
	omessage="\033[0;33mDoton: HAHAHAHAHAHAHAHAHAHAHAHAHA idiot. \033[0;0m"
	;;
esac
}

efx(){
case $cond in
		1*)
case $otype in
			1*)
effect="\033[0;31m                            vvv
                             v \033[0m
"
			;;
			2*)
effect="\033[0;32m                            @@@
                             @ \033[0m
"
			;;
			3*)
effect="\033[0;35m                            ///
                            \\\\\\\\\\ \033[0m
"
			;;
			4*)
effect="\033[0;34m                            0 0
                             0  \033[0m
"
			;;
			5*)
effect="\033[0;33m                             []
                             \\/ \033[0m
"
			;;
		esac
		case $ptype in
			1*)
effect="$effect\033[0;31m                             ^
                            ^^^ \033[0m"
			;;
			2*)
effect="$effect\033[0;32m                             @
                            @@@ \033[0m"
			;;
			3*)
effect="$effect\033[0;35m                            ///
                            \\\\\\\\\\ \033[0m"
			;;
			4*)
effect="$effect\033[0;34m                             0
                            0 0 \033[0m"
			;;
			5*)
effect="$effect\033[0;33m                             /\\
                             [] \033[0m"
			;;
		esac
		;;
		2*)
		case $otype in
			1*)
effect="\033[0;31m                          vvvvvvv
                           vvvvv
                            vvv
                             v \033[0m"
			;;
			2*)
effect="\033[0;32m                          @@@@@@@
                           @@@@@
                            @@@
                             @ \033[0m"
			;;
			3*)
effect="\033[0;35m                            \\\\\\\\\\
                            ///
                            \\\\\\\\\\
                            /// \033[0m"
			;;
			4*)
effect="\033[0;34m                         0 0 0 0 0
                           0 0 0
                            0 0
                             0  \033[0m"
			;;
			5*)
effect="\033[0;33m                             []
                             []
                             []
                             \\/ \033[0m"
			;;	
		esac
		;;
		3*)
		case $ptype in
			1*)
effect="\033[0;31m                             ^
                            ^^^
                           ^^^^^ 
                          ^^^^^^^ \033[0m"
			;;
			2*)
effect="\033[0;32m                             @
                            @@@
                           @@@@@ 
                          @@@@@@@ \033[0m"
			;;
			3*)
effect="\033[0;35m                            ///
                            \\\\\\\\\\
                            /// 
                            \\\\\\\\\\ \033[0m"
			;;
			4*)
effect="\033[0;34m                             0
                            0 0
                           0 0 0 
                         0 0 0 0 0 \033[0m"
			;;
			5*)
effect="\033[0;33m                             /\\
                             []
                             []
                             [] \033[0m"
			;;
		esac
		;;
esac
}

wingame(){
echo "Congratulations, You've won the pokie tournament."
echo "You're the first ever pokie champion."
echo "congratulations"
}
losegame(){
echo "Sorry for your lost, better luck next tournament."
echo "We hope you would join our upcoming tournaments."
}

#MAIN GAME
intro
choose
opponent
condatk=1
until [ $ctr -ge 5 ]
do
	gameui
done
if [ $ctr == 5 ] 
	then
	wingame
elif [ $ctr == 6 ]
	then
	losegame
fi
read -sn1 -p "end game"
