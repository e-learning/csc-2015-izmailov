Никак не могу получить вывод hello world с использованием GLibC

Система: Linux 64
Второй файл отличается от первого только названием глобальной метки: при линковке с помощью `ld` возникает `warning: cannot find entry symbol _start; defaulting to 0000000000400230`.
`gcc`, наоборот, говорит, что метка _start определена 2 раза, так что при линковке с помощью `gcc` используется другая метка.
