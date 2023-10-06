# Linguagem de Montagem

Neste repositório estão os exercícios em Assembly trabalhados nas aulas de linguagem de montagem

Para executar os códigos é necessário primeiramente compilá-los:

```nasm -f elf64 {nome_do_programa}.asm -o obj/{nome_do_programa}.o```

isso irá criar o arquivo .o (objeto), em seguida execute:

```ld -s -o objetos/{nome_do_programa} objetos/{nome_do_programa}.o```

isso irá criar o executável. E então, para rodar:

```objetos/{nome_do_programa}```
