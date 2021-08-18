@echo off
echo ¡CREACIÓN DE RDP EXITOSA!
tasklist | find /i "ngrok.exe" >Nul && goto check || echo "No se puede obtener el túnel NGROK, asegúrese de que NGROK_AUTH_TOKEN sea correcto en Configuración> Secretos> Secreto del repositorio. Tal vez su VM anterior aún se esté ejecutando: https://dashboard.ngrok.com/status/tunnels" & ping 127.0.0.1 >Nul & exit
:check
ping 127.0.0.1 > null
cls
echo ¡CREACIÓN DE RDP EXITOSA!
goto check