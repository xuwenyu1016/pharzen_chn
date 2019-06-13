<?php exit;?>001591323010c4408968542f92477a598ba607d882b3s:2831:"a:2:{s:8:"template";s:2767:"<footer class="am-padding-top-xl">
    <div class="am-container">
        <ul class="am-avg-sm-2 am-padding-bottom-xl">
            <li>
                <a href="/"><img src="/assets/image/5.png" class="am-img-responsive" alt="法尔森服务于全球制药业" /></a>
                <p class="am-margin-vertical-xs am-text-lg">&emsp;&nbsp;服务于全球制药业</p>

                <p class="am-margin-top-lg am-margin-bottom-xs">网址：<a href="http://www.pharzen.com">www.pharzen.com</a></p>
                <p class="am-margin-vertical-xs">邮箱：pharzen@pharzen.com</p>
                <p class="am-margin-vertical-xs">电话：<a href="tel:021-52217320">021-52217320</a></p>
                <p class="am-margin-vertical-xs">QQ：1722525793</p>
                <p class="am-margin-vertical-xs">地址：上海市闵行区沧源路1200号</p>
            </li>

            <li>
                <p>联系我们</p>
                <form action="<?php echo U('DuxCms/Form/push');?>" method="post">
                    <div>
                        <input type="text" name="name" placeholder="姓名" />
                    </div>
                    <div>
                        <input type="tel" name="tel" placeholder="手机号" />
                    </div>
                    <div>
                        <textarea name="content" placeholder="内容"></textarea>
                    </div>

                    <div>
                        <input name="verifycode" type="text" maxlength="4" size="4" placeholder="验证码" />
                        <img title="点击刷新" src="<?php echo url('duxcms/Form/verify');?>" align="absbottom" onclick="this.src='<?php echo url('duxcms/Form/verify');?>&'+Math.random();"></img>
                        <input type="hidden" name="token" value="<?php $echoList = service("duxcms","Label","formToken",array( "app"=>"DuxCms", "label"=>"formToken", "table"=>"guestbook"));  echo $echoList; ?>">
                        <input type="hidden" name="table" value="guestbook">
                        <button type="submit">点击提交</button>
                    </div>

                </form>
            </li>
        </ul>

        <p class="am-margin-vertical-xs am-text-center">备案号：<a href="http://www.beian.miit.gov.cn" target="_blank">沪ICP备19015787号-1</a> &emsp;版本所有，请勿模仿，保留法律追究权利！</p>
    </div>
</footer>

<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/amazeui/2.7.2/js/amazeui.min.js"></script>

<script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&ak=2ab9a8e5f4c7f4b99d508d3d0025b954"></script>
<script src="/assets/js/map.js"></script>

</body>
</html>";s:12:"compile_time";i:1559787010;}";