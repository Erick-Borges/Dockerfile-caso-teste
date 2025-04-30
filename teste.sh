#!/bin/sh

echo "Esperando o servidor iniciar..."

# Espera o servidor iniciar
sleep 3

echo "Executando teste..."

# Faz uma requisição HTTP para o servidor Node.js
response=$(curl -s http://app:3000/)

# Defina o valor esperado da resposta
expected='{"message":"Servidor Node no ar!"}'

# Compara a resposta com o valor esperado
if [ "$response" = "$expected" ]; then
  echo "Teste passou!"
  exit 0
else
  echo "Teste falhou!"
  echo "Esperado: $expected"
  echo "Recebido: $response"
  exit 1
fi
