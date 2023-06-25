if [ "$1" = "--logs" ]; then
    for ((i=1; i<=100; i++)); do
        echo "Nazwa pliku: log$i.txt" > log$i.txt
        echo "Skrypt: skrypt.sh" >> log$i.txt
        echo "Data: $(date)" >> log$i.txt
    done
else
    echo "Nieznana opcja. Użyj --help, aby wyświetlić dostępne opcje."
fi
