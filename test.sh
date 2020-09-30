echo "Testando o programa..."
echo

output=$(./hello)
expected_output="Hello, World!"

if [ $? -eq 0 ] ; then
  echo "Passo 1 [OK]: O programa executou corretamente."
else
  echo "Passo 1 [Falhou]: O programa não executou corretamente."
  exit 1
fi

if [ "$output" == "$expected_output" ] ; then
  echo "Passo 2 [OK]: Passou: A saída é correta"
else
  echo "Passo 2 [Falhou] O professor esperava: '$expected_output' mas você enviou: '$output'"
  diff <(echo "'$expected_output'")  <(echo "'$output'")
  exit 1
fi

echo
echo "Todos os testes passaram."

exit 0
