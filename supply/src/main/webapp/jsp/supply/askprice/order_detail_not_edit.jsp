<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/base.jsp"%>
<%@include file="/jsp/common/head.jsp"%>
<div class="tabbar">
    <div id="crumb">询价详情</div>
</div>
<div class="accordion">
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
                    <div class="mod-col-5"> ${askPriceOrder.company}</div>
                </li>
                <li>
                    <label class="mod-col-3">工作邮箱：</label>
                    <div class="mod-col-5">${askPriceOrder.email}</div>
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
                    <div class="mod-col-5"><fmt:formatDate value="${askPriceOrder.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
                </li>
                <li>
                    <label class="mod-col-3">状态：</label>
                    <div class="mod-col-5">
                        <c:if test="${askPriceOrder.processStatus eq 3}" >已报价</c:if>
                        <c:if test="${askPriceOrder.processStatus eq 4}" >不报价</c:if>
                    </div>
                </li>
                <li>
                    <label class="mod-col-3">服务代表：</label>
                    <div class="mod-col-5">${askPriceOrder.csUname}(${askPriceOrder.csName})</div>
                </li>
                <li>
                    <label class="mod-col-3">联系电话：</label>
                    <div class="mod-col-5">${askPriceOrder.csPhone}</div>
                </li>
                <li>
                    <label class="mod-col-3">工作邮箱：</label>
                    <div class="mod-col-5">${askPriceOrder.csEmail}</div>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="accordion-btns mod-row-btns">
    <input class="btn btn-warning btn-mid" type="button" id="submitBtn" value="确 定"/>
</div>
<%@include file="/jsp/base/jsBase.jsp"%>
<script type="text/javascript">
$(function(){
    //手风琴效果
    $(".accordion").on("click",function(e){
        var _target = $(e.target),
            _content = _target.parent().next();
        if(_target.hasClass("accordion-title-icon")){
            if(_target.hasClass("accordion-hide")){
                _target.removeClass("accordion-hide");
                _content.removeClass("accordion-hide");
            }else{
                _target.addClass("accordion-hide");
                _content.addClass("accordion-hide");
            }
        }
    });
    $("#submitBtn").click(function(){
        goBack();
    });
    /**
     * 返回页面
     */
    function goBack(){
        var url = cxtPath + "/askPrice/main";
        openPage(url);
    }
});
</script>
<script src="${publicPath}/js/member/common/memPopup.js"></script>