# Condicionais em Bash

## Operadores Numéricos

Usados para comparar valores numéricos:

- `-eq`: igual a
- `-ne`: diferente de
- `-gt`: maior que
- `-lt`: menor que
- `-ge`: maior ou igual a
- `-le`: menor ou igual a

**Exemplo:**
```bash
a=5
b=10
if [ $a -lt $b ]; then
    echo "a é menor que b"
fi
```

## Operadores de String

Usados para comparar strings:

- `=`: igual a (também `==`)
- `!=`: diferente de
- `-z`: string vazia
- `-n`: string não vazia

**Exemplo:**
```bash
str="hello"
if [ "$str" != "world" ]; then
    echo "String não é world"
fi
```

## Operadores Lógicos

Usados para combinar múltiplas condições:

- `&&`: e lógico (AND) - ambas as condições devem ser verdadeiras
- `||`: ou lógico (OR) - pelo menos uma condição deve ser verdadeira
- `!`: negação lógica (NOT) - inverte a condição

**Exemplo:**
```bash
a=5
b=10
if [ $a -gt 3 ] && [ $b -lt 15 ]; then
    echo "Ambas as condições são verdadeiras"
fi
```

## Estrutura `if`

A estrutura `if` é a mais comum para condicionais simples ou compostas:

```bash
if [ condição ]; then
    # Comandos se condição for verdadeira
    echo "Condição atendida"
elif [ outra_condição ]; then
    # Comandos se a primeira for falsa e esta for verdadeira
    echo "Outra condição atendida"
else
    # Comandos se nenhuma condição for verdadeira
    echo "Nenhuma condição atendida"
fi
```

**Nota:** Sempre use espaços ao redor dos colchetes `[ ]` e operadores.


## Dicas Importantes

- Sempre coloque strings entre aspas duplas para evitar problemas com espaços.
- Use `[[ ]]` em vez de `[ ]` para expressões mais avançadas.
- Para números, use `(( ))` para aritmética: `if (( a > b ))`.
- Teste suas condições com `echo` antes de implementar lógica complexa.
