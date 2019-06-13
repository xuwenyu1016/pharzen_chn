<?php exit;?>00159186663837ef8237f76a3248f22e3e132830f158s:2023:"a:2:{s:8:"template";s:1959:"<?php $__Template->display("themes/default/header"); ?>

<img src="/assets/image/104.png" class="am-img-responsive am-center" alt="<?php echo $categoryInfo["name"];?>" />

<div class="sum-languages am-padding-top-xl">
    <div class="am-container">
        <p class="am-margin-vertical-sm am-text-sm am-link-muted"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?>&gt;<a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?></p>

        <div class="title-block">
            <p><span>language</span></p>
        </div>

        <ul class="am-avg-sm-3 am-margin-top-xl">
            <li>
                <article>
                    <a href="<?php echo $_SERVER['REQUEST_URI'] ?>">
                        <img src="/assets/image/105.png" class="am-img-responsive am-center" alt="CHN" />
                        <p class="am-text-center am-margin-vertical-sm">CHN</p>
                    </a>
                </article>
            </li>
            <li>
                <article>
                    <a href="http://en.pharzen.com<?php echo $_SERVER['REQUEST_URI'] ?>">
                        <img src="/assets/image/106.png" class="am-img-responsive am-center" alt="ENG" />
                        <p class="am-text-center am-margin-vertical-sm">ENG</p>
                    </a>
                </article>
            </li>
            <li>
                <article>
                    <a href="http://ru.pharzen.com<?php echo $_SERVER['REQUEST_URI'] ?>">
                        <img src="/assets/image/107.png" class="am-img-responsive am-center" alt="RUS" />
                        <p class="am-text-center am-margin-vertical-sm">RUS</p>
                    </a>
                </article>
            </li>
        </ul>
    </div>
    <img src="/assets/image/4.png" class="am-img-responsive am-center bottom-image" alt="<?php echo $categoryInfo["name"];?>">
</div>


<?php $__Template->display("themes/default/footer"); ?>
";s:12:"compile_time";i:1560330638;}";