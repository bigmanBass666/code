const herbData = [
    {
        name: '三叉苦',
        pic: ' https://pic.pingguolv.com/uploads/allimg/161213/109-1612131A626.jpg ',
        address: '云浮市现种植3.12万亩，主要分布在云浮市云城区前锋镇崖楼村(三九银田南药园),16个种植基地，几乎都是由《华润三九医药股份有限公司》与基地合作实施。',
        lng: 112.14581, lat: 22.816297,
        information: "具清热解毒、	祛风除湿的功效。治疗咽喉肿痛、风湿骨痛、疟疾、黄疸等症。为“999感冒灵”的主要原料药材之一 "
    },
    {
        name: '肉桂',
        pic: ' https://img.ys991.com/uploads/allimg/20190610/1560178357104997.jpg',
        address: ' 云浮罗定市榃滨镇',
        lng: 111.405776,
        lat: 22.820907,
        information: "补火补火助阳，引火归元，散寒止痛，温通经脉。用于阳痿宫冷，腰膝冷痛，肾虚作喘，虚阳上浮，眩晕目赤，心腹冷痛，虚寒吐泻，寒疝腹痛，痛经经闭。"
    },
    {
        name: '岗梅',
        pic: "https://i.zyccst.com/upload/upay/926566/2/E5B297E6A285E6A0B9352E6A7067.jpg",
        address: ' 云浮市云安区石城镇',
        lng: 111.95190, lat: 22.74840,
        information: "清热解毒，生津止渴。用于感冒，高热烦渴，扁桃体炎，咽喉炎，气管炎，百日咳，肠炎，痢疾，传染性肝炎，野蕈、砒霜中毒。为凉茶主要原料；叶外用治跌打损伤，痈疖肿毒。"
    },
    {
        name: '两面针',
        pic: "https://i.zyccst.com/upload/upay/926566/2/E4B8A4E99DA2E99288312E6A7067.jpg",
        address: '云浮市云城区',
        lng: 112.03, lat: 22.93,
        information: "活血化瘀，行气止痛，祛风通络，解毒消肿。用于跌扑损伤，胃痛，牙痛，风湿痹痛，毒蛇咬伤；外治烧烫伤。"
    },
    {
        name: '金针花', pic: 'https://ts1.cn.mm.bing.net/th/id/R-C.bd2c3d7ecebb7b73b5227321d9da1b55?rik=15X%2f8IX7a58H%2bw&riu=http%3a%2f%2fimg.mm4000.com%2ffile%2fb%2f84%2ff6ab040f27.jpg&ehk=iI7j%2bC6PQMqqcCqBb2L5N7zeVcINKQH6bsk2pi5J%2b9Q%3d&risl=&pid=ImgRaw&r=0',
        address: '广东云浮中医药职业学院教学楼',
        lng: 112.200088, lat: 22.67505,
        information: "金针花又名黄花菜、金针菜、萱草等，金针花性甘、凉，归心、肝、小肠等经。金针花的功效与作用主要有清热利湿、除烦安神、止血、消炎、消食、明目、安神等功效。对吐血、大便带血、小便不通、失眠、乳汁不下等症状均有一定的功效。金针花可以作为病后或者产后的调补食品。金针花功效比较强大，营养价值很高，可以作为常用的食疗药材。"
    },
    {
        name: '桔梗', pic: 'https://www.lvbad.com/uploads/allimg/2003/0T6343307-8.jpg',
        address: '广东云浮中医药职业学院教学楼',
        lng: 112.200097, lat: 22.674875,
        information: "宣肺祛痰、利咽排脓。属化痰止咳平喘药下分类的清化热痰药。"
    },
    {
        name: '香茅', pic: 'https://ts1.cn.mm.bing.net/th/id/R-C.bcba27aebe4ed8ba98f395bb8e8ac673?rik=WrlBMDAd4bEGfQ&riu=http%3a%2f%2fmysunbio.com%2fupLoad%2fimage%2f20150807%2f14389092832899091.jpg&ehk=Dnh5DyFUb1PIfxSMxilI1rj58zL7UaHcYmeryaz9vVE%3d&risl=&pid=ImgRaw&r=0',
        address: '广东云浮中医药职业学院教学楼',
        lng: 112.200124, lat: 22.674721,
        information: "禾本科、香茅属的约55种芳香性植物的统称,亦称为香茅草,为常见的香草之一。因有柠檬香气，故又被称为柠檬草。治疗风湿效果颇佳，治疗偏头痛,抗感染，改善消化功能,除臭、驱虫。抗感染,收敛肌肤,调理油腻不洁皮肤。赋予清新感，恢复身心平衡。"
    },
    {
        name: '活血丹',
        pic: 'https://ts1.cn.mm.bing.net/th/id/R-C.70cbc8fd3f07c442359b554030ce97ea?rik=Ocpt4HUvasTCFA&riu=http%3a%2f%2fwww.civilcn.com%2fd%2ffile%2fzhishi%2fyljg%2f2013-05-27%2f7c9728c56771ad5917952afb173d7b8a.jpg&ehk=mLk1hip5vBWGwnrJdfZTaQYJXVyvv7ImUPHVHpXXmIA%3d&risl=&pid=ImgRaw&r=0',
        address: '广东云浮中医药职业学院基础楼',
        lng: 112.199616, lat: 22.67365,
        information: "其味辛,性凉，即可口服,又可外用，具有利湿通淋、清热解毒、散瘀消肿等功效。"
    },
    {
        name: '黄精',
        pic: "https://img14.360buyimg.com/n0/jfs/t1/22865/32/19748/71336/638f281cE08dcbbc6/fb03a3a29bccc18e.jpg",
        address: '云安区、新兴县和郁南县的山林地带',
        lng: 111.940791, lat: 23.122835,
        information: "养阴润燥、止咳化痰、滋补肝肾等。黄精富含黄精甙、黄精内酯、黄精素等多种成分，具有补虚止汗、滋阴润燥、润肺化痰等作用，可用于治疗肺虚咳嗽、痨病、自汗盗汗、脱发等症状。"
    },
    {
        name: '珍珠母',
        pic: "https://www.yt1998.com/attached/image/20170714/20170714074113_725.jpg",
        address: '罗定市和云安区的山地和林带中',
        lng: 111.950791, lat: 23.122835,
        information: "清热解毒、镇静安神、润肺化痰等。珍珠母富含碳酸钙、鞣质等成分，具有清热解毒、镇定安神、润肺化痰等作用，可用于治疗发热、痰多、咳嗽、失眠、焦虑等症状"
    },

    {
        name: '金银花',
        pic: "https://www.penzai.com/uploads/img/202006/16/1592319313657732.jpg",
        address: '云安、新兴和罗定等县市',
        lng: 111.949282, lat: 23.079437,
        information: "清热去火、解毒消肿、抗菌消炎等。金银花富含黄酮类、糖类、挥发油等成分，具有清热解毒、抗病毒、降血压、抗过敏等作用，可用于治疗感冒、麻疹、痘痘、疮疖等症状。"
    },

    {
        name: '灵芝',
        pic: "https://img.huabaike.com/tukuimgs/168/DSCF5543.jpg",
        address: '云安区的山地和林带中',
        lng: 111.862464, lat: 23.073717,
        information: "增强免疫力、抗肿瘤、调节代谢等。灵芝富含多糖、三萜类化合物、脂肪等成分，具有抗肿瘤、增强免疫力、降低血脂、调节代谢等作用，可用于治疗癌症、肝炎、高血压等症状。"
    },


    {
        name: '紫金草',
        pic: "https://photo.tuchong.com/1206372/f/13904145.jpg",
        address: '云浮市新兴县山天露山',
        lng: 112.229568, lat: 22.494994,
        information: "被广泛应用于中医领域，并获得了很好的疗效。其他功效还包括：清热解毒，利尿通淋，解毒消肿，止咳化痰等。"
    },

    {
        name: '丹参',
        pic: "https://cbu01.alicdn.com/img/ibank/2017/759/821/4855128957_2064642299.jpg",
        address: '广东省云浮市新兴县',
        lng: 112.214, lat: 22.708,
        information: "活血化瘀，清热解毒，消肿止痛"
    },

    {
        name: '五味子',
        pic: "https://p1.ssl.qhimg.com/t01a2fde2dca9797071.jpg",
        address: '广东省云浮市郁南县',
        lng: 111.534, lat: 23.235,
        information: "固肾止泻，润肺止咳，安神益智"
    },

    {
        name: '首乌',
        pic: "https://pic.quanjing.com/td/js/QJ9125786839.jpg",
        address: '广东省云浮市云安区',
        lng: 111.877, lat: 23.078,
        information: "补血益肾，黑发乌须，润肠通便"
    },

    {
        name: '牛大力',
        pic: "https://imgserver.zyctd.com/Images/2020/12/16/21/11/12c57f7dd9814353b3e612bb0f2e9336.jpg",
        address: '云浮市云城区腰古镇牛头塱村（小阳农业牛大力标准化种植基地）',
        lng: 112.248566, lat: 22.888639,
        information: "<br>1.润肺养肾</br>" +
            "牛大力有平肝、润肺，养肾补虚，强筋活络之功效，主治肾虚，气虚，腰酸腿痛、风湿病、慢性肝炎、支气管炎，咳嗽，肺结核等有很好的疗效。</br>" +
            "2.清热解毒</br>" +
            "此外，牛大力有助清热解毒的功效吃煎炸食物过多，通晓熬夜，用牛大力煲汤，有消肿解毒、改善便秘的功效。</br>" +
            "3.改善便秘</br>" +
            "牛大力除拥有独特香气外，还含有丰富食物纤维，有助改善便秘，牛大力甘平，有补虚润肺、强筋活络的功用"
    },
    {
        name: "川贝",
        address: "广东省云浮市罗定市", pic: "https://pic.ntimg.cn/file/20190601/18422185_111457166084_2.jpg",
        lng: 111.538261, lat: 22.772308,
        information: "川贝为石斛科植物贝母的根茎，具有润肺止咳、清热化痰、安神止嗽等功效，常用于治疗肺热咳嗽、肺燥咳嗽、口干咽痛等症状。"
    },
    {
        name: "天麻",
        address: "广东省云浮市罗定市",
        pic: "https://cbu01.alicdn.com/img/ibank/2017/669/996/4917699966_621055745.jpg  ",
        lng: 111.538261, lat: 22.772308,
        information: "天麻为兰科植物，具有益气补血、通络醒脑、平抑肝阳等功效，常用于治疗头痛眩晕、中风偏瘫、失眠多梦等症状。"
    },
    {
        name: "延胡索",
        address: "广东省云浮市新兴县中洞镇",
        pic: 'http://img.zyccst.com/upload/upay/779970/2/E5BBB6E883A1E7B4A2EFBC88E58583E883A1EFBC89E7BB9FE4B8AA5F30312E6A7067.jpg ',
        lng: 112.272499, lat: 22.97366,
        information: "延胡索为茜草科植物孪叶叶延胡索的干燥根及根茎，具有活血化瘀、祛风理气、暖宫调经等功效，常用于治疗痛经、经闭、产后瘀血等症状。"
    },
    {
        name: "炮姜",
        address: "广东省云浮市新兴县太平镇居委会",
        pic: "https://static.xjlz365.com/zhongcaoyao/img_context/20190719094350367.jpg  ",
        lng: 112.016518, lat: 22.780387,
        information:
            "炮姜为姜科植物姜的根茎，具有温胃止呕、回阳散寒、解毒除湿等功效，常用于治疗腹痛、寒热不适、中暑等症状。"
    },
    {
        name: "白术",
        address: "广东省云浮市罗定市",
        pic: "https://www.penzai.com/uploads/img/202006/22/thumb_336_224_1592809080282996.jpg  ",
        lng: 111.538261, lat: 22.772308,
        information: "白术为禾本科植物苍术的根茎，具有健脾胃、益气力、利水通便等功效，常用于治疗脾胃虚弱、腹胀、食欲不振、腹泻等症状。"
    },
    {
        name: "五倍子",
        address: "广东省云浮市罗定市",
        pic: "https://img.alicdn.com/tfscom/i4/1777394705/TB1zHuNlRfH8KJjy1XbXXbLdXXa_!!0-item_pic.jpg  ",
        lng: 111.538261, lat: 22.772308,
        information: "五倍子为植物为实形科植物五倍子的果实，具有止泻涩肠、收敛止血、益肝肾等功效，常用于治疗腹泻、遗尿、带下等症状。"
    },
    {
        name: "补骨脂",
        address: "广东省云浮市云浮区罗浮山多宝塔",
        pic: "https://ts1.cn.mm.bing.net/th/id/R-C.ed5dfb087d4b333c779a09ccf99265c7?rik=dPZh4RNOxe9V2w&riu=http%3a%2f%2fwww.meishijr.com%2fd%2fswfup%2f20190618%2f1560851310208.jpg&ehk=dS60bmCfQmnkpELfotp%2fhlOQoBJnFkCklUJS3Pi%2bI7o%3d&risl=&pid=ImgRaw&r=0",
        lng: 111.989939, lat: 23.079607, information: "补骨脂为桑科植物，具有温中散寒、止痛渗湿、化痰行气等功效，常用于治疗腰腿酸软、肠鸣泻利、咳喘、乳腺增生等症状。"
    }, {
        name: "龙胆草",
        address: "广东省云浮市新兴县赤坑镇滴水村",
        pic: "https://www.qnong.com.cn/uploadfile/2016/0302/20160302085349579.jpg",
        lng: 112.22488,
        lat: 22.77537,
        information: "龙胆草又称黄芩草，为马鞭草科龙胆属植物，具有清热解毒、活血化瘀、利胆通便等功效，常用于治疗湿热黄疸、痢疾、便秘等症状。"
    },
    {
        name: "巴戟天",
        pic: 'https://img.redocn.com/sheying/20150910/batianzhongyaocai_4947226.jpg',
        address: ' 广东云山巴戟药材有限公司（以下简称云山巴戟）位于云浮郁南县，公司致力于提供安全、优质、道地的中药材',
        lng: 111.547895, lat: 22.90855,
        information: "补肾阳，强筋骨，祛风湿。用于：阳痿遗精，宫冷不孕，月经不调，少腹冷痛，风湿痹痛，筋骨痿软"
    },
    {
        name: "当归", address: "广东省云浮市新兴县大坑镇湖坑村湖坑社区",
        pic: "https://img95.699pic.com/photo/50133/1811.jpg_wh860.jpg",
        lng: 112.19366, lat: 22.80269,
        information: "当归为芹科植物独活属的根部。具补血养血、调经止痛、润肠通便等功效，常用于治疗妇女月经不调、痛经、功能性子宫出血、贫血等症状。"
    },
    {
        name: "柴胡",
        address: "广东省云浮市罗定市",
        pic: "https://www.ziyimall.com/file_img/products/63/201804/10/20180410113013D2jWuv2Q.jpg",
        lng: 111.538261, lat: 22.772308,
        information: "柴胡为茜草科风毛菊属植物柴胡的根及地上部分，具有清热解毒、疏肝理气、抗炎抗过敏等功效，常用于治疗肝炎、黄疸、慢性结肠炎、胃炎等症状。"
    },
    {
        name: "石斛",
        address: "广东省云浮市罗定市荔川县",
        pic: "https://pic2.zhimg.com/v2-6a8be18f8631d6cee64c9ea3be3b3b19_r.jpg",
        lng: 111.032538, lat: 22.787898,
        information: "石斛生长于亚热带山地森林中的兰科植物，具有滋养阴液、清热解毒、润肺止咳等功效，常用于治疗肺热咳嗽、红肿疮毒、眼病、乳腺疾病等症状。"
    },
    {
        name: "黄芪",
        address: "广东省云浮市罗定市",
        pic: "https://www.ziyimall.com/file_img/products/63/201801/19/20180119143841Jhmlv8s9.jpg",
        lng: 111.538261, lat: 22.772308,
        information: "黄芪一般为豆科植物黄芪属黄芪的根茎，具有补气养血、益精填髓、提高机体免疫力等功效，常用于治疗气血虚弱、久病体弱、食欲不振、劳动后疲惫等症状。"
    },
    {
        name: "白芍",
        address: "广东省云浮市罗定市",
        pic: "https://cbu01.alicdn.com/img/ibank/2017/635/517/3785715536_1373589733.jpg",
        lng: 111.538261, lat: 22.772308,
        information: "白芍为蔷薇科植物芍药的根茎，具有活血化瘀、消炎止痛、镇痛安神等功效，常用于治疗月经不调、痛经、产后瘀血、损伤瘀血、失眠等症状。"
    },
    {
        name: "杜仲",
        address: "广东省云浮市罗定市",
        pic: "https://cbu01.alicdn.com/img/ibank/2018/674/457/9257754476_362277932.jpg",
        lng: 111.538261, lat: 22.772308,
        information: "杜仲为榆科胡杨属的常绿乔木，具有补肝肾、强筋骨、滋阴润燥等功效，常用于治疗肝肾不足、腰膝酸软、头晕目眩、高血压等症状。"
    },
    {
        name: "红花",
        address: "广东省云浮市云城区附城镇马石三村",
        pic: "https://img.zcool.cn/community/01485c5d402ac5a80120695cf98cbd.jpg@1280w_1l_2o_100sh.jpg",
        lng: 112.065663, lat: 23.113914,
        information: "红花为菊科一年生草本植物，具有活血祛瘀、化湿通经、止痛等功效，常用于治疗痛经、月经不调、乳腺炎、跌打损伤等症状。"
    },
    {
        name: "决明子",
        address: "广东省云浮市罗定市", pic: "https://www.penzai.com/uploads/img/202007/20/1595212198952667.jpg",
        lng: 111.538261, lat: 22.772308,
        information: "决明子为豆科经军草属的种子，具有明目、降血压、利尿等功效，常用于治疗眼病、高血压、病后水肿等症状。"
    },
    {
        name: "益母草",
        address: "广东省云浮市云安区六都镇上坪村",
        pic: "https://cdn.fanhonghua.net/uploads/2017/05/ymc2.png",
        lng: 111.937221, lat: 23.151994,
        information: "益母草为菊科草本植物，具有通经除热、收湿止痛、清肝明目等功效，常用于治疗妇科病、子宫颈炎、风湿病等症状。"
    }
]

