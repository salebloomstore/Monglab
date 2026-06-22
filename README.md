cp .env.example .env
sudo chown 1000:1000 -R . && sudo chmod 777 -R .

chmod +x start-master.sh && ./start-master.sh
chmod +x start-keygen.sh && ./start-keygen.sh
