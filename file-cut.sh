

for i in *.fastq
do
  total_lineas=$(wc -l < "$i")
  tercio=$((total_lineas / 3))
  head -n "$tercio" "$i" > "${i%.fastq}_cortado.fastq"
  echo "Archivo procesado: $i -> ${i%.fastq}_cortado.fastq"
done