var geolocation = new BMapGL.Geolocation();
var markerClick = 0
var mapPoints = herbData.map(function (data) {
    var point = new BMapGL.Point(data.lng, data.lat);
    var marker = new BMapGL.Marker(point);
    marker.setTitle(data.name)
    marker.addEventListener("click", function () {
        showInfo(data);
    },
        marker.addEventListener("dblclick", function () {
            map.centerAndZoom(point, 17.5);
        }));
    return marker;
});



// 地图初始化
var map = new BMapGL.Map("map");
map.centerAndZoom("云浮市", 10);
map.enableScrollWheelZoom(true);

// 添加比例尺控件
var scaleCtrl = new BMapGL.ScaleControl();
map.addControl(scaleCtrl);

// 铺满全屏
var mapContainer = document.getElementById("map");
var sideBar = document.getElementById("sideBar");
mapContainer.style.height = window.innerHeight + "px";
window.onresize = function () {
    mapContainer.style.height = window.innerHeight + "px";
}

// 启用地图双击缩放，左键双击放大、右键双击缩小
map.enableDoubleClickZoom(true)

// 启用键盘操作
map.enableKeyboard(true)



// 将标志点添加到地图上
for (let i = 0; i < mapPoints.length; i++) {
    map.addOverlay(mapPoints[i]);
}
showAllHerbName();



