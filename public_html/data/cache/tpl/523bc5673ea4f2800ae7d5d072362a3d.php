<?php exit;?>0015918715747cd03baa17ffea29e35bd6da4e7f427cs:16708:"a:2:{s:8:"template";s:16643:"<?php $__Template->display("themes/default/header"); ?>

<div data-am-widget="slider" class="am-slider am-slider-b1 index-slider" data-am-slider='{"controlNav":false}' role="banner">
    <ul class="am-slides">
        <li>
            <a href="/page-gongsijianjie.html">
                <img src="/assets/image/2.png" alt="" />
            </a>
        </li>
        <li>
            <a href="/page-gongsijianjie.html">
                <img src="/assets/image/2.png" alt="" />
            </a>
        </li>
    </ul>
</div>

<div class="index-construction am-padding-vertical-xl">
    <div class="am-container">
        <div class="title-block">
            <p><span>epc</span><span>工程总包</span></p>
            <a href="/article/yuanliaoyaoshengchanxianshejiy.html">MORE</a>
        </div>

        <div data-am-widget="slider" class="am-slider am-slider-b3" data-am-slider='{"controlNav":false}'>
            <ul class="am-slides">

                <li>
                    <ul class="am-avg-sm-3">
                        <?php $listList = service("article","Label","contentList",array( "app"=>"Article", "label"=>"contentList", "class_id"=>2, "sub"=>true, "expand_id"=>3, "limit"=>10, "order"=>"time asc" , "not_id"=>"6,7,8"));  if(is_array($listList)) foreach($listList as $list){ ?>
                        <li>
                            <article>
                                <a href="<?php echo $list["aurl"];?>">
                                    <div><img src="<?php echo $list["image"];?>" class="am-img-responsive am-center" alt="<?php echo $list["title"];?>" /></div>
                                    <div>
                                        <p><?php echo $list["title"];?></p>
                                        <p class="am-text-sm"><?php echo $list["description"];?></p>
                                        <span>查看详情</span>
                                    </div>
                                </a>
                            </article>
                        </li>
                        <?php } ?>
                    </ul>

                </li>
                <li>
                    <ul class="am-avg-sm-3">
                        <?php $listList = service("article","Label","contentList",array( "app"=>"Article", "label"=>"contentList", "class_id"=>2, "sub"=>true, "expand_id"=>3, "limit"=>10, "order"=>"time asc" , "not_id"=>"3,4,5"));  if(is_array($listList)) foreach($listList as $list){ ?>
                        <li>
                            <article>
                                <a href="<?php echo $list["aurl"];?>">
                                    <div><img src="<?php echo $list["image"];?>" class="am-img-responsive am-center" alt="<?php echo $list["title"];?>" /></div>
                                    <div>
                                        <p><?php echo $list["title"];?></p>
                                        <p class="am-text-sm"><?php echo $list["description"];?></p>
                                        <span>查看详情</span>
                                    </div>
                                </a>
                            </article>
                        </li>
                        <?php } ?>
                    </ul>

                </li>
            </ul>
        </div>

    </div>
</div>

<div class="index-system am-padding-vertical-xl">
    <div class="am-container">
        <div class="title-block">
            <p><span>system equipment</span><span>系统设备</span></p>
            <a href="/article/zhongshichengtaozhuangbei.html">MORE</a>
        </div>

        <section class="am-margin-top-lg">
            <article>
                <a href="/article/zhongshichengtaozhuangbei.html">
                    <div>
                        <p>系统设备</p>
                        <p>system device</p>
                        <p>为原料药企业提供成套设备和集成装置的机械设计、三维设计、系统开发与集成，提供定制化、模块化的设计、制造、装配和运行调试服务。</p>
                        <span>MORE</span>
                    </div>
                </a>
            </article>
            <article>
                <ul class="am-avg-sm-3">
                    <li>
                        <div>
                            <img src="/assets/image/15.png" class="am-img-responsive am-center" alt="机械设备" />
                            <p class="am-text-center">机械设备</p>
                            <p class="am-text-center">mechanical design</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <img src="/assets/image/14.png" class="am-img-responsive am-center" alt="机械设备" />
                        </div>
                    </li>
                    <li>
                        <div>
                            <img src="/assets/image/17.png" class="am-img-responsive am-center" alt="系统开发与集成" />
                            <p class="am-text-center">系统开发与集成</p>
                            <p class="am-text-center">system development <br/>& integration</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <img src="/assets/image/18.png" class="am-img-responsive am-center" alt="系统开发与集成" />
                        </div>
                    </li>
                    <li>
                        <div>
                            <img src="/assets/image/16.png" class="am-img-responsive am-center" alt="三维设计" />
                            <p class="am-text-center">三维设计</p>
                            <p class="am-text-center">3D Design</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <img src="/assets/image/19.png" class="am-img-responsive am-center" alt="三维设计" />
                        </div>
                    </li>
                </ul>
            </article>
        </section>
    </div>
</div>

<div class="index-tech am-padding-vertical-xl">
    <div class="am-container">
        <div class="title-block">
            <p><span>technical consultation</span><span>技术咨询</span></p>
            <a href="/article/kexingxingyanjiu.html">MORE</a>
        </div>

        <div data-am-widget="slider" class="am-slider am-slider-b3" data-am-slider='{"controlNav":false}' >
            <ul class="am-slides">
                <?php $listList = service("article","Label","contentList",array( "app"=>"Article", "label"=>"contentList", "class_id"=>9, "sub"=>true, "expand_id"=>3, "limit"=>10, "order"=>"time asc"));  if(is_array($listList)) foreach($listList as $list){ ?>
                <li>
                    <article>
                        <div>
                            <p><?php echo $list["title"];?>：</p>
                            <p><?php echo $list["description"];?></p>
                            <a href="<?php echo $list["aurl"];?>">查看详情</a>
                        </div>
                        <img src="<?php echo $list["imgUpload"];?>" class="am-img-responsive" alt="<?php echo $list["title"];?>" />
                    </article>
                </li>
                <?php } ?>
            </ul>
        </div>
    </div>
