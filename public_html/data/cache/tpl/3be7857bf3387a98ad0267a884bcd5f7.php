<?php exit;?>0015917873809820d6753f92d66063cc05a9facad326s:4260:"a:2:{s:8:"template";s:4196:"<?php $__Template->display("themes/mobile/header"); ?>

<img src="/assets/image/90.png" class="am-img-responsive am-center" alt="<?php echo $contentInfo["title"];?>" />

<div class="epc am-padding-bottom-sm">
    <p class="am-margin-vertical-sm am-text-xs am-link-muted am-padding-horizontal-sm"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?>&gt;<a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?></p>

    <section data-am-widget="accordion" class="am-accordion am-accordion-default" data-am-accordion='{ "multiple": true }'>
        <?php $listList = service("article","Label","contentList",array( "app"=>"Article", "label"=>"contentList", "class_id"=>2, "expand_id"=>3, "sub"=>true, "limit"=>15, "order"=>"time asc"));  if(is_array($listList)) foreach($listList as $list){ ?>
        <?php if ( $contentInfo['title'] ==  $list['title']   ){ ?>
        <dl class="am-accordion-item am-active">
            <dt class="am-accordion-title"><a href="<?php echo $list["aurl"];?>"><?php echo $list["title"];?> <span class="plus">+</span><span class="minus">-</span></a></dt>
            <dd class="am-accordion-content am-collapse am-in">
                <ul class="am-avg-sm-2">
                    <li>
                        <div data-am-widget="slider" class="am-slider am-slider-c2" data-am-slider='{"directionNav":false}'>
                            <ul class="am-slides">
                                <?php foreach($contentInfo["productImgSlide"] as $val): ?>
                                <li>
                                    <img class="am-img-responsive" src="<?php echo $val['url']?>" alt="<?php echo $val['title']?>" />
                                </li>
                                <?php endforeach;?>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <p><?php echo $list["focus"];?></p>
                        <p>（<?php echo $list["blueFont"];?>）</p>
                    </li>
                </ul>

                <div class="am-text-xs am-margin-top-xs"><?php echo $list["content"];?></div>

                <h2 class="am-text-sm am-margin-vertical-xs list-title am-text-center">方案图纸</h2>

                <article class="img-gallery">
                    <?php if ( $contentInfo['papers'] ){ ?>
                    <?php foreach($contentInfo["papers"] as $val): ?>
                    <img class="am-img-responsive am-center" src="<?php echo $val['url']?>" alt="<?php echo $val['title']?>" />
                    <?php endforeach;?>
                    <?php }else{ ?>
                    <img class="am-img-responsive am-center" src="/assets/image/95.png" alt="内容更新中" />
                    <?php } ?>
                </article>
            </dd>
        </dl>
        <?php }else{ ?>
        <dl class="am-accordion-item">
            <dt class="am-accordion-title"><a href="<?php echo $list["aurl"];?>"><?php echo $list["title"];?> <span class="plus">+</span><span class="minus">-</span></a></dt>
            <dd class="am-accordion-content am-collapse ">
                <ul class="am-avg-sm-2">
                    <li><img src="<?php echo $list["image"];?>" alt="<?php echo $contentInfo["title"];?>" class="am-img-responsive" /></li>
                    <li>
                        <p><?php echo $list["focus"];?></p>
                        <p>（<?php echo $list["blueFont"];?>）</p>
                    </li>
                </ul>

                <div class="am-text-xs am-margin-top-xs"><?php echo $list["content"];?></div>

                <h2 class="am-text-sm am-margin-vertical-xs list-title am-text-center">方案图纸</h2>

                <article class="img-gallery">
                    <?php foreach($list["papers"] as $val): ?>

                    <img class="am-img-responsive am-center am-margin-bottom-sm" src="<?php echo $val['url']?>" alt="<?php echo $val['title']?>" />

                    <?php endforeach;?>
                </article>
            </dd>
        </dl>
        <?php } ?>
        <?php } ?>
    </section>

</div>

<?php $__Template->display("themes/mobile/footer"); ?>";s:12:"compile_time";i:1560251380;}";