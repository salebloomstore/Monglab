# 🍃 MongoDB Cluster System (MongoDB + Mongo Express + Docker)

![MongoDB](https://img.shields.io/badge/Database-MongoDB%207.0.14-green)
![Mongo Express](https://img.shields.io/badge/Admin-Mongo--Express%201.0.2-orange)
![Docker Engine](https://img.shields.io/badge/Docker%20Engine-28.5.2-blue)
![Docker Compose](https://img.shields.io/badge/Docker%20Compose-v2.40.3-blue)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

---

## 👨‍💻 Author

- Author: [Nguyễn Hoàng Anh](https://www.facebook.com/FakeofHA)
- Created: May 31, 2026

---

# 🧱 Tech Stack

## 🗄️ Database
- 📊 Mongo Express
- 🍃 MongoDB Replica Set
- 🌐 Sharding Cluster

## 🐳 DevOps
- Docker Engine
- Docker Compose

---

# 🚀 Development Environment

Before running this project, please install the following tools:

#### For `Windows` operating system
- [WSL2 (Windows Subsystem for Linux)](https://learn.microsoft.com/windows/wsl/install)
- [Kali Linux](https://apps.microsoft.com/detail/9pkr34tncv07)

#### For `Windows and Linux` operating systems
- [Git](https://git-scm.com/downloads)

#### For `Windows` operating system
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) 

#### For `Linux` operating system
- [Docker Engine](https://docs.docker.com/engine/install/)
- [Docker Compose](https://docs.docker.com/compose/)

#### For `Windows and Linux` operating systems
- [Visual Studio Code](https://code.visualstudio.com/)

## Recommended VS Code Extensions

- [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons)
- [WSL](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl)

---

# 🚀 Deployment

### 0. Docker empty

```bash
docker stop $(docker ps -aq) 2>/dev/null
docker rm -f $(docker ps -aq) 2>/dev/null
docker rmi -f $(docker images -aq) 2>/dev/null
docker volume rm $(docker volume ls -q) 2>/dev/null
docker network rm $(docker network ls -q --filter type=custom) 2>/dev/null
docker builder prune -af
```

### 0. Create the shared Docker network if it does not already exist

```bash
docker network create master-netwrk
```

### 0. Fix permissions

```bash
sudo chown 1000:1000 -R . && sudo chmod 777 -R .
```

### 0. Grant execute permission

```bash
find . -type f -name "*.sh" -exec chmod +x {} \;
```

### 2. Build & Start

#### Please configure .env.example before running

```bash
cp .env.example .env
```

#### Or configure .env before running

```bash
chmod +x driver/reboot/keygen.sh && sudo ./driver/reboot/keygen.sh
chmod +x driver/reboot/master.sh && sudo ./driver/reboot/master.sh
```

### 3. Develop

#### Please configure .env.example before running

```bash
cp .env.example .env
```

#### Or configure .env before running

```bash
chmod +x driver/reboot/keygen.sh && sudo ./driver/reboot/keygen.sh
chmod +x driver/reboot/devlop.sh && sudo ./driver/reboot/devlop.sh
```

<!-- ----------------------------------------------------------------------------------------------- -->
cp .env.example .env

<!-- ----------------------------------------------------------------------------------------------- -->
chmod +x driver/reboot/keygen.sh && sudo ./driver/reboot/keygen.sh

chmod +x driver/reboot/master.sh && sudo ./driver/reboot/master.sh

chmod +x driver/reboot/sharde-everes-dn.sh && sudo ./driver/reboot/sharde-everes-dn.sh
chmod +x driver/reboot/sharde-everes-hn.sh && sudo ./driver/reboot/sharde-everes-hn.sh
chmod +x driver/reboot/sharde-everes-sg.sh && sudo ./driver/reboot/sharde-everes-sg.sh

chmod +x driver/reboot/sharde-fansip-dn.sh && sudo ./driver/reboot/sharde-fansip-dn.sh
chmod +x driver/reboot/sharde-fansip-hn.sh && sudo ./driver/reboot/sharde-fansip-hn.sh
chmod +x driver/reboot/sharde-fansip-sg.sh && sudo ./driver/reboot/sharde-fansip-sg.sh

chmod +x driver/reboot/sharde-fujimo-dn.sh && sudo ./driver/reboot/sharde-fujimo-dn.sh
chmod +x driver/reboot/sharde-fujimo-hn.sh && sudo ./driver/reboot/sharde-fujimo-hn.sh
chmod +x driver/reboot/sharde-fujimo-sg.sh && sudo ./driver/reboot/sharde-fujimo-sg.sh

chmod +x driver/reboot/sharde-matter-dn.sh && sudo ./driver/reboot/sharde-matter-dn.sh
chmod +x driver/reboot/sharde-matter-hn.sh && sudo ./driver/reboot/sharde-matter-hn.sh
chmod +x driver/reboot/sharde-matter-sg.sh && sudo ./driver/reboot/sharde-matter-sg.sh

chmod +x driver/reboot/mongos-router-dn.sh && sudo ./driver/reboot/mongos-router-dn.sh
chmod +x driver/reboot/mongos-router-hn.sh && sudo ./driver/reboot/mongos-router-hn.sh
chmod +x driver/reboot/mongos-router-sg.sh && sudo ./driver/reboot/mongos-router-sg.sh

chmod +x driver/reboot/mongos-expres-io.sh && sudo ./driver/reboot/mongos-expres-io.sh

<!-- ----------------------------------------------------------------------------------------------- -->
chmod +x driver/boot/keygen.sh && sudo ./driver/boot/keygen.sh

chmod +x driver/boot/master.sh && sudo ./driver/boot/master.sh

chmod +x driver/boot/sharde-everes-dn.sh && sudo ./driver/boot/sharde-everes-dn.sh
chmod +x driver/boot/sharde-everes-hn.sh && sudo ./driver/boot/sharde-everes-hn.sh
chmod +x driver/boot/sharde-everes-sg.sh && sudo ./driver/boot/sharde-everes-sg.sh

chmod +x driver/boot/sharde-fansip-dn.sh && sudo ./driver/boot/sharde-fansip-dn.sh
chmod +x driver/boot/sharde-fansip-hn.sh && sudo ./driver/boot/sharde-fansip-hn.sh
chmod +x driver/boot/sharde-fansip-sg.sh && sudo ./driver/boot/sharde-fansip-sg.sh

chmod +x driver/boot/sharde-fujimo-dn.sh && sudo ./driver/boot/sharde-fujimo-dn.sh
chmod +x driver/boot/sharde-fujimo-hn.sh && sudo ./driver/boot/sharde-fujimo-hn.sh
chmod +x driver/boot/sharde-fujimo-sg.sh && sudo ./driver/boot/sharde-fujimo-sg.sh

chmod +x driver/boot/sharde-matter-dn.sh && sudo ./driver/boot/sharde-matter-dn.sh
chmod +x driver/boot/sharde-matter-hn.sh && sudo ./driver/boot/sharde-matter-hn.sh
chmod +x driver/boot/sharde-matter-sg.sh && sudo ./driver/boot/sharde-matter-sg.sh

chmod +x driver/boot/mongos-router-dn.sh && sudo ./driver/boot/mongos-router-dn.sh
chmod +x driver/boot/mongos-router-hn.sh && sudo ./driver/boot/mongos-router-hn.sh
chmod +x driver/boot/mongos-router-sg.sh && sudo ./driver/boot/mongos-router-sg.sh

chmod +x driver/boot/mongos-expres-io.sh && sudo ./driver/boot/mongos-expres-io.sh

<!-- ----------------------------------------------------------------------------------------------- -->
chmod +x driver/shutdown/keygen.sh && sudo ./driver/shutdown/keygen.sh

chmod +x driver/shutdown/master.sh && sudo ./driver/shutdown/master.sh

chmod +x driver/shutdown/sharde-everes-dn.sh && sudo ./driver/shutdown/sharde-everes-dn.sh
chmod +x driver/shutdown/sharde-everes-hn.sh && sudo ./driver/shutdown/sharde-everes-hn.sh
chmod +x driver/shutdown/sharde-everes-sg.sh && sudo ./driver/shutdown/sharde-everes-sg.sh

chmod +x driver/shutdown/sharde-fansip-dn.sh && sudo ./driver/shutdown/sharde-fansip-dn.sh
chmod +x driver/shutdown/sharde-fansip-hn.sh && sudo ./driver/shutdown/sharde-fansip-hn.sh
chmod +x driver/shutdown/sharde-fansip-sg.sh && sudo ./driver/shutdown/sharde-fansip-sg.sh

chmod +x driver/shutdown/sharde-fujimo-dn.sh && sudo ./driver/shutdown/sharde-fujimo-dn.sh
chmod +x driver/shutdown/sharde-fujimo-hn.sh && sudo ./driver/shutdown/sharde-fujimo-hn.sh
chmod +x driver/shutdown/sharde-fujimo-sg.sh && sudo ./driver/shutdown/sharde-fujimo-sg.sh

chmod +x driver/shutdown/sharde-matter-dn.sh && sudo ./driver/shutdown/sharde-matter-dn.sh
chmod +x driver/shutdown/sharde-matter-hn.sh && sudo ./driver/shutdown/sharde-matter-hn.sh
chmod +x driver/shutdown/sharde-matter-sg.sh && sudo ./driver/shutdown/sharde-matter-sg.sh

chmod +x driver/shutdown/mongos-router-dn.sh && sudo ./driver/shutdown/mongos-router-dn.sh
chmod +x driver/shutdown/mongos-router-hn.sh && sudo ./driver/shutdown/mongos-router-hn.sh
chmod +x driver/shutdown/mongos-router-sg.sh && sudo ./driver/shutdown/mongos-router-sg.sh

chmod +x driver/shutdown/mongos-expres-io.sh && sudo ./driver/shutdown/mongos-expres-io.sh