</div>

<div class="index-news am-padding-vertical-xl">
    <div class="am-container">
        <div class="title-block">
            <p><span>news</span><span>新闻资讯</span></p>

            <ul class="am-avg-sm-4">
                <li><a href="/list-xinwenzixun.html">全部</a></li>
                <li><a href="/xinwenzixun/select/newsCategory-1.html?class_id=1">公司新闻</a></li>
                <li><a href="/xinwenzixun/select/newsCategory-2.html?class_id=1">行业新闻</a></li>
                <li><a href="/xinwenzixun/select/newsCategory-3.html?class_id=1">技术专栏</a></li>
            </ul>
        </div>

        <ul class="am-avg-sm-2 am-margin-top-lg">
            <li class="am-padding-left-xs">
                <?php $listList = service("article","Label","contentList",array( "app"=>"Article", "label"=>"contentList", "class_id"=>1, "sub"=>true, "limit"=>1, "order"=>"time desc"));  if(is_array($listList)) foreach($listList as $list){ ?>
                <article>
                    <a href="<?php echo $list["aurl"];?>">
                        <div>
                            <img src="<?php echo $list["image"];?>" class="am-img-responsive am-center" alt="<?php echo $list["title"];?>" />
                        </div>

                        <div>
                            <p><time pubdate="pubdate" datetime="<?php echo date('Y-m-d H-i-s',$list["time"]);?>"><?php echo date('m-d',$list["time"]);?></time><time><?php echo date('Y',$list["time"]);?></time></p>

                            <div>
                                <p class="am-text-truncate"><?php echo $list["title"];?></p>
                                <p><?php echo $list["description"];?></p>
                            </div>
                        </div>
                    </a>
                </article>
                <?php } ?>
            </li>
            <li class="am-padding-right-xs">
                <!--第一个article隐藏-->

                <?php $listList = service("article","Label","contentList",array( "app"=>"Article", "label"=>"contentList", "class_id"=>1, "sub"=>true, "limit"=>5, "order"=>"time desc"));  if(is_array($listList)) foreach($listList as $list){ ?>
                <article>
                    <a href="<?php echo $list["aurl"];?>">
                        <div>
                            <p><time pubdate="pubdate" datetime="<?php echo date('Y-m-d H-i-s',$list["time"]);?>"><?php echo date('m-d',$list["time"]);?></time><time><?php echo date('Y',$list["time"]);?></time></p>

                            <div>
                                <p class="am-text-truncate"><?php echo $list["title"];?></p>
                                <p><?php echo $list["description"];?></p>
                            </div>
                        </div>
                    </a>
                </article>
                <?php } ?>

            </li>
        </ul>
    </div>
</div>

<div class="index-partners am-padding-vertical-xl">
    <div class="am-container">
        <div class="title-block">
            <p><span>partners</span><span>合作伙伴</span></p>
            <!--<a href="">MORE</a>-->
        </div>

        <ul class="am-avg-sm-8 am-margin-top-lg">

            <li>
                <article>
                    <img src="/assets/image/44.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/43.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/42.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/41.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/40.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/39.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/38.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/37.png" class="am-img-responsive am-center" />
                </article>
            </li>

            <li>
                <article>
                    <img src="/assets/image/29.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/30.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/31.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/32.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/33.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/34.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/35.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/36.png" class="am-img-responsive am-center" />
                </article>
            </li>

            <li>
                <article>
                    <img src="/assets/image/28.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/27.png" class="am-img-responsive am-center" />
                </article>
            </li>

            <li>
                <article>
                    <img src="/assets/image/26.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/25.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/24.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/23.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/22.png" class="am-img-responsive am-center" />
                </article>
            </li>
            <li>
                <article>
                    <img src="/assets/image/21.png" class="am-img-responsive am-center" />
                </article>
            </li>

        </ul>
    </div>
</div>

<div class="index-us">
    <div class="am-container">
        <section class="am-padding-sm">
            <ul class="am-avg-sm-2">
                <li>
                    <img src="/assets/image/3.png" class="am-img-responsive" alt="法尔森科技" />
                </li>
                <li>
                    <article>
                        <div>
                            <p class="am-text-center am-margin-vertical-sm">关于我们</p>
                            <p class="am-margin-vertical-xs am-text-sm">&emsp;&emsp;法尔森科技（上海）有限公司总部位于上海，由国内外专家和工程师团队联合创立，拥有雄厚的资金实力。法尔森是一家以先进科技和系统装备为核心的工程技术型企业，专业从事原料药建设项目的EPC工程总包、系统装备开发和模块化集成、技术咨询和项目管理、概念设计和方案设计。</p>
                            <p class="am-margin-vertical-xs am-text-sm">&emsp;&emsp;凭借专业实力及业内口碑，创始团队自公司成立之前至今已陆续为俄罗斯Pharmasyntez制药公司、康正康元药业、威尔曼制药、昆药集团等多家知名企业提供技术咨询和工程服务。</p>
                            <a href="/page-gongsijianjie.html">了解更多 >></a>
                        </div>
                    </article>
                </li>
            </ul>
        </section>
    </div>

    <img src="/assets/image/4.png" class="am-img-responsive am-center" alt="<?php echo $media["title"];?>" />
</div>

<?php $__Template->display("themes/default/footer"); ?>";s:12:"compile_time";i:1560335574;}";