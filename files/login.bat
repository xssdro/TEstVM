@echo off
echo ======================
echo RDP Windows Server 2019
echo RAM: 7 GB
echo SSD: 255 GB
echo .
echo ======================
echo === RDP INFO LOGIN ===
echo ======================
echo .
echo .
echo .
echo ========= IP Address =========
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Tidak bisa mendapatkan NGROK tunnel, pastikan NGROK_AUTH_TOKEN benar di Settings> Secrets> Repository secret. Mungkin VM Anda sebelumnya masih berjalan: https://dashboard.ngrok.com/status/tunnels "
echo ======================
echo .
echo .
echo .
echo ======================
echo === RDP INFO LOGIN ===
echo ======================
echo You can log in to your RDP now!
ping -n 10 127.0.0.1 >nul
