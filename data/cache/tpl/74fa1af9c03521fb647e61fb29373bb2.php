<?php exit;?>001591870951df1ded08ba51f7afb96472f5feb3caafs:3157:"a:2:{s:8:"template";s:3093:"<?php $__Template->display("themes/default/header"); ?>

<img src="/assets/image/45.png" class="am-img-responsive am-center" alt="<?php echo $categoryInfo["name"];?>" />

<div class="news am-padding-top-xl">
    <div class="am-container">
        <p class="am-margin-vertical-sm am-text-sm am-link-muted"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?>&gt;<a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?></p>

        <div class="title-block">
            <p><span>news</span><span>新闻资讯</span></p>
        </div>

        <main class="am-margin-top-lg">

            <article>
                <p class="am-text-center"><?php echo $contentInfo["title"];?></p>
                <p class="am-text-center">时间：<time pubdate datetime="<?php echo date('Y-m-d',$vo["time"]);?>"><?php echo date('Y-m-d',$contentInfo["time"]);?></time></p>
                <div><?php echo $contentInfo["content"];?></div>

                <ul class="am-avg-md-2 am-padding-top-lg ">
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

            <aside>
                <p>热门文章</p>

                <dl>
                    <?php $listList = service("duxcms","Label","contentList",array( "app"=>"DuxCms", "label"=>"contentList", "class_id"=>1, "image"=>"true", "limit"=>"3"));  if(is_array($listList)) foreach($listList as $list){ ?>
                    <dt>
                        <a href="<?php echo $list["aurl"];?>" title="<?php echo $list["title"];?>">
                            <div><img src="<?php echo $list["image"];?>" class="am-img-responsive am-center" alt="<?php echo $list["title"];?>" /></div>
                            <p class="am-margin-vertical-sm"><?php echo $list["title"];?></p>
                        </a>
                    </dt>
                    <?php } ?>
                </dl>

            </aside>

        </main>
    </div>

    <img src="/assets/image/4.png" class="am-img-responsive am-center bottom-image" alt="<?php echo $categoryInfo["name"];?>">
</div>

<?php $__Template->display("themes/default/footer"); ?>";s:12:"compile_time";i:1560334951;}";