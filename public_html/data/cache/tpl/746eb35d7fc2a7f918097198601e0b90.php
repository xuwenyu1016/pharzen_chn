<?php exit;?>001591863357e80d5e50d68e75318ad45909251c58a4s:3640:"a:2:{s:8:"template";s:3576:"<?php $__Template->display("themes/default/header"); ?>

<img src="/assets/image/60.png" class="am-img-responsive am-center" alt="<?php echo $categoryInfo["name"];?>" />

<div class="epc-content am-padding-top-xl system">
    <div class="am-container" id='main'>
        <p class="am-margin-vertical-sm am-text-sm am-link-muted"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?>&gt;<a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?></p>

        <div class="title-block">
            <p><span>system equipment</span><span>系统设备</span></p>
        </div>

        <ul class="epc-nav am-avg-sm-4 am-margin-top-lg">
            <?php $listList = service("duxcms","Label","contentList",array( "app"=>"DuxCms", "label"=>"contentList", "class_id"=>4, "limit"=>"12", "order"=>"time asc"));  if(is_array($listList)) foreach($listList as $list){ ?>
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
            <div data-am-widget="slider" class="am-slider am-slider-c2" data-am-slider='{"directionNav":false}'>
                <ul class="am-slides">
                    <?php foreach($contentInfo["productImgSlide"] as $val): ?>
                    <li>
                        <img class="am-img-responsive" src="<?php echo $val['url']?>" alt="<?php echo $val['title']?>" />
                    </li>
                    <?php endforeach;?>
                </ul>
            </div>

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
                <li class="am-active"><a href="[data-tab-panel-0]">方案图纸</a></li>
                <li class=""><a href="[data-tab-panel-1]">技术描述</a></li>
            </ul>
            <div class="am-tabs-bd">
                <div data-tab-panel-0 class="am-tab-panel am-active">
                    <?php if ( $contentInfo['papers'] ){ ?>
                    <?php foreach($contentInfo["papers"] as $val): ?>
                    <img class="am-img-responsive am-center am-margin-bottom-sm" src="<?php echo $val['url']?>" alt="<?php echo $val['title']?>" />
                    <?php endforeach;?>
                    <?php }else{ ?>
                    <img class="am-img-responsive am-center am-margin-bottom-sm" src="/assets/image/95.png" alt="内容更新中" />
                    <?php } ?>
                </div>
                <div data-tab-panel-1 class="am-tab-panel ">
                    <p class="am-margin-vertical-sm"><?php echo $contentInfo["skillDetails"];?></p>
                </div>
            </div>
        </div>
    </div>

    <img src="/assets/image/4.png" class="am-img-responsive am-center bottom-image" alt="<?php echo $categoryInfo["name"];?>">
</div>

<?php $__Template->display("themes/default/footer"); ?>";s:12:"compile_time";i:1560327357;}";