<?php exit;?>0015901397404c2657de26c08cfd2630a1cc820cd3b1s:2545:"a:2:{s:8:"template";s:2481:"<?php $__Template->display("themes/default/header"); ?>

<img src="/assets/image/45.png" class="am-img-responsive am-center" alt="<?php echo $categoryInfo["name"];?>" />

<div class="news am-padding-top-xl">
    <div class="am-container" id="main">
        <p class="am-margin-vertical-sm am-text-sm am-link-muted"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?>&gt;<a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?></p>

        <div class="title-block">
            <p><span>news</span><span>新闻资讯</span></p>

            <div>
                <?php foreach ($condition as $vo) { ?>

                <!--<div class="category-list-title"><?php echo $vo["name"];?> <span class="am-icon-angle-down"></span></div>-->

                <ul class="product-dropdown am-avg-sm-5">
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
            </div>
        </div>

        <section class="am-margin-top-lg">
            <?php foreach ($pageList as $vo) { ?>
            <article>
                <a href="<?php echo $vo["aurl"];?>">
                    <div>
                        <img src="<?php echo $vo["image"];?>" alt="<?php echo $vo["title"];?>" class="am-img-responisve" />
                    </div>

                    <div>
                        <p class="am-text-truncate"><?php echo $vo["title"];?></p>
                        <time pubdate datetime="<?php echo date('Y-m-d',$vo["time"]);?>"><?php echo date('Y-m-d',$vo["time"]);?></time>
                        <p><?php echo $vo["description"];?></p>
                        <span>查看详情</span>
                    </div>
                </a>
            </article>
            <?php } ?>

            <div class="pages"><?php echo $page;?></div>
        </section>
    </div>

    <img src="/assets/image/4.png" class="am-img-responsive am-center bottom-image" alt="<?php echo $categoryInfo["name"];?>">
</div>

<?php $__Template->display("themes/default/footer"); ?>";s:12:"compile_time";i:1558603740;}";