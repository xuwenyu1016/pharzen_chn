<?php exit;?>0015918633582aad1fd15f3e015e6acea7580addca5ds:3182:"a:2:{s:8:"template";s:3118:"<?php $__Template->display("themes/default/header"); ?>

<img src="/assets/image/82.png" class="am-img-responsive am-center" alt="<?php echo $categoryInfo["name"];?>" />

<div class="epc-content am-padding-top-xl tech">
    <div class="am-container" id='main'>
        <p class="am-margin-vertical-sm am-text-sm am-link-muted"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?>&gt;<a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?></p>

        <div class="title-block">
            <p><span>technical consulting</span><span>技术咨询</span></p>
        </div>

        <ul class="epc-nav am-avg-sm-3 am-margin-top-lg">
            <?php $listList = service("duxcms","Label","contentList",array( "app"=>"DuxCms", "label"=>"contentList", "class_id"=>9, "limit"=>"10", "order"=>"time asc"));  if(is_array($listList)) foreach($listList as $list){ ?>
            <li>
                <?php if ( $contentInfo['title'] ==  $list['title']  ){ ?>
                <a href="<?php echo $list["aurl"];?>#main" class="active"><?php echo $list["title"];?></a>
                <?php }else{ ?>
                <a href="<?php echo $list["aurl"];?>#main"><?php echo $list["title"];?></a>
                <?php } ?>
            </li>
            <?php } ?>
        </ul>

        <section class="epc-specific am-padding-top-xl">
            <img src="<?php echo $contentInfo["image"];?>" alt="<?php echo $contentInfo["title"];?>" class="am-img-responsive" />

            <div>
                <p><?php echo $contentInfo["title"];?></p>
                <article>
                    <!--<p><?php echo $contentInfo["focus"];?></p>-->
                    <!--<p>（<?php echo $contentInfo["blueFont"];?>）</p>-->
                    <p><?php echo $contentInfo["content"];?></p>
                </article>
            </div>
        </section>

        <div data-am-widget="tabs" class="am-tabs am-tabs-default">
            <ul class="am-tabs-nav am-cf">
                <li class="am-active"><a href="[data-tab-panel-0]">相关案例</a></li>
                <!--<li class=""><a href="[data-tab-panel-1]">技术描述</a></li>-->
            </ul>
            <div class="am-tabs-bd">
                <div data-tab-panel-0 class="am-tab-panel am-active">
                    <!--<p class="am-margin-vertical-sm"><?php echo $contentInfo["skillDetails"];?></p>-->

                        <?php foreach($contentInfo["papers"] as $val): ?>

                            <img class="am-img-responsive am-center am-margin-bottom-sm" src="<?php echo $val['url']?>" alt="<?php echo $val['title']?>" />

                        <?php endforeach;?>

                </div>
                <!--<div data-tab-panel-1 class="am-tab-panel ">-->
                    <!--<p class="am-margin-vertical-sm"><?php echo $contentInfo["skillDetails"];?></p>-->
                <!--</div>-->
            </div>
        </div>
    </div>

    <img src="/assets/image/4.png" class="am-img-responsive am-center bottom-image" alt="<?php echo $categoryInfo["name"];?>">
</div>

<?php $__Template->display("themes/default/footer"); ?>";s:12:"compile_time";i:1560327358;}";