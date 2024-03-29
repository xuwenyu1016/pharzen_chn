<?php exit;?>00158995424225222f96c71e76f09c7c61418f8e8e46s:5417:"a:2:{s:8:"template";s:5353:"<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title>DuxCms安装向导</title>
    <link rel="stylesheet" href="/public/common/css/pintuer.css">
    <link rel="stylesheet" href="/public/install/css/style.css">
    <script src="/public/js/jquery.js"></script>
    <script src="/public/common/js/pintuer.js"></script>
    <script src="/public/common/js/respond.js"></script>
    <script src="/public/install/js/install.js"></script>
</head>
<body>
    <div class="container">
        <div class="ins-head">
            <h1>DuxCms 安装程序</h1>
        </div>
        <div class="panel ins-panel">
            <div class="ins-step">
                <div class="step">
                    <div class="step-bar complete" style="width:25%;"><span class="step-point icon-check"></span><span class="step-text">阅读用户协议</span></span>
                    </div>
                    <div class="step-bar complete" style="width:25%;"><span class="step-point icon-check"></span><span class="step-text">检查安装环境</span>
                    </div>
                    <div class="step-bar active" style="width:25%;"><span class="step-point">3</span><span class="step-text">配置程序信息</span>
                    </div>
                    <div class="step-bar" style="width:25%;"><span class="step-point">4</span><span class="step-text">完成安装操作</span>
                    </div>
                </div>
            </div>
            <form class="form-x " action="<?php echo url('setup3');?>" method="post">
                <div class="panel-body">

                    <div class="form-group">
                        <label class="label">数据库地址：</label>
                        <div class="field">
                            <input type="text" class="input" name="DB_HOST" id="DB_HOST" value="127.0.0.1" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="label">数据库端口：</label>
                        <div class="field">
                            <input type="text" class="input" name="DB_PORT" id="DB_PORT" value="3306" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="label">数据库名称：</label>
                        <div class="field">
                            <input type="text" class="input" name="DB_NAME" id="DB_NAME" value="duxcms" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="label">数据库用户名：</label>
                        <div class="field">
                            <input type="text" class="input" name="DB_USER" id="DB_USER" value="root" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="label">数据库密码：</label>
                        <div class="field">
                            <input type="text" class="input" name="DB_PWD" id="DB_PWD" value="" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="label">数据表前缀：</label>
                        <div class="field">
                            <input type="text" class="input" name="DB_PREFIX" value="dux_" id="DB_PREFIX" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="label">安全加密码：</label>
                        <div class="field">
                            <input type="text" class="input" name="SAFE_KEY" value="<?php echo $safe_key;?>" id="SAFE_KEY" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="label">COOKIE前缀：</label>
                        <div class="field">
                            <input type="text" class="input" name="COOKIE_PREFIX" value="<?php echo $cookie;?>" id="COOKIE_PREFIX" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="label">API密钥：</label>
                        <div class="field">
                            <input type="text" class="input" name="API_TOKEN" value="<?php echo $token;?>" id="API_TOKEN" />
                        </div>
                    </div>
                </div>
                <div class="panel-foot">
                    <div class="line-middle">
                        <div class="xm6"><a class="button bg-main button-block text-center" href="<?php echo url('setup1');?>">上一步</a>
                        </div>
                        <div class="xm6">
                            <button class="button bg-sub button-block text-center" type="submit" class="submit">确认安装</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>";s:12:"compile_time";i:1558418242;}";