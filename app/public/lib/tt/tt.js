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
    }else if(!msg){
        msg = msgObj + "";
    }
    if(msgObj.type == "error"){
        $.messager.alert(title, msg, "error");
        if(onError) onError(msgObj.value, msg);
    }else{
        $.messager.alert(title, msg, "info");
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

//通过权限编码获取到dialog
tt.getDlgByPvlCode = function(pvlCode, tblId){
    var $dlg = $("#dlg_" + pvlCode);
    if(tblId) $dlg.attr("tblId", tblId);
    return $dlg;
};

//通过权限编码显示create类型的弹出框
tt.showDlg_c = function(pvlCode, tblId){
    var $dlg = tt.getDlgByPvlCode(pvlCode, tblId);
    tt.getFrmInDlg($dlg).form("load", {});
    $dlg.dialog("open");
}
//通过权限编码显示update类型的弹出框
tt.showDlg_u = function(pvlCode, tblId){
    var $dlg = tt.getDlgByPvlCode(pvlCode, tblId);
    var $tbl = $(tblId);
    var data = $tbl.datagrid("getSelected");
    if(!data) return tt.showWarn("请先选择需要修改的数据！");
    tt.getFrmInDlg($dlg).form("load", data);
    $dlg.dialog("open");
}

//通过权限编码显示read类型的弹出框
tt.showDlg_r = function(pvlCode, tblId){
    var $dlg = tt.getDlgByPvlCode(pvlCode, tblId);
    var $tbl = $(tblId);
    var data = $tbl.datagrid("getSelected");
    if(!data) return tt.showWarn("请先选择需要查看的数据！");
    var $frm = tt.getFrmInDlg($dlg);
    $frm.form("load", data);
    $frm.find("input").attr("readonly", "readonly");
    $frm.find("textarea").attr("readonly", "readonly");
    $frm.find(".easyui-combobox").combobox({readonly : true});
    $dlg.dialog("open");
}
//根据权限编码提交表单并且关闭弹出框
tt.submitDlgFrm = function(pvlCode, url){
    var $dlg = tt.getDlgByPvlCode(pvlCode);
    var $frm = tt.getFrmInDlg($dlg);
    console.log(pvlCode, url);
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
                var $tbl = $($dlg.attr("tblId"));
                $tbl.datagrid("reload");
                $dlg.dialog("close");
            });
        }
    });
//    $frm.submit();
};
//关闭弹出窗
tt.closeDlg = function(pvlCode){
    var $dlg = tt.getDlgByPvlCode(pvlCode);
    $dlg.dialog("close");
};

tt.delData = function(pvlCode, tblId, url){
    var $tbl = $(tblId);
    var data = $tbl.datagrid("getSelected");
    if(!data) return tt.showWarn("请先选择需要删除的数据！");
    $.messager.confirm('确认','您确认想要删除记录吗？',function(r){
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


tt.colFormatter = function(value,row,index){
    var col = this.col;
    var field = this.field;
    var data = this.data;
    data = eval('(' + data + ')');
    if(data){
        for(var i = 0; i < data.length; ++i){
            if(value = data[i].value) return data[i].text;
        }
    }
    return value;
};

tt.getTblByTBBtn = function(tbBtn){
    var dataGridPanel = tbBtn.parent(".datagrid");
    return dataGridPanel.find("table.easyui-datagrid")
}
tt.getValueByForm = function($form, name){
    var $input = $form.find("input[name=" + name + "]");
    if($input.length > 0) return $input.val();
    $input = $form.find("textarea[name=" + name + "]");
    if($input.length > 0) return $input.val();
    return null;
}

tt.getFieldByForm = function($form, name){
    var $input = $form.find("input[name=" + name + "]");
    $input = $input.length > 0 ? $input : $form.find("textarea[name=" + name + "]");
    return $input.parents("tr");
}

$(function(){
    $(".tt-init").each(function(index, ttInitObj){
        var $ttInitObj = $(ttInitObj);
        var ttInitStr = $ttInitObj.attr("tt-init");
        if(!ttInitStr) return;
        var func = eval('(' + ttInitStr + ')');
        if(func) func.call(ttInitObj);
    })
});
