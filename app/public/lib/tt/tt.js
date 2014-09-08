/**
 * From扩展
 * getData 获取数据接口
 *
 * @param {Object} jq
 * @param {Object} params 设置为true的话，会把string型"true"和"false"字符串值转化为boolean型。
 */
$.extend($.fn.form.methods, {
    getData: function(jq, params){
        var formArray = jq.serializeArray();
        var oRet = {};
        for (var i in formArray) {
            if (typeof(oRet[formArray[i].name]) == 'undefined') {
                if (params) {
                    oRet[formArray[i].name] = (formArray[i].value == "true" || formArray[i].value == "false") ? formArray[i].value == "true" : formArray[i].value;
                }
                else {
                    oRet[formArray[i].name] = formArray[i].value;
                }
            }
            else {
                if (params) {
                    oRet[formArray[i].name] = (formArray[i].value == "true" || formArray[i].value == "false") ? formArray[i].value == "true" : formArray[i].value;
                }
                else {
                    oRet[formArray[i].name] += "," + formArray[i].value;
                }
            }
        }
        return oRet;
    }
});

var tt = tt || {};

tt.onLoadError4DataGrid = function(error){
    tt.showMsg({type : "error", msg : error.responseText || "数据获取失败！"});
};
tt.showInfo = function(msg){
    $.messager.alert("信息", msg, "warning");
}
tt.showWarn = function(msg){
    $.messager.alert("警告", msg, "warning");
}
tt.showError = function(msg){
    $.messager.alert("错误", msg, "error");
}

tt.showMsg = function(msgObj, onSuccess, onError){
    var title = "提示信息";
    var icon = "info";
    var msg = msgObj.msg;
    if(typeof msgObj == "string"){
        msg = msgObj;
//    }else if(!msg){
//        msg = msgObj + "";
    }
    if(msgObj.type == "error"){
        $.messager.alert(title, msg, "error");
        if(onError) onError(msgObj.value, msg);
    }else{
        if(msg) $.messager.alert(title, msg, "info");
        if(onSuccess) onSuccess(msgObj.value, msg);
    }
}


tt.initFrm = function($frm){
    var readonlysStr = $frm.attr("readonlys");
    if(readonlysStr){
        readonlysStr = readonlysStr.trim()
        if(readonlysStr != ""){
            var arr = readonlysStr.split(",");
            for(var i = 0; i < arr.length; ++i){
                var $input = $frm.find("[name='" + arr[i] + "']");
                $input.attr("readonly", "readonly");
                $frm.find(".easyui-combobox[comboname='" + arr[i] + "']").combobox({readonly : true});
            }
        }
    }
}

tt.getFrmInDlg = function($dlg){
    var $frm = $dlg.find("form");
    tt.initFrm($frm);
    return $frm;
}

//通过权限编码显示create类型的弹出框
tt.showDlg_c = function($btn, onCheck){
    $btn = $btn || $(this);
    var $tbl = tt.getTblByTBBtn($btn);//获取到datagrid对象
    var data = {};
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
    $frm.form("clear");
    $dlg.attr("tbl", "#" + $tbl.attr("id"));//需要刷新的tbl
    $frm.form("load", data);
    $dlg.dialog("open");
};
//通过权限编码显示update类型的弹出框
tt.showDlg_u = function($btn, onCheck){
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
    $dlg.attr("tbl", "#" + $tbl.attr("id"));//需要刷新的tbl
    $frm.form("load", data);
    $dlg.dialog("open");
};

//通过权限编码显示read类型的弹出框
tt.showDlg_r = function($btn, onCheck){
    $btn = $btn || $(this);
    var $tbl = tt.getTblByTBBtn($btn);//获取到datagrid对象
    var data = $tbl.datagrid("getSelected");
    if(!data) return tt.showWarn("请先选择需要查看的数据！");
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
    $dlg.attr("tbl", "#" + $tbl.attr("id"));//需要刷新的tbl
    $frm.form("load", data);
    $frm.find("input").attr("readonly", "readonly");
    $frm.find("textarea").attr("readonly", "readonly");
    $frm.find(".easyui-combobox").combobox("readonly");
    $dlg.dialog("open");
};
//根据权限编码提交表单并且关闭弹出框
tt.submitDlgFrm = function($frmBtn, onCheck){
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
    var url = $frmBtn.attr("url");
    $frm.form("submit", {
        url : url,
        success : function(data){
            var result;
            try{
                result = JSON.parse(data);
            }catch(e){
                result = data;
            }
            if(typeof result == "string"){
                result = {type : "error", msg : result}
            }
            tt.showMsg(result, function(){
                var $tbl = $($dlg.attr("tbl"));
                $tbl.datagrid("reload");
                $dlg.dialog("close");
            });
        }
    });
//    $frm.submit();
};
//关闭弹出窗
tt.closeDlg = function($frmBtn){
    $frmBtn = $frmBtn || $(this);
    var $dlg = $frmBtn.parents(".easyui-dialog")
    $dlg.dialog("close");
};