// Enter点击事件
function searchKeyPress(e) {
    // 如果按下了enter键，且输入框有内容，则触发搜索按钮的点击事件
    if (e.keyCode === 13) {
        document.getElementById("searchButton").click();
    }
}



// 地名搜索功能：根据用户输入的地址或名称进行搜索定位
function navSearch() {
    const searchInput = document.getElementById("searchInput");
    const query = searchInput.value;
    // 创建本地搜索对象
    var local = new BMapGL.LocalSearch(map, {
        renderOptions: { map: map }
    });
    // 开始搜索
    local.search(query);
    searchInput.value = ""
}



// 搜索功能
const searchInput = document.getElementById("searchInput");
const searchButton = document.getElementById("searchButton");
searchButton.addEventListener("click", () => {
    const query = searchInput.value;
    const index = findHerbData(query);
    //搜索-展示中药详情
    if (index !== -1) {
        searchInput.value = ""
        showInfo(herbData[index]);
        {//缩放该药位置
            const point = new BMapGL.Point(herbData[index].lng, herbData[index].lat);
            map.flyTo(point, 17.5)
        }
    } else if (query !== "" && index === -1) {
        //搜地名
        navSearch()
    }
});



// 查找中药，存在返回索引
function findHerbData(query) {
    for (let index = 0; index < herbData.length; index++) {
        if (herbData[index].name === query) {
            return index;
        }
    }
    return -1;
}

