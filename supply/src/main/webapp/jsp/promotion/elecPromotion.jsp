<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/base/base.jsp"%> 
<%@include file="/jsp/common/head.jsp"%> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>元件促销</title>
</head>
<body>
    <div class="tabbar">
        <div id="crumb">元件促销</div>
    </div>
    <div class="tab-content">
        <div class="btn-options">
            <a class="btn-gray" href="javascript:void(0)" id="importBtn">导入库存</a>
            <a class="btn-gray" href="javascript:downloadTemplate();">下载模板</a>
            <a class="btn-gray btn-disabled" href="javascript:activeCurrentBatch();" id="activeBatch" >库存生效</a>
        </div>
        <div class="tab-pane active">
        	<form id="searchForm" name="searchForm" method="post"  onsubmit="return false;">
        		<input id="xx" name="xx" value="" type="hidden"/>
        		<input id="activeBatchId" name="activeBatchId" value="${activeBatchId }" type="hidden"/>
        		<input id="status" name="status" value="1" type="hidden"/>
        		<input id="batchId" name="batchId" value="" type="hidden"/>
        	</form>
            
            <div class="my-table">
                <table id="mainTable" class="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>
                        <th width="50">序号</th>
                        <th>型号</th>
                        <th width="200">厂商</th>
                        <th width="200">类别</th>
                        <th width="200">库存</th>
                    </tr>
                    </thead>
                </table>
            </div>
        </div>
   	</div>
   	
   	<!-- 导入弹出框 -->
	<div class="modal" id="importDialog">
	    <div class="modal-dialog">
	        <div class="modal-content my-modal-content">
	            <div class="modal-header my-modal-header">
	                <button type="button" class="close my-close" data-dismiss="modal">
	                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
	                </button>
	                <h4 class="modal-title">批量导入</h4>
	            </div>
	            <div class="modal-body">
	                <ul class="formList">
	                    <li class="uploadfile-display">
	                        <label class="col-sm-3 control-label text-right">Excel文件：</label>
	                        <div class="col-sm-7">
	                        	<form method="post" action="" enctype="multipart/form-data">
	                            <div class="fileupload-buttonbar">
	                                <div class="fileupload-buttons">
									<span class="btn btn-block btn-upfile fileinput-button">
										<input id="fileupload" class="fileupload" type="file" name="excel">
									</span>
	                                <!-- 进度条 -->
	                                <div id="progress" class="progress" style="display: none;">
	                                     <div class="progress-bar"></div>
	                                </div>
	                             </div>
	                         </div>
	                         </form>
	                         <div id="files" class="files"></div>
	                     </div>
	                 </li>
	             </ul>
	         </div>
	         <div class="modal-footer my-modal-footer">
	             <button type="button" class="btn btn-default btn-mid" data-dismiss="modal" onclick="clearFileInput();">取消</button>
	         </div>
	     </div>
	 	</div>
	 </div>
    
<%@include file="/jsp/base/jsBase.jsp"%>
<script src="${publicPath}/js/common/plu/jquery/form/jquery.form.js"></script>
<script src="${publicPath}/js/common/plu/jquery/My97DatePicker/WdatePicker.js"></script>
<script src="${publicPath}/js/common/plu/jquery/jqueryFileUpload/vendor/jquery.ui.widget.js"></script>
<script src="${publicPath}/js/common/plu/jquery/jqueryFileUpload/jquery.iframe-transport.js"></script>
<script src="${publicPath}/js/common/plu/jquery/jqueryFileUpload/jquery.fileupload.js"></script>
<script src="${publicPath}/js/common/plu/jquery/jqueryFileUpload/cors/jquery.xdr-transport.js"></script>
<script src="${publicPath}/js/common/plu/jquery/jqueryFileUpload/jquery.fileupload-process.js"></script>
<!-- The File Upload validation plugin -->
<script src="${publicPath}/js/common/plu/jquery/jqueryFileUpload/jquery.fileupload-validate.js"></script>

<script src="${publicPath}/js/supply/promotion/elecPromotion.js"></script>
</body>
</html>
