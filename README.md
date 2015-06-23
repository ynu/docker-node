# docker-node
用于提供nodejs服务的docker镜像

## 如何运行yae的node容器

1.  切换到 /yae 目录
2. 从git 下载hello-node： `git clone http://git.ynu.edu.cn/yae/hello-node.git`
3. 创建并运行容器： `id=$(sudo docker run -itd  -p 10082:18080 -v /yae/hello-node:/app ynuae/node)`
     - 创建容器时，为方便后续使用，将容器id赋值给shell变量id。
     - 容器使用`18080`端口，并将此端口映射到docker服务器的`10082`端口
     - 将hello-node所在的文件夹作为数据卷映射到容器的`/app`目录
4. 可以使用attach 进入容器内部查看运行情况： `sudo docker attach $id`
     - 查看结束后不能按`ctrl + c`，应该使用`ctrl+p, ctrl+q` 退出程序。
5. 当容器启动后，等待`npm install`结束后就可以在浏览器中输入：`http://docker.ynu.edu.cn:10082/hello` 查看结果
     - 正常情况下：浏览器将出现 “hello, YAE!”
6. 当需要停止容器时，运行命令：`sudo docker stop $id`
7. 停止容器后，可以将容器删除，下次需要使用时再创建：`sudo docker rm $id`