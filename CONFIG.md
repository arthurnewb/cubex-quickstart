# ⚙️ CubeX 配置说明

## 📁 配置文件

```
backend/
├── .env              # 环境变量
└── app/config/setting.py
```

## 🔧 环境变量 (.env)

```bash
MYSQL_ROOT_PASSWORD=your_password
MYSQL_DATABASE=cubex
REDIS_PASSWORD=your_password
SECRET_KEY=your-secret-key
```

## 🐳 Docker Compose

```yaml
services:
  mysql:
    image: mysql:8.0
    ports:
      - "3306:3306"
    volumes:
      - mysql_data:/var/lib/mysql

  redis:
    image: redis:7-alpine
    ports:
      - "6379:6379"
    volumes:
      - redis_data:/data

volumes:
  mysql_data:
  redis_data:
```