let search = document.getElementById('search');
searchButton.addEventListener('mouseenter', () => {
    search.style.left = 'calc(40.5% - 207.5px)';
    searchInput.style.width = '310px';
})

searchButton.addEventListener('mouseleave', () => {
    search.style.left = 'calc(40.5% - 50px)';
    searchInput.style.width = '0';
})

searchInput.addEventListener('mouseenter', () => {
    search.style.left = 'calc(40.5% - 207.5px)';
    searchInput.style.width = '310px';
})

searchInput.addEventListener('mouseleave', () => {
    search.style.left = 'calc(40.5% - 50px)';
    searchInput.style.width = '0';
})

bt.addEventListener('mouseenter', () => {
    // search.style.left = 'calc(40.5% - 207.5px)';
    // searchInput.style.width = '310px';
})

bt.addEventListener('mouseleave', () => {
    // search.style.left = 'calc(40.5% - 50px)';
    // searchInput.style.width = '0';
})


//导航栏
function showAllHerbName() {
    // 导航按钮功能
    let array = herbData.map(herb => herb.name);
    let listContainer = document.getElementById("list-container");
    let itemsPerPage = 14;
    let clickTimes = 0

    function showItems(pageNum) {
        let startIndex = (pageNum - 1) * itemsPerPage;
        let endIndex = startIndex + itemsPerPage;
        let itemsToShow = array.slice(startIndex, endIndex);
        listContainer.innerHTML = "";

        itemsToShow.forEach(name => {
            let item = document.createElement("div");
            listContainer.appendChild(item);
            let btn = document.createElement("button");
            btn.innerHTML = name;
            btn.onclick = function () {
                clickTimes++
                let herb = herbData.find(h => h.name === name);
                let point = new BMapGL.Point(herb.lng, herb.lat);
                map.flyTo(point, 17.5)  // 飞行
                showInfo(herb);
            }
            item.appendChild(btn);
            btn.setAttribute('title', '点击查看信息')
        })
        // 导航按钮功能


        // 云浮南药样式
        const style = document.createElement('style');
        if (pageNum === 1) {
            style.innerHTML = `
            #list-container div:nth-child(-n+4) {
                border-left: 3px solid #0072c9;
                border-right: 2px solid #0072c9;
            }

            #list-container div:first-child {
                border-top: 2px solid #0072c9;
            }

            #list-container div:nth-child(4) {
                border-bottom: 2px solid #0072c9;
            }

            #list-container div:nth-child(4) button {
                margin-bottom: 0;
            }

            #list-container div:nth-child(5) {
                margin-top: 5px;
            }`;
            // title
            const btnElements = listContainer.getElementsByTagName('button')
            for (let i = 0; i < 4; i++) {
                const btn_ = btnElements[i];
                btn_.setAttribute('title', '云浮四大南药');
            };
        } else {
            style.innerHTML = `
            #list-container div:nth-child(-n+4) {
                border: none;
            }

            #list-container div:first-child {
                border: none;
            }

            #list-container div:nth-child(4) {
                border: none;
            }

            #list-container div:nth-child(4) button {
                margin-bottom: 5px;
            }

            #list-container div:nth-child(5) {
                margin-top: 0;
            }`;
        }
        document.head.appendChild(style);
        // 云浮南药样式
    }


    // 翻页按钮
    let pageNum = 1;
    showItems(pageNum);

    let nextPage = document.createElement("button");
    let back = document.createElement("button");

    nextPage.innerHTML = "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"20\" height=\"20\" fill=\"currentColor\" class=\"bi bi-caret-right-fill\" viewBox=\"0 0 16 16\">\n" + "<path d=\"m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z\"/>\n" + "</svg>";
    back.innerHTML = "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"20\" height=\"20\" fill=\"currentColor\" class=\"bi bi-caret-left-fill\" viewBox=\"0 0 16 16\">\n" + "<path d=\"m3.86 8.753 5.482 4.796c.646.566 1.658.106 1.658-.753V3.204a1 1 0 0 0-1.659-.753l-5.48 4.796a1 1 0 0 0 0 1.506z\"/>\n" + "</svg>";

    let herbNum = herbData.length
    let totalPages = Math.ceil(herbNum / itemsPerPage)

    function appendButton() {
        back.id = "back";
        back.className = "pageTurner"

        nextPage.id = "nextPage";
        nextPage.className = "pageTurner"

        back.title = '上一页'
        nextPage.title = '下一页'

        listContainer.appendChild(back);
        listContainer.appendChild(nextPage);
    }

    function beInvalid(pageTurner) {
        pageTurner.disabled = true;
        pageTurner.style.cursor = 'not-allowed'
        pageTurner.title = ''
    }

    function beValid(pageTurner) {
        pageTurner.disabled = false;
        pageTurner.style.cursor = 'pointer'
    }

    function judge() {
        if (pageNum === 1) {
            appendButton()
            beInvalid(back)
        } else if (pageNum === totalPages) {
            appendButton()
            beInvalid(nextPage)
        } else {
            appendButton()
            beValid(back)
            beValid(nextPage)
        }
    }

    back.onclick = function () {
        pageNum--;
        showItems(pageNum);
        judge()
    }

    nextPage.onclick = function () {
        pageNum++;
        showItems(pageNum);
        judge()
    }

    appendButton()
    beInvalid(back)
    // 翻页按钮
}



