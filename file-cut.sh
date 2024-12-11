
for file in *.fastq
do
#Genero un archivo de salida con las líneas seleccionadas
output_file="${file%.fastq}_seleccionado.fastq"

> "$output_file"

#Inicializar el contador de líneas
total_lines=$(wc -l < "$file")

#Extraigo cada 3 líneas

for (( i=1; i<=total_lines; i+=3));
do
  sed -n "${i}p" "$file" >> "$output_file"
done

  echo "Líneas seleccionadas guardas en $output_file"
done