tt.delData = function($btn, onCheck){
    $btn = $btn || $(this);
    var $tbl = tt.getTblByTBBtn($btn);//获取到datagrid对象
    var data = $tbl.datagrid("getSelected");
    if(!data) return tt.showWarn("请先选择需要删除的数据！");
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
    var url = $btn.attr("url");
    var confirmMsg = $btn.attr("confirm") || '您确认要删除该数据？'
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

tt.showDlg_l = function($btn, onCheck){
    $btn = $btn || $(this);
    var $tbl = tt.getTblByTBBtn($btn);//获取到datagrid对象
    var data = $tbl.datagrid("getSelected");
    if(!data) return tt.showWarn("请先选择需要查看的数据！");
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

    var $targetTbl = $dlg.find(".easyui-datagrid");
    var btnParamsStr = $btn.attr("params");
    if(btnParamsStr){
        var strArr = queryParamsStr.split(",");
        var obj = {};
        for(var i = 0; i < strArr.length; ++i){
            var strArr2 = strArr[i].split(":");
            var key1 = strArr2[0];
            var key2 = strArr2[1] || key1;
            obj[key1] = data[key2];
        }
    }

    var url = $targetTbl.attr("queryUrl");
    var queryParamsStr = $btn.attr("queryParams");
    var queryParams = {};
    if(queryParamsStr && queryParamsStr != ""){
        var strArr = queryParamsStr.split(",");
        for(var i = 0; i < strArr.length; ++i){
            var strArr2 = strArr[i].split(":");
            var key1 = strArr2[0];
            var key2 = strArr2[1] || key1;
            queryParams[key1] = data[key2];
        }
    }
    $targetTbl.attr("params", JSON.stringify(queryParams));
    $targetTbl.datagrid({ url : url, queryParams : queryParams });
    $dlg.dialog("open");
};
tt.showSelDlg = function($btn, onCheck){
    $btn = $btn || $(this);//先获取按键
    var $frm = $btn.parents("form");//当前的表单
    var data = $frm.form("getData")
    var $dlg = $("#dlg_" + $btn.attr("pvlCode"));
    $dlg.attr("dlg", "#" + $btn.parents(".easyui-dialog").attr("id"))
    var $tbl = $dlg.find(".easyui-datagrid");
    var url = $tbl.attr("queryUrl");
    var map = $btn.attr("map") || "";
    $dlg.attr("map", map);
    var queryParamsStr = $btn.attr("queryParams");
    var queryParams = {};
    if(queryParamsStr && queryParamsStr != ""){
        var strArr = queryParamsStr.split(",");
        for(var i = 0; i < strArr.length; ++i){
            var strArr2 = strArr[i].split(":");
            var key1 = strArr2[0];
            var key2 = strArr2[1] || key1;
            queryParams[key1] = data[key2];
        }
    }
    $tbl.datagrid({ url : url, queryParams : queryParams });
    $dlg.dialog("open");
};
tt.selData = function($btn, onCheck){
    $btn = $btn || $(this);//先获取按键
    var $dlg = $btn.parents(".easyui-dialog");//当前弹出框
    var $tbl = $dlg.find(".easyui-datagrid");//零件列表的dataGrid
    var data = $tbl.datagrid("getSelected");
    if(!data) return tt.showWarn("请先选择数据！");
    var $lastDlg = $($dlg.attr("dlg"));//找到上一个dlg对象
    var $frm = $lastDlg.find("form");//找到目标表单对象
    var mapStr = $dlg.attr("map");
    if(mapStr && mapStr != ""){
        var strArr = mapStr.split(",");
        for(var i = 0; i < strArr.length; ++i){
            var strArr2 = strArr[i].split(":");
            var key1 = strArr2[0];
            var key2 = strArr2[1] || key1;
            $frm.find("input[name=" + key1 + "]").val(data[key2]);
        }
    }
    $frm.form("validate");
    $dlg.dialog("close");
};

tt.colFormatter = function(value,row,index){
    var data = this.data;
    data = eval('(' + data + ')');
    if(data){
        for(var i = 0; i < data.length; ++i){
            if(value = data[i].value) return data[i].text;
        }
    }
    return value;
};

tt.getTblByTBBtn = function($tbBtn){
    var $dataGridPanel = $tbBtn.parents(".datagrid");
    return $dataGridPanel.find("table.easyui-datagrid")
};
tt.getValueByForm = function($form, name){
    var $input = $form.find("input[name=" + name + "]");
    if($input.length > 0) return $input.val();
    $input = $form.find("textarea[name=" + name + "]");
    if($input.length > 0) return $input.val();
    return null;
};

tt.getFieldByForm = function($form, name){
    var $input = $form.find("input[name=" + name + "]");
    $input = $input.length > 0 ? $input : $form.find("textarea[name=" + name + "]");
    return $input.parents("tr");
};

$(function(){
    $(".tt-init").each(function(index, ttInitObj){
        var $ttInitObj = $(ttInitObj);
        var ttInitStr = $ttInitObj.attr("tt-init");
        if(!ttInitStr) return;
        var func = eval('(' + ttInitStr + ')');
        if(func) func.call(ttInitObj);
    });
    $(".tt-qry-btn").each(function(index, ttQryBtn){
        var $ttQryBtn = $(ttQryBtn);
        $ttQryBtn.linkbutton({
            iconCls: 'icon-search',
            text : "查询",
            onClick : function(){
                var $btn = $(this);
                var $qryArea = $btn.parents("div.tt-qry-area");
                var $tbl = $qryArea.parent().find(".easyui-datagrid");
                var $frm = $qryArea.find("form");
                var data = $frm.form("getData");
                var queryParams = $tbl.datagrid("options").queryParams;
                console.log(queryParams);
                for(var key in data){
                    queryParams[key] = data[key];
                }
                console.log(queryParams);
                $tbl.datagrid("load");
//                $tbl.datagrid("load", data);
            }
        });
    })
});
