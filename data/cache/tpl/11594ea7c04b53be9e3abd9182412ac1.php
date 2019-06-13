<?php exit;?>001590562467d21fd46cc0c240116c61b1e6ee3a8364s:1704:"a:2:{s:8:"template";s:1640:"<?php $__Template->display("themes/mobile/header"); ?>

<img src="/assets/image/92.png" class="am-img-responsive am-center" alt="<?php echo $contentInfo["title"];?>" />

<style>
    .tech-support>ul li a{font-size: 1.4rem;display: block;text-align: center;line-height: 24px;border-radius: .8rem;}
    .tech-support>ul li a.active{color: white;background-color: #4498e8;width: 80%;}

</style>

<div class="tech-support am-padding-horizontal-sm am-padding-bottom-sm">
    <p class="am-margin-vertical-sm am-text-xs am-link-muted"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?>&gt;<a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?>&gt;<?php echo $contentInfo["title"];?></p>

    <ul class="am-avg-sm-3 am-margin-top-lg">
        <?php $listList = service("duxcms","Label","contentList",array( "app"=>"DuxCms", "label"=>"contentList", "class_id"=>9, "limit"=>"10", "order"=>"time asc"));  if(is_array($listList)) foreach($listList as $list){ ?>
        <li>
            <?php if ( $contentInfo['title'] ==  $list['title']  ){ ?>
            <a href="<?php echo $list["aurl"];?>" class="active"><?php echo $list["title"];?></a>
            <?php }else{ ?>
            <a href="<?php echo $list["aurl"];?>"><?php echo $list["title"];?></a>
            <?php } ?>
        </li>
        <?php } ?>
    </ul>

    <p><?php echo $contentInfo["title"];?></p>

    <article>
        <p><?php echo $contentInfo["content"];?></p>
    </article>

    <p>相关案例</p>

    <p class="am-margin-vertical-sm"><?php echo $contentInfo["skillDetails"];?></p>

</div>


<?php $__Template->display("themes/mobile/footer"); ?>";s:12:"compile_time";i:1559026467;}";