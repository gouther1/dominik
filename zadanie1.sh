#!/bin/bash

show_help() {
    echo "Dostępne opcje:"
    echo "    --logs, -l - utworzenie plików log"
    echo "    --logs [liczba], -l [liczba] - utworzenie określonej liczby plików log"
    echo "    --date, -d - wyświetlenie dzisiejszej daty"
    echo "    --help, -h - wyświetlenie dostępnych opcji"
    echo "    -a - dodatkowe flagi"
}

if [[ "$1" = "--logs" ]] || [[ "$1" = "-l" ]]; then
    if [ -n "$2" ]; then
        for ((i=1; i<=$2; i++)); do
            echo "Nazwa pliku: log$i.txt" > log$i.txt
            echo "Skrypt: skrypt.sh" >> log$i.txt
            echo "Data: $(date)" >> log$i.txt
        done
    else
        echo "Podaj liczbę plików do utworzenia."
    fi
elif [[ "$1" = "--help" ]] || [[ "$1" = "-h" ]]; then
    if [[ "$2" = "-a" ]]; then
        show_help
        echo "Dodatkowe flagi:"
        echo "    -f - flaga F"
        echo "    -g - flaga G"
    else
        show_help
    fi
elif [[ "$1" = "--date" ]] || [[ "$1" = "-d" ]]; then
    echo "Dzisiejsza data: $(date)"
else
    echo "Nieznana opcja. Użyj --help, aby wyświetlić dostępne opcje."
fi

