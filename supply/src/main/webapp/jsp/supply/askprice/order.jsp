<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/base.jsp"%>
<%@include file="/jsp/common/head.jsp"%>
<div class="tabbar">
    <div id="crumb">询价单</div>
</div>
<div class="search-bar">
    <form class="form-horizontal" id="searchForm" name="searchForm" method="post"  onsubmit="return false;">
    <ul class="search-bar-row">
        <li>
            <select name="firstType" id="firstType">
                <option  value="1">型号</option>
                <option  value="2">公司名称</option>
                <option  value="3">会员手机号</option>
                <option  value="4">询价单号</option>
                <option  value="5">操作人</option>
                <option  value="6">客服代表</option>
            </select>
            <input name="firstValue" id="firstValue" type="text" class="txt-search" maxlength="60" />
        </li>
        <li>
            <label>状态：</label>
            <label class="label-chk">
                <input name="processStatus" id="processStatus1" value="1" type="checkbox" /> 待处理
            </label>
            <label class="label-chk">
                <input  name="processStatus" id="processStatus2" value="2" type="checkbox" /> 处理中
            </label>
            <label class="label-chk">
                <input  name="processStatus" id="processStatus3" value="3" type="checkbox" /> 已报价
            </label>
            <label class="label-chk">
                <input  name="processStatus" id="processStatus4" value="4" type="checkbox" /> 不报价
            </label>
        </li>
        <li>
            <select name="dateType" id="dateType"> <%-- 日期类型 1  提交时间--%>
                <option   value="1">提交时间</option>
                <option   value="2">操作时间</option>
            </select>
            &thinsp;&thinsp;从&ensp;<input type="text" class="txt-search timer timer-lt" name="startDate" id="startDate" onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})" />
            &thinsp;至&ensp;<input type="text" class="txt-search timer timer-lt" name="endDate" id="endDate" value="${endDate }" onClick="WdatePicker({dateFmt:'yyyy-MM-dd',maxDate:'%y-%M-%d'})" />
        </li>
        <li>
            <label>品牌：</label>
            <select id="brand" name="brand">
                <option value="">全部品牌</option>
            </select>
        </li>
        <li class="search-li-full">
            <a class="btn-orange" href="javascript:void(0)"  onclick="queryList()">检 索</a>
            <a class="btn-gray" href="javascript:void(0)" onclick="clearSel()">清 除</a>
        </li>
    </ul>
    </form>
</div>
<div class="my-table">
    <table id="mainTable" class="table table-striped table-bordered table-hover">
        <thead>
            <tr>
                <th>序号</th>
                <th>询价单号</th>
                <th>型号</th>
                <th>品牌</th>
                <th>需求数量</th>
                <th>会员ID</th>
                <th>联系人</th>
                <th>联系电话</th> 
                <th>公司名称</th>
                <th>工作邮箱</th>
                <th width="40">状态</th>
                <th width="120">提交时间</th>
                <th>操作人</th>
                <th width="120">操作时间</th>
                <th>客服代表</th>
                <th width="60">操作</th>
            </tr>
        </thead>
    </table>
</div>
<%@include file="/jsp/base/jsBase.jsp"%>
<script src="${publicPath}/js/common/plu/jquery/My97DatePicker/WdatePicker.js"></script>
<script src="${publicPath}/js/supply/askprice/ask_price.js"></script>