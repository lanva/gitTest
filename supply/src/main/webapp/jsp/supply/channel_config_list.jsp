<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/base/base.jsp"%> 
<%@include file="/jsp/common/head.jsp"%> 
    <div class="tabbar">
        <div id="crumb">APP频道页配置</div>
    </div>
    <div class="btn-options">
        <a class="btn-gray" href="javascript:void(0)" onclick="doAdd()">添加</a>
    </div>
    <div class="my-table">
        <table id="mainTable" class="table table-striped table-bordered table-hover">
            <thead>
            <tr>
                <th>序号</th>
                <th>排序</th>
                <th>配置行名称</th>
                <th>显示列</th>
                <th>操作人</th>
                <th>操作时间</th>
                <th>管理操作</th>
            </tr>
            </thead>
        </table>
    </div>
<%@include file="/jsp/base/jsBase.jsp"%>
<script src="${publicPath}/js/supply/partnumberSupply/supplyChannelList.js"></script>
</body>
</html>
