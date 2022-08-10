echo Instalador de la base de datos Universidad
echo Autor: Judi Jimena Quispe Monrroy
echo 09 de Agosto del 2022
sqlcmd -SDESKTOP-BI6VGCR\SQLEXPRESS -E -i BDUniversidad.sql
sqlcmd -SDESKTOP-BI6VGCR\SQLEXPRESS -E -i BDUniversidadPA.sql
echo se ejecuto correctamente la base de datos
pause