<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/base.jsp"%>
<%@include file="/jsp/common/head.jsp"%>
<div class="tabbar">
    <div id="crumb">询价详情</div>
</div>
<div class="accordion">
<form name="order_detail_edit_form" method="post" action="" id="order_detail_edit_form">
    <input type="hidden" name="id" value="${askPriceOrder.id}">
    <input type="hidden" id="memId" name="memId" value="${askPriceOrder.memId}">
    <input type="hidden" id="orderNo" name="orderNo" value="${askPriceOrder.orderNo}">
    <input type="hidden" id="source" name="source" value="${askPriceOrder.source}">
    <div class="accordion-panel">
        <div class="accordion-content">
            <ul class="mod-row mod-row-lg">
                <li>
                    <label class="mod-col-3">询价单号：</label>
                    <div class="mod-col-5">
                        <span class="red">${askPriceOrder.orderNo}</span>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="accordion-panel">
        <div class="accordion-title">
            <div class="accordion-title-wrap"><div class="accordion-title-line"></div></div>
            <h3>询价信息</h3>
            <a class="accordion-title-icon" href="javascript:void(0);"></a>
        </div>
        <div class="accordion-content">
            <ul class="mod-row mod-row-lg mod-break">
                <li>
                    <label class="mod-col-3">型号：</label>
                    <div class="mod-col-5">${askPriceOrder.pnCode}</div>
                </li>
                <li>
                    <label class="mod-col-3">品牌：</label>
                    <div class="mod-col-5">${askPriceOrder.brand}</div>
                </li>
                <li>
                    <label class="mod-col-3">需求数量：</label>
                    <div class="mod-col-5">${askPriceOrder.pcs} PCS</div>
                </li>
                <li>
                    <label class="mod-col-3">项目描述：</label>
                    <div class="mod-col-5">${askPriceOrder.projectDesc}</div>
                </li>
                <li>
                    <label class="mod-col-3">联系人：</label>
                    <div class="mod-col-5">${askPriceOrder.contact}</div>
                </li>
                <li>
                    <label class="mod-col-3">联系电话：</label>
                    <div class="mod-col-5">${askPriceOrder.contactPhone}</div>
                </li>
                <li>
                    <label class="mod-col-3">公司名称：</label>
                    <div class="mod-col-5 changeEdit">
                        <span>
                            ${askPriceOrder.company}
                            <a href="javascript:void(0);" style="color: #000;">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                            </a>
                        </span>
                        <span class="hide">
                            <input type="text" class="form-control" name="company" maxlength="60" value="${askPriceOrder.company}"/>
                        </span>
                    </div>
                    <span class="required">*</span>
                </li>
                <li>
                    <label class="mod-col-3">工作邮箱：</label>
                    <div class="mod-col-5 changeEdit">
                        <span>
                            ${askPriceOrder.email}
                            <a href="javascript:void(0);" style="color: #000;">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                            </a>
                        </span>
                        <span class="hide">
                            <input type="text" class="form-control" name="email" id="email" value="${askPriceOrder.email}"/>
                        </span>
                    </div>
                    <span class="required">*</span>
                </li>
                <li>
                    <label class="mod-col-3">&nbsp;</label>
                    <div class="mod-col-5">
                        <a href="javascript:void(0);" onclick="memDetail(${askPriceOrder.memId})" >查看会员详情</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="accordion-panel">
        <div class="accordion-title">
            <div class="accordion-title-wrap"><div class="accordion-title-line"></div></div>
            <h3>单据状态</h3>
            <a class="accordion-title-icon" href="javascript:void(0);"></a>
        </div>
        <div class="accordion-content">
            <ul class="mod-row mod-row-lg">
                <li>
                    <label class="mod-col-3">提交时间：</label>
                    <div class="mod-col-5"><fmt:formatDate value="${askPriceOrder.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/> </div>
                </li>
                <li>
                    <label class="mod-col-3">状态：</label>
                    <input type="hidden" name="oldPStatus" value="${askPriceOrder.processStatus}">
                    <div class="mod-col-5">
                        <c:if test="${askPriceOrder.processStatus eq 1}" >待处理</c:if>
                        <c:if test="${askPriceOrder.processStatus eq 2}" >处理中</c:if>
                    </div>
                </li>
                <li>
                    <label class="mod-col-3">分配客服代表：</label>
                    <div class="mod-col-5">
                        <input id="csId" type="hidden" name="csId" value="${askPriceOrder.csId}">
                        <input id="csUname" type="hidden" name="csUname" value="${askPriceOrder.csUname}">
                         <input id="csName" type="hidden" name="csName" value="${askPriceOrder.csName}">
                        <input type="text" class="form-control form-control-md inline" id="cs_name" name="customerSvcName" <c:if test="${not empty askPriceOrder.csName }">value="${askPriceOrder.csUname}(${askPriceOrder.csName})"</c:if> readonly/>
                        <a href="javascript:void(0);" style="color: #000;" id="assignBtn">
                            <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                        </a>
                    </div>
                    <span class="required">*</span>
                </li>
                <li>
                    <label class="mod-col-3">电话(座机)：</label>
                    <div class="mod-col-5">
                        <input type="text" class="form-control" id="cs_phone" name="csPhone" maxlength="20" value="${askPriceOrder.csPhone}" />
                    </div>
                    <span class="required">*</span>
                </li>
                <li>
                    <label class="mod-col-3">邮箱：</label>
                    <div class="mod-col-5">
                        <input type="text" class="form-control" id="cs_email" name="csEmail" value="${askPriceOrder.csEmail}" />
                    </div>
                    <span class="required">*</span>
                </li>
                <li>
                    <label class="mod-col-3">状态：</label>
                    <div class="mod-col-5">
                        <select name="processStatus" id="processStatus">
                          <%--   <option <c:if test="${askPriceOrder.processStatus eq 1}" > selected="selected" </c:if>>待处理</option> --%>
                           <%-- <option <c:if test="${askPriceOrder.processStatus eq 2}" > selected="selected" </c:if> value="2">处理中</option>
                            <option <c:if test="${askPriceOrder.processStatus eq 3}" > selected="selected" </c:if> value="3">报价</option>
                            <option <c:if test="${askPriceOrder.processStatus eq 4}" > selected="selected" </c:if> value="4">不报价</option>
                           --%>
                              <c:if test="${askPriceOrder.processStatus eq 1}" >
                                <option  value="" selected="selected"></option>
                                <option  value="2">处理中</option>
                              </c:if>
                              <c:if test="${askPriceOrder.processStatus eq 2}" >
                                  <option  value="2" selected="selected">处理中</option>
                                  <option  value="3">已报价</option>
                                  <option  value="4">不报价</option>
                              </c:if>
                        </select>
                    </div>
                    <span class="required">*</span>
                </li>
            </ul>
        </div>
    </div>
