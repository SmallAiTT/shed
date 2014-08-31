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
        value : "000", text : "未完成"
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
//显示子零件列表
__shed.showCompChildren = function($tbBtn){
    var $tbBtn = $(this);
    var $tbl = tt.getTblByTBBtn($btn);//获取到datagrid对象
    var data = $tbl.datagrid("getSelected");
    if(!data) return tt.showWarn("请先选择需要查看的数据！");
    if(data.isBase) return tt.showInfo("基础零件没有子零件！");
    var pvlCode = $btn.attr("pvlCode");
    var $dlg = $("#dlg_" + pvlCode);

    var $targetTbl = $dlg.find(".easyui-datagrid");
    var url = $targetTbl.attr("queryUrl");
    $targetTbl.attr("params", JSON.stringify({parentId : data.id}));
    $targetTbl.datagrid({
        url : url,
        queryParams : {parentId : data.id}
    });
    $dlg.dialog("open");
};
__shed.onCheck4ChildrenFrm = function(data){
    data.oldId = data.id;
};
//+++++++++++++++comp相关 结束+++++++++++++++++

//+++++++++++++++方案相关 开始+++++++++++++++++
__shed.showCompExpListDlg = function(){
    var $btn = $(this);
    var $tbl = tt.getTblByTBBtn($btn);//获取到datagrid对象
    var data = $tbl.datagrid("getSelected");
    if(!data) return tt.showWarn("请先选择需要配置的方案！");
    var pvlCode = $btn.attr("pvlCode");
    var $dlg = $("#dlg_" + pvlCode);
    var $targetTbl = $dlg.find("table.easyui-datagrid");
    $targetTbl.attr("params", JSON.stringify({scheId : data.id}));
    var queryUrl = $targetTbl.attr("queryUrl");

    $targetTbl.datagrid({
        url : queryUrl,
        queryParams:{scheId : data.id}
    });
    $dlg.dialog("open");
};
//+++++++++++++++方案相关 结束+++++++++++++++++

__shed.calProjComp = function(){}
__shed.finishProj = function(){
    var $btn = $(this);
    var $tbl = tt.getTblByTBBtn($btn);//获取到datagrid对象
    var data = $tbl.datagrid("getSelected");
    if(!data) return tt.showWarn("请先选择需要完成的项目！");

    var url = $btn.attr("url");
    var confirmMsg = "完成后的项目将无法进行修改操作，是否继续？";
    $.messager.confirm('确认', confirmMsg,function(r){
        if (r){
            $.post(url, data, function(result){
                $tbl.datagrid("reload");
                tt.showMsg(result);
            }).error(function(){
                    console.error("error--->", arguments)
                });
        }
    });
}

__shed.showScheTestDlg = function($btn, onCheck){
    $btn = $btn || $(this);
    var $tbl = tt.getTblByTBBtn($btn);//获取到datagrid对象
    var data = $tbl.datagrid("getSelected");
    if(!data) return tt.showWarn("请先选择需要修改的数据！");
    var params = $tbl.attr("params");
    if(params) {
        params = JSON.parse(params);
        if(params){
            for (var key in params) {
                data[key] = params[key];
            }
        }
    }
    if(!onCheck){
        var onCheckFuncStr = $btn.attr("onCheck");
        if(onCheckFuncStr && onCheckFuncStr.trim() != "") onCheck = eval("(" + onCheckFuncStr + ")");
    }
    if(onCheck) {
        var result = onCheck(data, $tbl, $btn);//如果需要校验则直接返回
        if(result === false) return;
    }
    var pvlCode = $btn.attr("pvlCode");
    var $dlg = $("#dlg_" + pvlCode);
    var $frm = tt.getFrmInDlg($dlg);
    //TODO 重置
    $dlg.attr("tbl", "#" + $tbl.attr("id"));//需要刷新的tbl
    $frm.form("load", data);
    $dlg.dialog("open");
};

__shed.testSche = function($frmBtn, onCheck){
    $frmBtn = $frmBtn || $(this);
    var $dlg = $frmBtn.parents(".easyui-dialog")
    if(!onCheck){
        var onCheckFuncStr = $frmBtn.attr("onCheck");
        if(onCheckFuncStr && onCheckFuncStr.trim() != "") onCheck = eval("(" + onCheckFuncStr + ")");
    }
    if(onCheck) {
        var result = onCheck({}, $frm, $frmBtn);//如果需要校验则直接返回
        if(result === false) return;
    }
    var $frm = tt.getFrmInDlg($dlg);
    var data = $frm.form("getData")
    var $resultDlg = $("#tbl_dlg_" + $frmBtn.attr("pvlCode"));
    var $resultTbl = $resultDlg.find(".easyui-datagrid")

    var url = $resultTbl.attr("queryUrl");
    var queryParams = data;
    $resultTbl.datagrid({ url : url, queryParams : queryParams });
    $resultDlg.dialog("open");
};