// 展示中草药详细信息
function showInfo(data) {
    document.getElementById("herbInfo").innerHTML = `
    <h2><span>【中药名】</span>${data.name}</h2>
    <img src=${data.pic}>
    <h3><span>【产地】</span>${data.address}</h3>
    <p><span>【主要功效】</span>${data.information}</p >`;
}



// 创建定位控件
var locationControl = new BMapGL.LocationControl({
    // 控件的停靠位置（可选，默认左下）
    anchor: BMAP_ANCHOR_TOP_LEFT,
    // 控件基于停靠位置的偏移量（可选）
    offset: new BMapGL.Size(20, 20)
});
// 将控件添加到地图上
map.addControl(locationControl);



// 3D控件
var navi3DCtrl = new BMapGL.NavigationControl3D({
    anchor: BMAP_ANCHOR_TOP_RIGHT,
    offset: new BMapGL.Size(20, 20)
});
map.addControl(navi3DCtrl);



// 添加比例尺控件
var scaleCtrl = new BMapGL.ScaleControl({
    anchor: BMAP_ANCHOR_BOTTOM_RIGHT,
    offset: new BMapGL.Size(25, 25)
});
map.addControl(scaleCtrl);



// 右键菜单：切换地图类型
var menu = new BMapGL.ContextMenu();
var txtMenuItem = [
    {
        text: '标准地图',
        callback: function () {
            map.setMapType(BMAP_NORMAL_MAP);
        }
    }, {
        text: '普通卫星图',
        callback: function () {
            map.setMapType(BMAP_SATELLITE_MAP);
        }
    }, {
        text: '地球模式',
        callback: function () {
            map.setMapType(BMAP_EARTH_MAP);
            alert("请注意，“地球模式”下能支持的地图交互操作有限，如您需要“卫星地图”支持和“标准地图”一致的交互体验，请使用“普通卫星图”模式")
        }
    },
];
for (var i = 0; i < txtMenuItem.length; i++) {
    menu.addItem(new BMapGL.MenuItem(txtMenuItem[i].text, txtMenuItem[i].callback, 100));
}
map.addContextMenu(menu);



