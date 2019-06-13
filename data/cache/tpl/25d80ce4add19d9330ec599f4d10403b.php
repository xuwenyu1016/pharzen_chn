<?php exit;?>001591869015b6ff1ba1cd84780610d24bfdf1baa37cs:4013:"a:2:{s:8:"template";s:3949:"<?php $__Template->display("themes/default/header"); ?>

<img src="/assets/image/71.png" class="am-img-responsive am-center" alt="<?php echo $categoryInfo["name"];?>" />

<div class="am-padding-top-xl product-service-block">
    <div class="am-container">
        <p class="am-margin-vertical-sm am-text-sm am-link-muted"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?>&gt;<a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?></p>

        <section class="epc-block">
            <div class="title-block">
                <p><span>epc</span><span>工程总包</span></p>
            </div>

            <article class="am-margin-vertical-lg">
                <img src="/assets/image/100.png" class="am-img-responsive" alt="工程总包" />

                <ul class="am-avg-sm-2">
                    <?php $listList = service("duxcms","Label","contentList",array( "app"=>"DuxCms", "label"=>"contentList", "class_id"=>2, "limit"=>"12", "order"=>"time asc"));  if(is_array($listList)) foreach($listList as $list){ ?>
                    <li><a href="<?php echo $list["aurl"];?>"><?php echo $list["title"];?></a></li>
                    <?php } ?>
                </ul>
            </article>
        </section>
    </div>
</div>

<div class="am-padding-top-xl product-service-block bg-grey">
    <div class="am-container">
        <section class="system-block">
            <div class="title-block">
                <p><span>system equipment</span><span>系统设备</span></p>
            </div>

            <article class="am-margin-vertical-lg">
                <img src="/assets/image/101.png" class="am-img-responsive" alt="系统设备" />

                <ul class="am-avg-sm-3">
                    <?php $listList = service("duxcms","Label","contentList",array( "app"=>"DuxCms", "label"=>"contentList", "class_id"=>4, "limit"=>"20", "order"=>"time asc"));  if(is_array($listList)) foreach($listList as $list){ ?>
                    <li><a href="<?php echo $list["aurl"];?>"><?php echo $list["title"];?></a></li>
                    <?php } ?>
                </ul>
            </article>
        </section>
    </div>
</div>

<div class="am-padding-top-xl product-service-block">
    <div class="am-container">
        <section class="tech-block">
            <div class="title-block">
                <p><span>technical consulting</span><span>技术咨询</span></p>
            </div>

            <article class="am-margin-vertical-lg">
                <img src="/assets/image/102.png" class="am-img-responsive" alt="技术咨询" />

                <ul class="am-avg-sm-3">
                    <?php $listList = service("duxcms","Label","contentList",array( "app"=>"DuxCms", "label"=>"contentList", "class_id"=>9, "limit"=>"12", "order"=>"time asc"));  if(is_array($listList)) foreach($listList as $list){ ?>
                    <li><a href="<?php echo $list["aurl"];?>"><?php echo $list["title"];?></a></li>
                    <?php } ?>
                </ul>
            </article>
        </section>
    </div>
</div>

<div class="am-padding-top-xl product-service-block bg-grey">
    <div class="am-container">
        <section class="stequipment-block">
            <div class="title-block">
                <p><span>stand-alone equipment</span><span>单机设备</span></p>
            </div>

            <article class="am-margin-vertical-lg">
                <img src="/assets/image/103.png" class="am-img-responsive" alt="单机设备" />

                <ul class="am-avg-sm-2">
                    <li class="am-text-center"><a href="/article/danjishebeineirong.html">内容更新中......<br/>敬请期待</a></li>
                </ul>
            </article>
        </section>


        <img src="/assets/image/4.png" class="am-img-responsive am-center bottom-image" alt="<?php echo $categoryInfo["name"];?>">
    </div>
</div>

<?php $__Template->display("themes/default/footer"); ?>";s:12:"compile_time";i:1560333015;}";