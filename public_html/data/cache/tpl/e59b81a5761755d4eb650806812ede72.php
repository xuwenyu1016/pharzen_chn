<?php exit;?>001591846111463db9f248707460cb7e70c143cd3c54s:2318:"a:2:{s:8:"template";s:2254:"<?php $__Template->display("themes/mobile/header"); ?>

<img src="/assets/image/87.png" class="am-img-responsive am-center" alt="<?php echo $contentInfo["title"];?>" />

<div class="system-list am-padding-horizontal-sm am-padding-bottom-sm">

    <p class="am-margin-vertical-sm am-text-xs am-link-muted"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?>&gt;<a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?>&gt;<?php echo $contentInfo["title"];?></p>

    <h2 class="list-title"><?php echo $contentInfo["title"];?></h2>

    <article>
        <div data-am-widget="slider" class="am-slider am-slider-c2" data-am-slider='{"directionNav":false}'>
            <ul class="am-slides">
                <?php foreach($contentInfo["productImgSlide"] as $val): ?>
                <li>
                    <img class="am-img-responsive" src="<?php echo $val['url']?>" alt="<?php echo $val['title']?>" />
                </li>
                <?php endforeach;?>
            </ul>
        </div>

        <p class="am-text-xs"><?php echo $contentInfo["content"];?></p>
    </article>


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
                <img class="am-img-responsive am-center am-margin-bottom-sm" src="/assets/image/96.png" alt="内容更新中" />
                <?php } ?>
            </div>
            <div data-tab-panel-1 class="am-tab-panel ">
                <p class="am-margin-vertical-sm"><?php echo $contentInfo["skillDetails"];?></p>
            </div>
        </div>
    </div>

</div>

<?php $__Template->display("themes/mobile/footer"); ?>
";s:12:"compile_time";i:1560310111;}";