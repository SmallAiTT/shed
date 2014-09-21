var path = require("path");
var async = require("async");
var mysql = require("mysql");
var xlsx = require('node-xlsx');

var ttDb = require("../../app/node_modules/tt-db/index")
var client = ttDb.client;
var indexArrMap = {
    "comp" : [0,1,2]
}
var files = ["comp"];
function getCellValue(cell){
    if(cell) return cell.value || null;
    return null;
}

function getStrByPreTemp(index, temp){
    var indexStr = index+"";
    var l = indexStr.length;
    return temp.substring(0, temp.length - l) + indexStr;
}
function loadCopms(fileName, cb){
    var xlsxPath = path.join(__dirname, '../xlsx/' + fileName + '.xlsx');
    var obj = xlsx.parse(xlsxPath); // parses a file
    var data = obj.worksheets[0].data
    var compArr = [];
    var indexArr = indexArrMap[fileName]
    for(var i = 1; i < data.length; ++i){
        var row = data[i];
        compArr.push({
            code : fileName + "_" + getStrByPreTemp(i, "0000"),
            isBase : 1,
            name : getCellValue(row[indexArr[0]]),
//            spec : getCellValue(row[indexArr[1]]),
//            mates : getCellValue(row[indexArr[2]]),
            unit : getCellValue(row[indexArr[1]]),
            remark : getCellValue(row[indexArr[2]])
        });
    }
    async.mapLimit(compArr, 1, function(comp, cb1){
        client.select("comp", {code:comp.code}, function(err, data){
            if(err) return cb1(err);
            if(data){
                client.update("comp", comp, {code:comp.code}, cb1);
            }else{
                client.insert("comp", comp, cb1);
            }
        });
    }, cb);
};
async.mapLimit(files, 1, function(fileName, cb){
    loadCopms(fileName, cb);
}, function(err){
    if(err) console.error(err);
});