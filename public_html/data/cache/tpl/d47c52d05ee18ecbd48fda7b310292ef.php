<?php exit;?>001591874030559b9c71de265471f72411301694e337s:1870:"a:2:{s:8:"template";s:1806:"<?php $__Template->display("themes/mobile/header"); ?>

<img src="/assets/image/86.png" class="am-img-responsive am-center" alt="<?php echo $categoryInfo["name"];?>" />

<div class="news am-padding-horizontal-sm">

    <p class="am-margin-vertical-sm am-text-xs am-link-muted"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?>&gt;<a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?></p>

    <article class="artical-body">
        <p class="am-text-center"><?php echo $contentInfo["title"];?></p>
        <p class="am-text-center">时间：<time pubdate datetime="<?php echo date('Y-m-d',$vo["time"]);?>"><?php echo date('Y-m-d',$contentInfo["time"]);?></time></p>
        <div><?php echo $contentInfo["content"];?></div>

        <ul class="am-avg-md-1 am-padding-vertical-sm am-margin-top-sm preNext am-text-sm">
            <li>
                <div class="am-text-truncate"><span>上一篇：</span>
                    <?php if (empty($prevInfo['aurl'])){ ?>
                    <a class="am-link-muted ">暂无</a>
                    <?php }else{ ?>
                    <a href="<?php echo $prevInfo["aurl"];?>" class="am-link-muted"><?php echo $prevInfo["title"];?></a>
                    <?php } ?>
                </div>
            </li>
            <li>
                <div class="am-text-truncate"><span>下一篇：</span>
                    <?php if (empty($nextInfo['aurl'])){ ?>
                    <a class="am-link-muted">暂无</a>
                    <?php }else{ ?>
                    <a href="<?php echo $nextInfo["aurl"];?>" class="am-link-muted"><?php echo $nextInfo["title"];?></a>
                    <?php } ?>
                </div>
            </li>
        </ul>
    </article>

</div>

<?php $__Template->display("themes/mobile/footer"); ?>
";s:12:"compile_time";i:1560338030;}";