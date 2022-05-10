choice=$(zenity --width=350 --height=200 --entry --title="USER MANAGEMENT" --text="
1.To create the file
2.To execute your file 
3.To delete that file")
	case $choice in
        	1) y=$(zenity --entry --width=350 --height=200 --text="Enter file name")
                vi $y.c
        	;;

        	2)y=$(zenity --entry --width=350 --height=200 --text=" Enter file name to be executed")
        	 if [ -f "$y.c" ]
         	 then
                 zenity --info --text=" File exists "
                 gcc -o $y "$y.c"
                 ./"$y"
       		 else
                 zenity --error --width=350 --height=200 --title="Error" --text="Not exists first create a file"
        	 fi
        	;;
		
      		3)y=$(zenity --entry --width=350 --height=200 --text=" Enter file name to be removed")
         	 if [ -f "$y.c" ]
         	 then
                  zenity --info --text="File removed"
                  rm "$y.c"
       		 else
                 zenity --error --width=350 --height=200 --title="Error" --text="File is already removed/does not exists"
        	  fi
        	 ;;

      		*)zenity --error --width=350 --height=200 --title="Error" --text="Invalid option" ;;
	esac
