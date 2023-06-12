### 这是一个基于 vue + node + express 开发的全栈后台管理系统
- 本项目仅适用于前端个人学习或参考使用

- 前端部分：**vue2** + **ant-design-vue**

- 后端部分：**node** + **express** + **mysql**

### 实现功能
#### 前端vue部分

- markdown编辑器 (tui-editor)
- 富文本编辑器 (tinymce)
- 权限验证(三种权限，不同权限显示不同的路由和页面)
- 个性化设置(可自定义开启标签页、布局方式改变和换肤等)
- 系统用户的增、删、改、查
- 用户基本信息展示

#### 后端node部分
- 封装生成和解析token的方法（jsonwebtoken、express-jwt）
- 登录后，将登录信息存起生成token，返回token给前端，然后前端请求接口时带上token，每次接口请求前先验证token是否正确或者过期
- 接入mysql链接池
- 登陆注册接口实现
- 用户列表的增删改查，分页排序等；

### 如何启动项目

- clone本项目
```shell
git clone https://github.com/Qiushihua1/vue-full-stack-system.git
```

- 本地安装mysql，最好安装一下`navicat`。打开`navicat`，新建一个数据库 然后右键运行sql 选择 server文件夹下面的 web_full_stack.sql文件
- 注意：创建的数据库或MySQL参数都需配置好，以避免数据库报错
- 进入本项目根目录，并安装依赖
```shell
npm i 
```

- 运行前端项目
```shell
npm run serve
```

- 进入本项目根目录下的`server`文件夹，并安装依赖
```shell
npm i 
```

- 运行node后端服务
```shell
npm start
```






