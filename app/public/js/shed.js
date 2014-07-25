var __shed = __shed || {};

__shed.comboData = {
    mates : [{
        type : "Guan", value : "RDC", text : "热镀锌"
    }, {
        type : "Guan", value : "PT", text : "普通"
    }, {
        type : "Ban", value : "LZB", text : "冷扎板"
    }, {
        type : "GangJin", value : "Q235", text : "Q235"
    }, {
        type : "Ban", value : "0.5DC", text : "0.5镀锌"
    }, {
        type : "KaHuang", value : "浸塑", text : "浸塑"
    }, {
        type : "LouDou", value : "PVC", text : "PVC"
    }, {
        type : "Ban", value : "1.0DC", text : "1.0镀锌"
    }, {
        type : "Jia", value : "PE", text : "PE"
    }, {
        type : "", value : "4.8Ji", text : "4.8级"
    }, {
        type : "", value : "PTM", text : "普通膜"
    }],

    isBase : [{
        value : 1, text : "是"
    },{
        value : 0, text : "否"
    }],

    projState : [{
        value : "000", text : "未计算"
    },{
        value : "001", text : "已完成"
    }],

    shedState : [{
        value : "000", text : "未计算"
    },{
        value : "001", text : "已完成"
    },{
        value : "999", text : "失败"
    }]
};

//+++++++++++++++comp相关 开始+++++++++++++++++
//初始化创建零件的form
__shed.initCompFrm_c = function(){
    $frm = $(this);
    //显示子零件列表的按键需要删除
    var $field = tt.getFieldByForm($frm, "children");
    $field.remove();
}
//当是否是基础零件进行切换时，需要对children进行显示和隐藏的切换
__shed.onIsBaseChanged = function(){
    var $combobox = $(this);
    var isBase = $combobox.combobox("getValue");
    var $btn = $combobox.parents("table").find(".inputbtn_children");
    if(isBase == 1){
        $btn.hide()
    }else{
        $btn.show();
    }
}

//显示子零件列表
__shed.showCompChildren = function(pvlCode, tblId){
    var $dlg = tt.getDlgByPvlCode(pvlCode, tblId);
    var $tbl = $(tblId);
    var data = $tbl.datagrid("getSelected");
    if(!data) return tt.showWarn("请先选择需要查看的数据！");
    if(data.isBase) return tt.showInfo("基础零件没有子零件！");

    var $targetTbl = $dlg.find(".easyui-datagrid");
    var url = $targetTbl.attr("queryUrl");
    $targetTbl.datagrid({
        url : url,
        queryParams : {parentId : data.id}
    });
//    var $frm = tt.getFrmInDlg($dlg);
//    $frm.form("load", data);
//    $frm.find("input").attr("readonly", "readonly");
//    $frm.find("textarea").attr("readonly", "readonly");
//    $frm.find(".easyui-combobox").combobox({readonly : true});
    $dlg.dialog("open");
};

//+++++++++++++++comp相关 结束+++++++++++++++++



__shed.initCompFrm = function(){
    var $dlg = $(this);
    var $frm = $dlg.find("form");
    var isBase = $frm.find("input[name=isBase]").val();
    var $btn = $frm.find(".inputbtn_children");
    if(isBase == 1){
        $btn.hide()
    }else{
        $btn.show();
    }
}

__shed.initCompChildren = function(){

}