// Function prompt
const tips = document.getElementById('tips');  // prompt按钮

const svg = document.getElementById('svg')
const path1 = document.getElementById('path1')
const path2 = document.getElementById('path2')

const popup = document.createElement('div');  // prompt框

popup.innerHTML = `
<h3>【更多功能】</h3>
<p>右键：切换地图类型</p>
<p>右键长按：调整地图倾斜角度</p>
<p>左、右键双击：控制地图缩放比例</p>
<p>单击标志点：查看草药信息</p>
<p>双击标志点：定位到生长地</p>
<p>地图支持键盘方向键操作</p>
<div id="QR">
<img src="./img/二维码.jpg" alt="">
<p>微信扫描二维码，关注我们的公众号</p>
</div>
<button id="QRbtn">联系我们</button>`;
popup.classList.add('popup');
document.body.appendChild(popup);


let QRbtn = document.getElementById('QRbtn');  // button联系我们
let QR = document.getElementById('QR');  // 二维码图文区域

QRbtn.title = '公众号名称：探寻中草药足迹：微信号：txzcyzj'

// 二维码显示
QRbtn.addEventListener('mouseenter', () => {
    QR.style.opacity = '1';
    // QR.style.display = 'block';
    QRbtn.innerHTML = '了解更多'
})

QRbtn.addEventListener('mouseleave', () => {
    QR.style.opacity = '0';
    QRbtn.innerHTML = '联系我们'
})
// 二维码显示

