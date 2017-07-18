<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/base.jsp"%>
<%@include file="/jsp/common/head.jsp"%>
<div class="tabbar">
    <div id="crumb">询价统计</div>
</div>
<div class="search-bar">
    <form class="form-horizontal" id="searchForm" name="searchForm" method="post"  onsubmit="return false;">    
    <ul class="search-bar-row">
        <li>
            <label>提交时间</label>
            &thinsp;&thinsp;从&ensp;<input type="text" class="txt-search timer timer-lt" name="startDate" id="startDate" onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})" />
            &thinsp;至&ensp;<input type="text" class="txt-search timer timer-lt" name="endDate" id="endDate" value="${endDate }" onClick="WdatePicker({dateFmt:'yyyy-MM-dd',maxDate:'%y-%M-%d'})" />
        </li>
        <li>
            <label>平台：</label>
            <label class="label-chk">
                <input type="checkbox" /> Web
            </label>
            <label class="label-chk">
                <input type="checkbox" /> IOS
            </label>
            <label class="label-chk">
                <input type="checkbox" /> Android
            </label>
        </li>
        <li class="search-li-full">
            <a class="btn-orange" href="javascript:void(0)" onclick="">检 索</a>
            <a class="btn-gray" href="javascript:void(0)" onclick="">清 除</a>
        </li>
    </ul>
    </form>
</div>
<div class="my-table">
    <table id="mainTable" class="table table-striped table-bordered table-hover dataTable no-footer" role="grid" aria-describedby="mainTable_info">
        <thead>
            <tr role="row">
                <th class="cols-id sorting_disabled" rowspan="1" colspan="1" style="width: 50%;">点击我要询价次数</th>
                <th class="sorting_disabled" rowspan="1" colspan="1" style="width: 50%;">提交询价次数</th>
            </tr>
        </thead>
        <tbody>
            <tr role="row" class="odd">
                <td>265</td>
                <td>159</td>
            </tr>
        </tbody>
    </table>
</div>
<%@include file="/jsp/base/jsBase.jsp"%>
<script src="${publicPath}/js/common/plu/jquery/My97DatePicker/WdatePicker.js"></script>