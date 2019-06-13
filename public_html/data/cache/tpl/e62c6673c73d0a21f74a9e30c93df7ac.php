<?php exit;?>00159184611022b90b230cd78d572420502a7b01d95es:1253:"a:2:{s:8:"template";s:1189:"<?php $__Template->display("themes/mobile/header"); ?>

<img src="/assets/image/87.png" class="am-img-responsive am-center" alt="<?php echo $categoryInfo["name"];?>" />

<div class="system-list am-padding-horizontal-sm am-padding-bottom-sm">

    <p class="am-margin-vertical-sm am-text-xs am-link-muted"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?>&gt;<a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?></p>

    <h2 class="list-title"><?php echo $categoryInfo["name"];?></h2>
    <p class="list-description am-margin-vertical-sm am-text-sm">为原料药企业提供成套设备和集成装置的机械设计、三维设计、系统开发与集成，提供定制化、模块化的设计、制造、装配和运行调试服务。</p>

    <ul class="am-avg-sm-2 am-margin-top-sm system-list-blocks">
        <?php foreach ($pageList as $vo) { ?>
        <li>
            <article style="background-image: url('<?php echo $vo["image"];?>');">
                <a href="<?php echo $vo["aurl"];?>"><?php echo $vo["title"];?></a>
            </article>
        </li>
        <?php } ?>
    </ul>
</div>

<?php $__Template->display("themes/mobile/footer"); ?>
";s:12:"compile_time";i:1560310110;}";