// button了解更多
QRbtn.addEventListener('click', () => {
    window.open('https://mp.weixin.qq.com/s?__biz=MzkzNTUwNjY3NA==&mid=2247483697&idx=1&sn=c5f00288af948b22a902d1525ff899dd&chksm=c2ada6acf5da2fbab0bc3aa48711cb01ed4ba5bb47857a5460a253175b6f37461c125dd0b1b5#rd', '_blank');
})
// button了解更多


// prompt框显示
tips.addEventListener('click', () => {
    popup.style.pointerEvents = 'auto';
    popup.style.opacity = '1';
});

document.addEventListener('click', (e) => {
    if (e.target !== tips && e.target !== svg && e.target !== path1 && e.target !== path2 && e.target !== QRbtn) {
        popup.style.pointerEvents = 'none';
        popup.style.opacity = '0';
    }
});
// prompt框显示



// Theme switcher
const style = document.createElement('style');
let bt = document.getElementById('changeNightDaytime');
let mode = 'day';
bt.addEventListener('click', () => {
    if (mode == 'day') {
        //切换为昼
        mode = 'night';
        bt.title = "切换浅色模式"
        // bt.innerHTML = "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"30\" height=\"30\" fill=\"currentColor\"\n" + "class=\"bi bi-brightness-high-fill\" viewBox=\"0 0 16 16\">\n" + "<path d=\"M12 8a4 4 0 1 1-8 0 4 4 0 0 1 8 0zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z\"/>\n" + "</svg>"
        bt.innerHTML = `<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-moon" viewBox="0 0 16 16">
        <path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278zM4.858 1.311A7.269 7.269 0 0 0 1.025 7.71c0 4.02 3.279 7.276 7.319 7.276a7.316 7.316 0 0 0 5.205-2.162c-.337.042-.68.063-1.029.063-4.61 0-8.343-3.714-8.343-8.29 0-1.167.242-2.278.681-3.286z"/></svg>`
        map.setMapStyleV2({
            styleId: '0a80a81e2596c3af3a3476351d1fa68d'
        });
    } else if (mode == 'night') {
        //切换为夜
        mode = 'day';
        bt.title = "切换深色模式"
        bt.innerHTML = `<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-brightness-high" viewBox="0 0 16 16">
        <path d="M8 11a3 3 0 1 1 0-6 3 3 0 0 1 0 6zm0 1a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/></svg>`
        map.setMapStyleV2({
            styleId: '0'
        });
    }
})