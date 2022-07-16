case "$1" in
	"--date" | "-d")date;;
	"--logs" | "-l")i=1
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
	"--init")repo_name=Lab4-Podstawa-praca-z-GIT
			 git clone git@github.com:Sztefanol/$repo_name.git
			 script_path=$(pwd)/$repo_name
			 export PATH=$PATH:$script_path;;
	"--help" | "-h")echo "$0"" [--date/-d] - wyświetla aktualną datę."
			 echo "$0"" [--logs/-l] [liczba] - tworzy [liczba] plików log[n].txt zawierających swoją nazwę, nazwę skryptu i aktualną datę. Przy braku argumentu takich plików jest tworzonych 100."
			 echo "$0"" [--help/-h] - wyświetla ten komunikat.";;
esac
