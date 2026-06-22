cp .env.example .env
sudo chown 1000:1000 -R . && sudo chmod 777 -R .

chmod +x start-keygen.sh && sudo ./start-keygen.sh
chmod +x start-master.sh && sudo ./start-master.sh
