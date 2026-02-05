# 🐛 CubeX 常见问题

## ❌ Docker 未安装

```bash
brew install --cask docker  # macOS
sudo apt install docker.io docker-compose  # Ubuntu
```

## ❌ 端口冲突

```bash
sudo lsof -i :3306  # 检查占用
```

## ❌ MySQL 启动失败

```bash
docker-compose logs mysql
docker-compose restart mysql
```

## ❌ 后端启动失败

```bash
cd backend
source .venv/bin/activate
pip install -r requirements.txt
```

## ❌ 401 未授权

- 重新登录获取 token
- 检查 JWT 配置 (SECRET_KEY)
