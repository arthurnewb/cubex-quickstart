#!/bin/bash

set -e

GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'

log_info() { echo -e "${BLUE}[INFO]${NC} $1"; }
log_success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }
log_error() { echo -e "${RED}[ERROR]${NC} $1"; }

PROJECT_DIR=$(pwd)
BACKEND_DIR="${PROJECT_DIR}/backend"

main() {
    log_info "🚀 CubeX 一键安装"
    
    command -v docker &> /dev/null || { log_error "Docker 未安装"; exit 1; }
    
    if [ ! -f "${BACKEND_DIR}/.env" ]; then
        cp "${BACKEND_DIR}/.env.example" "${BACKEND_DIR}/.env"
        chmod 600 "${BACKEND_DIR}/.env"
        log_info "已创建 .env，请修改密码"
    fi
    
    log_info "启动 MySQL 和 Redis..."
    docker-compose up -d mysql redis
    sleep 30
    
    if docker-compose ps | grep -q "Up"; then
        log_success "✅ 启动成功!"
        log_info "📍 前端: http://localhost:5173"
        log_info "📍 后端: http://localhost:8002"
    else
        log_error "启动失败"
        docker-compose logs
    fi
}

main "$@"
