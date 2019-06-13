<?php exit;?>00159193379284449fce84ecd9bf4a4c7c1bd1c8b0a3s:1891:"a:2:{s:8:"template";s:1827:"<?php $__Template->display("themes/mobile/header"); ?>

<img src="/assets/image/86.png" class="am-img-responsive am-center" alt="<?php echo $categoryInfo["name"];?>" />

<div class="news am-padding-bottom-sm">
    <p class="am-margin-vertical-sm am-text-xs am-link-muted am-padding-horizontal-sm"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?>&gt;<a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?></p>

    <?php foreach ($condition as $vo) { ?>

    <!--<div class="category-list-title"><?php echo $vo["name"];?> <span class="am-icon-angle-down"></span></div>-->

    <ul class="product-dropdown am-avg-sm-4 am-text-sm">
        <li class="select-all <?php if ($vo["value"]==="all"){ ?>  selected <?php } ?> ">
        <a href="<?php echo $vo["url"];?>#main">全部</a>
        </li>
        <?php foreach ($vo["config"] as $v) { ?>
        <li <?php if ($v["value"] == $v["i"]){ ?> class="selected" <?php } ?> >
        <a href="<?php echo $v["url"];?>#main"><?php echo $v["name"];?></a>
        </li>
        <?php } ?>
    </ul>
    <?php } ?>

    <section class="am-margin-top-sm">
        <?php foreach ($pageList as $vo) { ?>
        <article>
            <a href="<?php echo $vo["aurl"];?>">
                <div>
                    <img src="<?php echo $vo["image"];?>" alt="<?php echo $vo["title"];?>" class="am-img-responisve" />
                </div>

                <div>
                    <p class=""><?php echo $vo["title"];?></p>
                    <time pubdate datetime="<?php echo date('Y-m-d',$vo["time"]);?>"><?php echo date('Y-m-d',$vo["time"]);?></time>
                </div>
            </a>
        </article>
        <?php } ?>

        <div class="pages"><?php echo $page;?></div>
    </section>
</div>

<?php $__Template->display("themes/mobile/footer"); ?>";s:12:"compile_time";i:1560397792;}";