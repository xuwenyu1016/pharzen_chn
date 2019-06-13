<?php exit;?>001591176016ba20fb54643dfd09bfd83a8dd77bf91as:1562:"a:2:{s:8:"template";s:1498:"<?php $__Template->display("themes/mobile/header"); ?>

<img src="/assets/image/92.png" class="am-img-responsive am-center" alt="<?php echo $contentInfo["title"];?>" />

<div class="epc am-padding-bottom-sm tech">
    <p class="am-margin-vertical-sm am-text-xs am-link-muted am-padding-horizontal-sm"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?>&gt;<a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?></p>

    <section data-am-widget="accordion" class="am-accordion am-accordion-default" data-am-accordion='{ "multiple": true }'>
        <?php foreach ($pageList as $vo) { ?>

        <dl class="am-accordion-item">
            <dt class="am-accordion-title"><a><?php echo $vo["title"];?> <span class="plus">+</span><span class="minus">-</span></a></dt>
            <dd class="am-accordion-content am-collapse ">

                <div class="am-text-xs"><?php echo html_out($vo["content"]);?></div>

                <h2 class="am-text-sm am-margin-vertical-xs list-title am-text-center">相关案例</h2>

                <article class="img-gallery">
                    <?php foreach($vo["papers"] as $val): ?>

                    <img class="am-img-responsive am-center am-margin-bottom-sm" src="<?php echo $val['url']?>" alt="<?php echo $val['title']?>" />

                    <?php endforeach;?>
                </article>


            </dd>
        </dl>

        <?php } ?>
    </section>

</div>


<?php $__Template->display("themes/mobile/footer"); ?>";s:12:"compile_time";i:1559640016;}";