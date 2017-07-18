<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
</head>
<body>

<div id="show_thum_2"></div>
<script>
    window.onload = function(){

        var tusrc = window.location.hash.slice(1);
        var searchArr = window.location.search.slice(1).split('&');
        var params = new Array();
        for(var i in searchArr){
            var paramsArg = searchArr[i].split('=');
            params[paramsArg[0]] = paramsArg[1];
        }
        var tsrc = '<div id="show_thum" style="filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src='+tusrc+'); WIDTH: '+params['width']+'px; HEIGHT: '+params['height']+'px;"></div>';
        var showThum = document.getElementById('show_thum_2');
        showThum.innerHTML = tsrc;

    }

</script>
</body>
</html>
