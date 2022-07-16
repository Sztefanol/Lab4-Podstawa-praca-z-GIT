case "$1" in
	"--date")date;;
	"--logs")for i in {1..100}
			do
				echo "log""$i"".txt" > log"$i".txt
				echo "$0" >> log"$i".txt
				date >> log"$i".txt
			done;;
esac
