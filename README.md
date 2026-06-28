# CRM客户关系管理系统

> 基于 SpringBoot + Vue 的客户关系管理系统（CRM），毕业设计项目。

---

## 项目概述

本项目是一个面向中小型企业的**客户关系管理系统（CRM）**，采用前后端分离架构，实现了客户管理、线索跟踪、商机管理、合同管理、回款管理、权限控制等核心功能。系统支持多角色权限划分，提供数据可视化报表，帮助企业高效管理客户资源。

## 技术栈

### 后端
| 技术 | 版本 | 说明 |
|------|------|------|
| Spring Boot | 2.6.6 | 核心框架 |
| MyBatis | 2.2.2 | ORM 持久层框架 |
| Druid | 1.2.8 | 阿里数据库连接池 |
| MySQL | 8.0 | 关系型数据库 |
| PageHelper | 1.4.2 | 分页插件 |
| Knife4j | 3.0.2 | 接口文档生成 |
| JWT | 0.9.1 | Token 认证 |
| Lombok | 1.18.8 | 简化代码 |
| Fastjson | 1.2.75 | JSON 处理 |
| EasyExcel | 2.2.6 | Excel 导入导出 |
| MinIO | 8.3.3 | 对象存储（文件上传）|
| Drools | 7.17.0.Final | 规则引擎 |
| JBCrypt | 0.4 | 密码加密 |
| Apache POI | 4.1.2 | Office 文档处理 |
| Kaptcha | 2.3.2 | 验证码生成 |

### 前端
- Vue.js（已打包为静态文件，通过 Nginx 部署）
- Element UI

### 运行环境
- JDK 11+
- Maven 3.6+
- MySQL 8.0+
- Nginx 1.22+

## 项目结构

```
crm-system-springboot/
├── backend/                          # 后端代码
│   ├── huike-admin/                  # 主模块（Controller、Service）
│   ├── huike-common/                 # 公共模块（工具类、常量）
│   ├── huike-pojo/                   # 实体类模块（Entity、DTO）
│   ├── huike-utils/                  # 工具类模块
│   └── pom.xml                       # 父 POM（多模块管理）
├── frontend/                         # 前端打包文件（Nginx 部署）
│   ├── html/                         # 静态页面
│   └── conf/nginx.conf               # Nginx 配置
├── database.sql                      # 数据库初始化脚本
└── README.md
```

## 核心功能模块

| 模块 | 功能说明 |
|------|----------|
| 客户管理 | 客户信息录入、编辑、查询、分配、跟进记录 |
| 线索管理 | 商机线索收集、转化、跟踪 |
| 商机管理 | 商机阶段推进、报价、竞争分析 |
| 合同管理 | 合同签订、审批、归档 |
| 回款管理 | 回款计划、回款记录、账期管理 |
| 权限管理 | 角色、菜单、部门、岗位管理（RBAC）|
| 系统管理 | 字典、参数、通知公告、操作日志 |
| 数据统计 | 客户分析、销售报表、业绩统计 |

## 快速启动

### 1. 数据库初始化
```bash
# 创建数据库
mysql -u root -p
CREATE DATABASE huike_simple DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

# 导入数据
mysql -u root -p huike_simple < database.sql
```

### 2. 后端启动
```bash
cd backend/huike-admin
mvn spring-boot:run
```

### 3. 前端部署
```bash
# 将 frontend/html 目录配置到 Nginx 的 root 路径
# 修改 nginx.conf 中的 server 配置
```

### 4. 访问系统
- 前端地址：http://localhost
- 后端接口：http://localhost:8080
- 接口文档：http://localhost:8080/doc.html

### 默认账号
| 角色 | 用户名 | 密码 |
|------|--------|------|
| 管理员 | admin | 123456 |

## 数据库设计

数据库采用 **MySQL 8.0**，核心表包括：

- `sys_user` — 用户表
- `sys_role` — 角色表
- `sys_menu` — 菜单表
- `sys_dept` — 部门表
- `sys_config` — 系统参数表
- `sys_dict` — 字典表
- `sys_login_log` — 登录日志
- `sys_oper_log` — 操作日志
- `tb_customer` — 客户表
- `tb_clue` — 线索表
- `tb_business` — 商机表
- `tb_contract` — 合同表
- `tb_repayment` — 回款表
- `mybatis_review` — 示例数据表

> 完整表结构详见 `database.sql` 文件。

## 接口文档

项目集成 **Knife4j**（Swagger 增强版），启动后访问：

```
http://localhost:8080/doc.html
```

可在线查看所有接口、参数、响应示例，并支持接口调试。

## 系统截图

> 系统运行截图可参见论文文档或答辩 PPT。

## 项目亮点

- 采用 **Maven 多模块** 架构，代码分层清晰，便于维护扩展
- 基于 **RBAC** 的权限控制，支持角色、菜单、数据权限三级控制
- 集成 **Drools 规则引擎**，实现动态业务规则配置
- 集成 **MinIO** 对象存储，支持文件上传、预览、下载
- 使用 **EasyExcel** 实现大数据量 Excel 导入导出，性能优异
- 完善的 **日志记录**（登录日志、操作日志），便于审计追溯
- **全局异常处理** + 统一返回封装，接口规范健壮

## 作者

- **GitHub**: [3161590967](https://github.com/3161590967)
- **项目**: 毕业设计 — 基于 SpringBoot 的客户关系管理系统的设计与实现

## 许可证

本项目仅供学习交流使用，未经授权不得用于商业用途。
