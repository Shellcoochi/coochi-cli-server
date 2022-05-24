# 设置基础镜像,如果本地没有该镜像，会从Docker.io服务器pull镜像
FROM node

# 创建app目录
RUN mkdir -p /home/dockerfile/egg-example

# 设置工作目录
WORKDIR /home/dockerfile/egg-example

# 所以，正确的顺序是: 添加package.json；安装npm模块；添加源代码。
COPY package.json /home/dockerfile/egg-example/package.json

# 安装npm依赖(使用淘宝的镜像源)
# 如果使用的境外服务器，无需使用淘宝的镜像源，即改为`RUN npm i`。
RUN npm i --registry=https://registry.npm.taobao.org

# 拷贝所有源代码到工作目录
COPY . /home/dockerfile/egg-example

# 暴露容器端口
EXPOSE 7001

# 启动node应用
CMD npm run dev
