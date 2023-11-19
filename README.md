# B/S实现个人通讯录系统

## 简介

大三软件工程——软件体系结构实验3（任务3），采用B/S结构实现个人通讯录系统

## 开发环境

- JDK 1.8
- Maven 3.9.5
- Intellij IDEA 2023.2
- Tomcat 9.0.38
- MySql 8.0.35

## 如何运行

1. clone到本地
2. 等待Maven下载依赖
3. 修改 `src/Main.BS/jdbc.properties` 数据库配置
4. 编辑Tomcat9服务器配置，点击运行
5. 浏览器中打开

## MySql配置

```sql
CREATE TABLE `contact` (
  `ccode` int NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) NOT NULL,
  `caddress` varchar(255) NOT NULL,
  `cphone` varchar(30) NOT NULL,
  PRIMARY KEY (`ccode`)
) ENGINE=InnoDB AUTO_INCREMENT=1117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
```
