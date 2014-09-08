var main = {

    /**
     * DESC:自动调整界面的尺寸。
     * @author zheng.xiaojun
     * @since 2012-08-28
     *
     */
    autoSize : function(){
        var mainHeight = document.documentElement.clientHeight - $("#mainTop").height() - 20;
        var mainWidth = document.body.clientWidth;
        mainHeight -= 10;
//        mainWidth -= 50;
        mainHeight = mainHeight < 500 ? 500 : mainHeight;
        mainWidth = mainWidth < 1000 ? 1000 : mainWidth;
        $('#mainContainer').css({"width" : mainWidth, "height" : mainHeight});
        $('#tabs').css({"width" : mainWidth, "height" : mainHeight});
//        $('#mainContainer').layout();
    },

    /**
     * DESC:添加tab页。
     * @author zheng.xiaojun
     * @since 2012-08-28
     *
     * @param {String} strTitle
     * 		tab的标题。
     * @param {String} strUrl
     * 		tab对应的url
     */
    addTab : function(strTitle, strUrl){
        if ($('#tabs').tabs('exists', strTitle)) {//tab已经存在。
            $('#tabs').tabs('select', strTitle);
            return;
        }
        //初始化iframe
        var iframe = document.createElement("iframe");
        var w = $('#tabs').css("width");
        var h = $('#tabs').css("height");
        if(w.indexOf("px")) w = parseInt(w.substring(0, w.indexOf("px")));
        if(h.indexOf("px")) h = parseInt(h.substring(0, h.indexOf("px")));
        iframe.width = w - 5;
        iframe.height = h - 50;
        iframe.scrolling = "auto";
        iframe.frameborder = 0;
        iframe.allowtransparency = false;
        iframe.src = strUrl;
        iframe.className = 's-iframe';
        //添加tab
        $("#tabs").tabs("add", {
            title : strTitle,
            content : iframe,
            closable : true
        });
    },
    init : function(){
        $('#tabs').tabs();
        main.autoSize();
        $(window).resize(function() {
            main.autoSize();
        });
//        this.addTab("首页", "http://www.baidu.com");
//    	this.addTab("首页", "view/Home.jsp");
    }
};

$(function(){
    $(".tt-menu").each(function(index, ttMenu){
        $(ttMenu).bind("click", function(){
            var $ttMenu = $(this);
            var url = $ttMenu.attr("url");
            var title = $ttMenu.html();
            var pvlCode = $ttMenu.attr("pvlCode");
            if(pvlCode.indexOf("pvl_") == 0) return tt.showMsg("权限模块暂未开放！");
            main.addTab(title, url);
        });
    });
    main.init();
});

