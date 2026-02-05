# 📦 CubeX 安装指南

## 环境要求

- Docker ≥ 20.10
- Docker Compose ≥ 2.0
- Python ≥ 3.10

## 🐳 安装 Docker

**macOS**:
```bash
brew install --cask docker
```

**Ubuntu**:
```bash
sudo apt install docker.io docker-compose
```

## 📥 安装步骤

```bash
git clone https://github.com/arthurnewb/cubex-quickstart.git
cd cubex-quickstart
chmod +x setup.sh
./setup.sh
```

## ✅ 验证

- 前端: http://localhost:5173
- 后端: curl http://localhost:8002/health
