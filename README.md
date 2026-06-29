# 🍃 MongoDB Cluster System (MongoDB + Mongo Express)

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

## Recommended VS Code Extensions

- [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
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

### Create the shared Docker network if it does not already exist

```bash
docker network create master-netwrk
```

### Fix permissions

```bash
sudo chown 1000:1000 -R . && sudo chmod 777 -R .
```

### Grant execute permission

```bash
find . -type f -name "*.sh" -exec chmod +x {} \;
```

### Build

```bash
chmod +x driver/reboot/keygen.sh && sudo ./driver/reboot/keygen.sh
cp .env.example .env && chmod +x driver/reboot/master.sh && sudo ./driver/reboot/master.sh
```
