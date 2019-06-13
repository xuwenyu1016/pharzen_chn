<?php exit;?>001590126852c23fb4147bbf884b88facd1513074672s:4166:"a:2:{s:8:"template";s:4102:"<?php $__Template->display("themes/default/header"); ?>

<img src="assets/image/72.png" class="am-img-responsive am-center" alt="<?php echo $categoryInfo["name"];?>" />

<div class="firm-intro am-padding-top-xl corperate">
    <div class="am-container">
        <p class="am-margin-vertical-sm am-text-sm am-link-muted"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?>&gt;<a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?></p>

        <div class="title-block">
            <p><span>business corporation</span><span>公司简介</span></p>
        </div>

        <article>
           <ul class="am-avg-sm-2">
               <li>
                   <div style="width:500px;height:300px;border:#ccc solid 1px;font-size:12px" id="map"></div>
               </li>
               <li>
                   <h2>looking forward to corporate with you</h2>

                   <div class="am-margin-top-lg">
                       <p class="am-margin-vertical-xs">邮箱：pharzen@pharzen.com</p>
                       <p class="am-margin-vertical-xs">客服电话：<a href="tel:021-52217320">021-52217320</a></p>
                       <p class="am-margin-vertical-xs">企业QQ：1722525793</p>
                       <p class="am-margin-vertical-xs">地址：上海市闵行区沧源路1200号</p>
                   </div>

               </li>
           </ul>
        </article>

    </div>
    <img src="assets/image/4.png" class="am-img-responsive am-center bottom-image" alt="<?php echo $categoryInfo["name"];?>">
</div>

<?php $__Template->display("themes/default/footer"); ?>
<script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&ak=2ab9a8e5f4c7f4b99d508d3d0025b954"></script>

<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMapOverlay();//向地图添加覆盖物
    }
    function createMap(){
        map = new BMap.Map("map");
        map.centerAndZoom(new BMap.Point(121.430734,31.030432),18);
    }
    function setMapEvent(){
        map.enableKeyboard();
        map.enableDragging();
        map.enableDoubleClickZoom()
    }
    function addClickHandler(target,window){
        target.addEventListener("click",function(){
            target.openInfoWindow(window);
        });
    }
    function addMapOverlay(){
        var markers = [
            {content:"上海市闵行区沧源路1200号",title:"法尔森",imageOffset: {width:-46,height:-21},position:{lat:31.030401,lng:121.430725}}
        ];
        for(var index = 0; index < markers.length; index++ ){
            var point = new BMap.Point(markers[index].position.lng,markers[index].position.lat);
            var marker = new BMap.Marker(point,{icon:new BMap.Icon("http://api.map.baidu.com/lbsapi/createmap/images/icon.png",new BMap.Size(20,25),{
                    imageOffset: new BMap.Size(markers[index].imageOffset.width,markers[index].imageOffset.height)
                })});
            var label = new BMap.Label(markers[index].title,{offset: new BMap.Size(25,5)});
            var opts = {
                width: 200,
                title: markers[index].title,
                enableMessage: false
            };
            var infoWindow = new BMap.InfoWindow(markers[index].content,opts);
            marker.setLabel(label);
            addClickHandler(marker,infoWindow);
            map.addOverlay(marker);
        };
    }
    //向地图添加控件
    function addMapControl(){
        var scaleControl = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
        scaleControl.setUnit(BMAP_UNIT_IMPERIAL);
        map.addControl(scaleControl);
        var navControl = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:1});
        map.addControl(navControl);
        var overviewControl = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:false});
        map.addControl(overviewControl);
    }
    var map;
    initMap();
</script>";s:12:"compile_time";i:1558590852;}";