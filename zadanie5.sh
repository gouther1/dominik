if [ "$1" = "--logs" ]; then
    if [ -n "$2" ]; then
        liczba_plikow="$2"
        for ((i=1; i<=$liczba_plikow; i++)); do
            echo "Nazwa pliku: log$i.txt" > log$i.txt
            echo "Skrypt: skrypt.sh" >> log$i.txt
            echo "Data: $(date)" >> log$i.txt
        done
    else
        echo "Podaj liczbę plików do utworzenia."
    fi
elif [ "$1" = "--help" ]; then
    echo "Dostępne opcje:"
    echo "    --logs [liczba] - utworzenie określonej liczby plików log"
    echo "    --help - wyświetlenie dostępnych opcji"
else
    echo "Nieznana opcja. Użyj --help, aby wyświetlić dostępne opcje."
fi
