#Напишете серия от команди, които извеждат детайли за файловете и директориите в
#текущата директория, които имат същите права за достъп както най-големият файл
#в /etc директорията.

find ~ -perm $(find /etc/ -type f -printf "%s %m\n" 2>/dev/null | sort -nr | head -n1 | cut -d ' ' -f2)