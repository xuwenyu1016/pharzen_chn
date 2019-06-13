<?php exit;?>0015905594746a7bfd2b2d152b00829d0eb498433a94s:1499:"a:2:{s:8:"template";s:1435:"<?php $__Template->display("themes/mobile/header"); ?>

<img src="/assets/image/90.png" class="am-img-responsive am-center" alt="<?php echo $categoryInfo["name"];?>" />

<div class="epc am-padding-bottom-sm">
    <p class="am-margin-vertical-sm am-text-xs am-link-muted am-padding-horizontal-sm"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?>&gt;<a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?></p>

    <section data-am-widget="accordion" class="am-accordion am-accordion-default" data-am-accordion='{ "multiple": true }'>
        <?php foreach ($pageList as $vo) { ?>
        <dl class="am-accordion-item">
            <dt class="am-accordion-title"><?php echo $vo["title"];?> <span class="plus">+</span><span class="minus">-</span></dt>
            <dd class="am-accordion-content am-collapse ">
                <ul class="am-avg-sm-2">
                    <li><img src="<?php echo $vo["image"];?>" alt="<?php echo $contentInfo["title"];?>" class="am-img-responsive" /></li>
                    <li>
                        <p><?php echo $vo["focus"];?></p>
                        <p>（<?php echo $vo["blueFont"];?>）</p>
                    </li>
                </ul>

                <div class="am-text-xs am-margin-top-xs"><?php echo $vo["content"];?></div>

            </dd>
        </dl>
        <?php } ?>
    </section>

</div>

<?php $__Template->display("themes/mobile/footer"); ?>";s:12:"compile_time";i:1559023474;}";