<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/base/base.jsp"%> 
<%@include file="/jsp/common/head.jsp"%> 
    <div class="tabbar">
        <div id="crumb">元件供应</div>
    </div>
    <div class="search-bar">
        <form class="form-horizontal" id="searchForm" name="searchForm" method="post"  onsubmit="return false;">
			<input type="hidden" value="${sel }" id="sel" />
			<input type="hidden" value="${pageNum }" id="pageNum" />
        <ul class="search-bar-row">
            <li>
                <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;品牌：</label>
               	<select name="brand" id="brand" readonly="" class="txt-search txt-search-long">
               		<option value="">全部品牌</option>
               	</select>
            </li>
            <li>
                <label>库存：</label>
                <label class="label-rbtn"><input name="pcs" type="radio" id="pcs" checked="true"/> 全部</label>
                <label class="label-rbtn"><input name="pcs" type="radio" id="pcs1" value="1"/> 有库存</label>
                <label class="label-rbtn"><input name="pcs" type="radio" id="pcs0" value="0"/> 无库存</label>
            </li>
            <li>
                <label>
	                	<select name="paramType" id="paramType">
	                		<option value="1" selected="selected">型号</option>
	                		<option value="2">产品线</option>
	                	</select>：
	            </label>
	            <input type="text" class="txt-search" name="paramValue" id="paramValue" maxlength="35" class="txt-search"/>
                <input type="hidden" name="pnCode" id="pnCode" />
                <input type="hidden" id="productLine" name="productLine" value=""/>
            </li>
            <li>
                <label>状态：</label>
                <label class="label-rbtn"><input name="state" id="state" type="radio" checked="true"/> 全部</label>
                <label class="label-rbtn"><input name="state" id="state0" type="radio" value="0"/> 有效</label>
                <label class="label-rbtn"><input name="state" id="state1" type="radio" value="1"/> 已失效</label>
            </li>
            <!-- <li>
                <label>电商PN库：</label>
                <label class="label-rbtn"><input type="radio" name="pnStock" value="" checked="true"/> 全部</label>
                <label class="label-rbtn"><input type="radio" name="pnStock" id="pnStock1" value="1"/> 有</label>
                <label class="label-rbtn"><input type="radio" name="pnStock" id="pnStock0" value="0"/> 没有</label>
            </li> -->
            <li>
            	<label>同步时间：</label>
                &ensp;从&ensp;<input type="text" id="updateTimeBegin" name="updateTimeBegin" class="txt-search timer" onClick="WdatePicker({maxDate:'%y-%M-%d', dateFmt:'yyyy-MM-dd'})" />&ensp;至&ensp;<input type="text" id="updateTimeEnd" name="updateTimeEnd" class="txt-search timer" onClick="WdatePicker({maxDate:'%y-%M-%d', dateFmt:'yyyy-MM-dd'})" />
            </li>
            <li class="search-li-full">
                <a class="btn-orange" href="javascript:void(0)" onclick="loadData()">检 索</a>
                <a class="btn-gray" href="javascript:void(0)" onclick="clearSearch()">清 除</a>
            </li>
        </ul>
        </form>
    </div>
    <div class="my-table">
        <table id="mainTable" class="table table-striped table-bordered table-hover">
            <thead>
            <tr>
                <th>序号</th>
                <th>型号</th>
                <th>品牌</th>
                <th>产品线</th>
                <th>大类</th>
                <th>小类</th>
                <th>库存(PCS)</th>
                <th>货期(Day)</th>
                <th>批次</th>
                <th>最小包装量</th>
                <th>最小起订量</th>
                <th>电商PN库</th>
                <th>同步时间</th>
                <th>状态</th>
            </tr>
            </thead>
        </table>
    </div>

    <div id="selectProduct" class="select-content">
        <ul id="treeProduct" class="ztree"></ul>
    </div>
<%@include file="/jsp/base/jsBase.jsp"%>
<script src="${publicPath}/js/common/plu/jquery/My97DatePicker/WdatePicker.js"></script>
<script src="${publicPath}/js/supply/partnumberSupply/partnumberSupplyList.js"></script>
<script type="text/javascript">
</script>
</body>
</html>
