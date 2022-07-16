case "$1" in
	"--date")date;;
	"--logs")i=1
				if [ "$#" = "2" ]
				then
				while [ $i -le $2 ]
				do
					echo "log""$i"".txt" > log"$i".txt
					echo "$0" >> log"$i".txt
					date >> log"$i".txt
					i=$[i + 1]
				done
				else
				for i in {1..100}
				do
					echo "log""$i"".txt" > log"$i".txt
					echo "$0" >> log"$i".txt
					date >> log"$i".txt
				done
			 fi;;
esac
