if [ "$1" = "--logs" ]; then
    if [ -n "$2" ]; then
        for ((i=1; i<=$2; i++)); do
            echo "Nazwa pliku: log$i.txt" > log$i.txt
            echo "Skrypt: skrypt.sh" >> log$i.txt
            echo "Data: $(date)" >> log$i.txt
        done
    else
        echo "Podaj liczbę plików do utworzenia."
    fi
elif [ "$1" = "--help" ]; then
    echo "Dostępne opcje:"
    echo "    --logs - utworzenie plików log"
    echo "    --logs [liczba] - utworzenie określonej liczby plików log"
    echo "    --date - wyświetlenie dzisiejszej daty"
    echo "    --help - wyświetlenie dostępnych opcji"
elif [ "$1" = "--date" ]; then
    echo "Dzisiejsza data: $(date)"
else
    echo "Nieznana opcja. Użyj --help, aby wyświetlić dostępne opcje."
fi
