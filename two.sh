z=$(zenity --width=350 --height=200 --entry --title="OPERATING SYSTEM" --text="
	1.To give executabe rights to others
	2.To give readable rigts to others
	3.To give writable rights to others")

case $z in

        1) filename=$(zenity --entry --text=" first give filename")
                if [ -f "$filename" ]
         	then

                chmod 771 $filename
                zenity --width=350 --height=200 --info --text=" Rights given to others executable"

        	else
                zenity --width=350 --height=200 --info --text="file not exists"
        	fi
                ;;
        2)filename=$(zenity --entry --text=" first give filename")
                if [ -f "$filename" ]
         	then

                chmod 744 $filename
                zenity --width=350 --height=200 --info --text=" Readible rights given"
        	else
                zenity --width=350 --height=200 --info --text=" File not exists"
        	fi
             ;;
        3) filename=$(zenity --entry --text=" first give filename")
                 if [ -f "$filename" ]
         	then

                chmod 722 $filename
                zenity --width=350 --height=200 --info --text= " Write rights given to others"
 		else
                zenity --width=350 --height=200 --info --text=" file not exists"
  		fi
                ;;
        *) zenity --width=350 --height=200 --error --title="Error" --text= " invalid"
                ;;
esac
