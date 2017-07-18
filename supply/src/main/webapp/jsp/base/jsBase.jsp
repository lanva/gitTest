<!-- jsLoadFrom -->
<script src="${publicPath}/js/common/lib/jquery/jquery.min.js"></script>
<script src="${publicPath}/js/common/lib/bootstrap/bootstrap.min.js"></script>
<script src="${publicPath}/js/common/plu/bootstrap/bootstrap-dialog.js"></script>
<script src="${publicPath}/js/common/plu/bootstrap/bootstrap-modal.js"></script>
<script src="${publicPath}/js/common/plu/jquery/datatables/jquery.dataTables.min.js"></script>
<script src="${publicPath}/js/common/utils.js"></script>
<script src="${publicPath}/js/common/appliction.js"></script>
<script src="${publicPath}/js/common/localStorage.js"></script>
<script src="${publicPath}/js/common/init.js"></script>

<script src="${publicPath}/js/common/plu/jquery/validate/jquery.validate.min.js"></script>
<script src="${publicPath}/js/common/plu/jquery/validate/messages_zh.js"></script>
<script src="${publicPath}/js/common/plu/jquery/ztree/jquery.ztree.core-3.5.min.js"></script>
<script src="${publicPath}/js/common/plu/jquery/ztree/jquery.ztree.excheck-3.5.min.js"></script>
<script src="${publicPath}/js/common/plu/jquery/ztree/jquery.ztree.exedit-3.5.min.js"></script>
<!-- jsLoadEnd -->
<script language="javascript">
	var cxtPath = "${cxtPath}";
	var publicPath = "${publicPath}";
	//异步请求，session过期的跳转登录页面
	$.ajaxSetup({
		contentType:"application/x-www-form-urlencoded;charset=utf-8",
		cache:false,
		complete:function(XMLHttpRequest,textStatus){          
			//通过XMLHttpRequest取得响应头，sessionstatus                     
			var sessionstatus=XMLHttpRequest.getResponseHeader("sessionstatus");
			if(sessionstatus=="timeout"){               
	    	//这里怎么处理在你，这里跳转的登录页面              
	    		window.location.href= cxtPath + "/verify/logout"; 
			}    
	}});
	//初始化记住点击行的逻辑
	localStorg.initOnTableLine();
</script>