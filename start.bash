# Obtém a quantidade total de memória disponível no sistema.
total_memory=$(get_total_memory)

# Cria um loop infinito para alocar toda a memória disponível.
while true; do
  # Aloca memória usando o comando dd.
  dd if=/dev/zero of=/dev/null bs=$total_memory count=1
done