</form>
</div>
<div class="accordion-btns mod-row-btns">
    <input class="btn btn-warning btn-mid" type="button" id="submitBtn" value="保 存"/>
    <input class="btn btn-default btn-mid" type="button" id="cancelBtn" value="取 消"/>
</div>
<!--分配客服代表弹出框-->
<div class="modal modal-w1" id="assignDialog">
    <div class="modal-dialog">
        <div class="modal-content my-modal-content">
            <div class="modal-header my-modal-header">
                <button type="button" class="close my-close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title">分配客服代表</h4>
            </div>
            <div class="modal-box">
                <div class="modal-box-table">
                    <div class="modal-box-search">
                        <input id="assignSearchword" type="text" maxlength="20" value=""/>
                        <button class="btn-orange" id="searchServersBtn">查 找</button>
                    </div>
                    <div class="model-tab-content">
                        <table id="assignTable" class="table">
                            <tbody>
                                <%--<tr class="odd">
                                    <td>Carl_chen</td>
                                    <td>陈斌</td>
                                </tr>
                                <tr class="odd">
                                    <td>Janny_chen</td>
                                    <td>陈斌浩</td>
                                </tr>--%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer my-modal-footer modal-footer-commend">
                <button type="button" class="btn btn-warning btn-mid" id="saveBtn">确定</button>
                <button type="button" class="btn btn-default btn-mid" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<%@include file="/jsp/base/jsBase.jsp"%>
<script src="${publicPath}/js/common/formValidate.js"></script>
<script src="${publicPath}/js/supply/askprice/ask_price_detail_edit.js"></script>
<script src="${publicPath}/js/member/common/memPopup.js"></script>