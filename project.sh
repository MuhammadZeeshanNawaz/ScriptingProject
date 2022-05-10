Zen=$(zenity --width=350 --height=200 --entry --title="OPERATING SYSTEM" --text="
1.USER MANAGEMENT 
2.BACKUP

Enter Your Choice [1-2]")

if [ "$Zen" = 1 ];
then
	Zen1=$(zenity --width=350 --height=200 --entry --title="USER MANAGEMENT" --text="
	1.To Create Folder
	2.To Change Modes
	3.To Search File
	4.Create Process & Thread
	5.To Kill Process
	6.To Open Applications
	7.Pipe Operation
	8.To Create Own Process")

	case $Zen1 in

		1) folder=$(zenity --width=350 --height=200 --entry --title="USER MANAGEMENT" --text="Enter Your Folder Name ")
			mkdir /home/zeeshan/Desktop/$folder
			zenity --width=300 --height=100 --info --text "Thanks For Creating a Folder Named $folder";;

		2) bash two.sh;;

		3) search=$(zenity --width=350 --height=200 --entry --title="USER MANAGEMENT" --text="Enter Your File Name to be Search ")
			find /home/zeeshan/Desktop/$search
			zenity --width=300 --height=100 --info --text "Thanks For searching file named $search" ;;
		
		4) (Zen3=$(zenity --width=350 --height=200 --entry --title="OPERATING SYSTEM" --text="
		Enter to create processes and threads that perform specific tasks

		1.Sort Array
		2.Multiple Threads")
			case $Zen3 in 
				1) sor=$(zenity --width=350 --height=200 --entry --title="USER MANAGEMENT" --text="Enter Name of a file ")
				gcc -o $sor $sor.c -lpthread
				./$sor
				zenity --width=300 --height=100 --info --text "Thanks for Sorting";;
				2) mul=$(zenity --width=350 --height=200 --entry --title="USER MANAGEMENT" --text="Enter Name of a file ")
				gcc -o $mul $mul.c -lpthread
				./$mul
				zenity --width=300 --height=100 --info --text "Thanks";;
				*)zenity --width=350 --height=200 --title="USER MANAGEMENT" --text="That option is not recognized";; 
			esac );;
		5) (val1=$(zenity --width=350 --height=200 --entry --title="USER MANAGEMENT" --text="enter 1 to open system monitor")

			case $val1 in
				1) command= gnome-system-monitor
				zenity --width=300 --height=100 --info --text "Thanks";;
				*) zenity --width=350 --height=200 --text="That option is not recognized";; 
			esac);;



		6) (Zen2=$(zenity --width=350 --height=200 --entry --title="OPERATING SYSTEM" --text="
			1.Fire Fox
			2.Image Viewer
			3.Text File")
			case $Zen2 in 
				1) firefox
				zenity --width=300 --height=100 --info --text "Thanks for Open FireFox";;
				2) image=$(zenity --width=350 --height=200 --entry --title="USER MANAGEMENT" --text="Give name of the image ")
					eog $image
				zenity --width=350 --height=200 --info --text="Thanks to view this picture named $image";;
				3) fil=$(zenity --width=350 --height=200 --entry --title="USER MANAGEMENT" --text="Give name of the textfile ")
					 home/zeeshan/Desktop/
					vi $fil.txt chmod 777 ;;    
				*) zenity --width=350 --height=200 --entry --title="USER MANAGEMENT" --text="That option is not recognized";;
			esac );;
		7) mu=$(zenity --width=350 --height=200 --entry --title="USER MANAGEMENT" --text="Enter Name of a file " )
		   gcc -o $mu $mu.c
		   ./$mu
		   zenity --width=300 --height=100 --info --text "Thanks";;

		8) bash eight.sh;;

		*) echo "Unrecognized";;
	esac

elif [ "$Zen" = 2 ];
then
	var=$(zenity --width=350 --height=200 --entry --title="USER MANAGEMENT" --text="Enter Folder Name You Want to Backup ")
	mkdir backup
	for var in ./$1/*

	do
	cp $var backup
	done
	(zenity --width=350 --height=200 --text="Copied file $var to Backup")
else
	(zenity --width=350 --height=200 --error --text="Try Again")
fi

