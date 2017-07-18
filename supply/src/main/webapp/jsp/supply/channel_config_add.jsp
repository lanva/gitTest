<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/base/base.jsp"%> 
<%@include file="/jsp/common/head.jsp"%> 
<div class="tabbar">
    <div id="crumb">添加APP频道页</div>
</div>
<form class="form-horizontal" id="editForm" role="form"  action="${cxtPath }/supply/channelConfig/save" method="post" enctype="multipart/form-data">
<input type="hidden" name="id" id="id" value="${data.id }">
<div class="accordion">

    <div class="accordion-panel">
        <div class="accordion-content">
            <ul class="mod-row mod-row-lg">
                <li>
                    <label class="mod-col-3">配置行名称：</label>
                    <div class="mod-col-5">
                        <input id="rowName" name="rowName" value="${data.rowName }" class="form-control" type="text" maxlength="16" placeholder="请输入...（2~16个字）" />
                    </div>
                    <span class="required">*</span>
                </li>
                <li>
                    <label class="mod-col-3" for="name">展示列：</label>
                    <div class="mod-col-5">
                        <label class="label-rbtn">
                            <input type="radio" name="displayColumn" value="1" <c:if test="${empty data or data.displayColumn eq 1  }">checked</c:if>/> 1列
                        </label>
                        <label class="label-rbtn">
                            <input type="radio" name="displayColumn" value="2" <c:if test="${!empty data and data.displayColumn eq 2  }">checked</c:if>/> 2列
                        </label>
                        <label class="label-rbtn">
                            <input type="radio" name="displayColumn" value="3" <c:if test="${!empty data and data.displayColumn eq 3  }">checked</c:if>/> 3列
                        </label>
                    </div>
                    <span class="required">*</span>
                </li>
            </ul>
        </div>
    </div>

    <div class="accordion-panel">
        <div class="accordion-title">
            <div class="accordion-title-wrap">
                <div class="accordion-title-line"></div>
            </div>
            <h3>列信息</h3>
            <a class="accordion-title-icon" href="javascript:void(0);"></a>
        </div>
        <div class="accordion-content">
            <ul class="mod-row mod-row-lg">
                <li>
                    <label class="mod-col-3" for="name">列名称：</label>
                    <div class="mod-col-5">
                    	<input id="channelFormId1" name="supplyChannelForms[0].id" type="hidden" value="${data.supplyChannelForms[0].id }"/>
                    	<input id="channelId1" name="supplyChannelForms[0].channelId" type="hidden" value="${data.supplyChannelForms[0].channelId }"/>
                        <input id="columnName1" name="supplyChannelForms[0].columnName" value="${data.supplyChannelForms[0].columnName }" class="form-control" type="text" maxlength="16" placeholder="请输入...（2~16个字）" />
                    </div>
                    <span class="required">*</span>
                </li>
                <li>
                    <label class="mod-col-3" for="name">点击跳转：</label>
                    <div class="mod-col-5 clickJumpType">
                        <label class="label-rbtn">
                            <input type="radio" name="supplyChannelForms[0].clickJumpType" id="clickToweb1" value="1"<c:if test="${empty data or data.supplyChannelForms[0].clickJumpType eq 1 }"> checked</c:if>/> 网页
                        </label>
                        <label class="label-rbtn">
                            <input type="radio" name="supplyChannelForms[0].clickJumpType" id="clickToSearch1" value="2"<c:if test="${data.supplyChannelForms[0].clickJumpType eq 2 }"> checked</c:if>/> 通用搜索
                        </label>
                        <label class="label-rbtn">
                            <input type="radio" name="supplyChannelForms[0].clickJumpType" id="clickToSupply1" value="3"<c:if test="${data.supplyChannelForms[0].clickJumpType eq 3 }"> checked</c:if>/> 元件搜索
                        </label>
                        <label class="label-rbtn">
                            <input type="radio" name="supplyChannelForms[0].clickJumpType" id="clickToAppPromotion1" value="4"<c:if test="${data.supplyChannelForms[0].clickJumpType eq 4 }"> checked</c:if>/> app元件促销页
                        </label>
                    </div>
                </li>
                <li<c:if test="${!empty data and data.supplyChannelForms[0].clickJumpType ne 1 }"> class="hide"</c:if>>
                    <label class="mod-col-3" for="name">链接地址：</label>
                    <div class="mod-col-5">
                        <input id="linkUrl1" name="supplyChannelForms[0].linkUrl" class="form-control" type="text" maxlength="300" value="<c:choose><c:when test='${!empty data and data.supplyChannelForms[0].clickJumpType eq 1 }'>${data.supplyChannelForms[0].linkUrl }</c:when><c:otherwise>http://</c:otherwise></c:choose>" />
                    </div>
                    <span>&emsp;<a href="javascript:void(0);" onclick="doPreView(1)">预览</a></span>
                    <div class="mod-col-tip">
                    输入提示：请保证地址为“http（或https）：//…………”格式开头的网址。
                    </div>
                </li>
                <li<c:if test="${!empty data and data.supplyChannelForms[0].clickJumpType ne 1 }"> class="hide"</c:if>>
                    <!-- <label class="mod-col-3" for="name">链接类型：</label>
                    <div class="mod-col-5">
                        <label class="label-rbtn">
                            <input type="radio" name="supplyChannelForms[0].linkType" id="linkEcnew1" value="1"<c:if test="${data.supplyChannelForms[0].linkType eq 1 }"> checked</c:if>/> 资讯样式（操作栏有返回、分享、收藏、搜索）
                        </label>
                        <label class="label-rbtn">
                            <input type="radio" name="supplyChannelForms[0].linkType" id="linkEcdoc1" value="2"<c:if test="${data.supplyChannelForms[0].linkType eq 2 }"> checked</c:if>/> 资料样式（操作栏有返回、下载、分享、收藏、搜索）
                        </label>
                        <label class="label-rbtn">
                            <input type="radio" name="supplyChannelForms[0].linkType" id="linkExternal1" value="3"<c:if test="${data.supplyChannelForms[0].linkType eq 3 }"> checked</c:if>/> 外链样式（操作栏仅返回，带页头）
                        </label>
                        <label class="label-rbtn">
                            <input type="radio" name="supplyChannelForms[0].linkType" id="linkActi1" value="6"<c:if test="${data.supplyChannelForms[0].linkType eq 6 }"> checked</c:if>/> 研讨会活动样式（操作栏有返回、分享、报名按钮）
                        </label>
                    </div>-->
                </li>
                <li<c:if test="${empty data or data.supplyChannelForms[0].clickJumpType eq 1 or data.supplyChannelForms[0].clickJumpType eq 4 }"> class="hide"</c:if>>
                    <label class="mod-col-3">输入关键字：</label>
                    <div class="mod-col-5">
                        <input class="form-control" type="text" maxlength="35" value="${data.supplyChannelForms[0].searchKeyword }" id="searchKeyword1" name="supplyChannelForms[0].searchKeyword"/>
                    </div>
                </li>
                <li>
                    <label class="mod-col-3">上传图片：</label>
                    <div class="mod-col-5">
                        <div class="model-up-banner mt10" style="width: 125px;height: 90px;" >
                            <table style="margin-left: 18px;width: 100%;height: 90px;">
                                <tr style="vertical-align: top;">
                                    <td>
                                         <div class="img-preview mt10">
                                             <div class="upload-default-img" id="col1_thumbnail" >
                                                 <div class="thumbnail-wrap" id="col1" <c:if test="${empty data.supplyChannelForms[0].appImgUrl }">style="display: none;"</c:if>>
                                                    <a class="img-a" target="_blank" id="col1_img_href" href="">
                                                        <img src="${imageLoadPath }${data.supplyChannelForms[0].appImgUrl }" id="col1_img"/>
                                                    </a>
                                                    <a class='del-thum'></a>
                                                 </div>
                                             </div>
                                             <input type="file" class="upload-banner" id="upload1" name="upload1" data-target="col1_thumbnail" data-width="250" data-height="60" data-src=""/>
                                         </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div id="upload1Container"></div>
                    </div>
                    <span class="required">*</span>
                </li>
            </ul>
        </div>
    </div>
	
    <div class="accordion-panel<c:if test="${empty data or data.displayColumn eq 1 }"> hide</c:if>" id="accordion-panel2">
        <div class="accordion-title">
            <div class="accordion-title-wrap">
                <div class="accordion-title-line"></div>
            </div>
            <h3>列2信息</h3>
            <a class="accordion-title-icon" href="javascript:void(0);"></a>
        </div>
        <div class="accordion-content">
            <ul class="mod-row mod-row-lg">
                <li>
                    <label class="mod-col-3" for="name">列名称：</label>
                    <div class="mod-col-5">
                    	<input id="channelFormId2" name="supplyChannelForms[1].id" type="hidden" value="${data.supplyChannelForms[1].id }"/>
                    	<input id="channelId2" name="supplyChannelForms[1].channelId" type="hidden" value="${data.supplyChannelForms[1].channelId }"/>
                        <input id="columnName2" name="supplyChannelForms[1].columnName" value="${data.supplyChannelForms[1].columnName }" class="form-control" type="text" maxlength="16" placeholder="请输入...（2~16个字）" />
                    </div>
                    <span class="required">*</span>
                </li>
                <li>
                    <label class="mod-col-3" for="name">点击跳转：</label>
                    <div class="mod-col-5 clickJumpType">
                        <label class="label-rbtn">
                            <input type="radio"  name="supplyChannelForms[1].clickJumpType" id="clickToweb2" value="1" <c:if test="${empty data or data.supplyChannelForms[1].clickJumpType eq 1 }"> checked</c:if>/> 网页
                        </label>
                        <label class="label-rbtn">
                            <input type="radio"  name="supplyChannelForms[1].clickJumpType" id="clickToSearch2" value="2" <c:if test="${data.supplyChannelForms[1].clickJumpType eq 2 }"> checked</c:if>/> 通用搜索
                        </label>
                        <label class="label-rbtn">
                            <input type="radio"  name="supplyChannelForms[1].clickJumpType" id="clickToSupply2" value="3"<c:if test="${data.supplyChannelForms[1].clickJumpType eq 3 }"> checked</c:if> /> 元件搜索
                        </label>
                        <label class="label-rbtn">
                            <input type="radio" name="supplyChannelForms[1].clickJumpType" id="clickToAppPromotion2" value="4"<c:if test="${data.supplyChannelForms[1].clickJumpType eq 4 }"> checked</c:if>/> app元件促销页
                        </label>
                    </div>
                </li>
                <li<c:if test="${data.supplyChannelForms[1].clickJumpType eq 2 or data.supplyChannelForms[1].clickJumpType eq 3 or data.supplyChannelForms[1].clickJumpType eq 4 }"> class="hide"</c:if>>
                    <label class="mod-col-3" for="name">链接地址：</label>
                    <div class="mod-col-5">
                        <input id="linkUrl2" name="supplyChannelForms[1].linkUrl" class="form-control" type="text" maxlength="300" value="<c:choose><c:when test='${!empty data and data.displayColumn ge 2 and data.supplyChannelForms[1].clickJumpType eq 1 }'>${data.supplyChannelForms[1].linkUrl }</c:when><c:otherwise>http://</c:otherwise></c:choose>"/>
                    </div>
                    <span>&emsp;<a href="javascript:void(0);" onclick="doPreView(2)">预览</a></span>
                    <div class="mod-col-tip">
                    输入提示：请保证地址为“http（或https）：//…………”格式开头的网址。
                    </div>
                </li>
                
                <li<c:if test="${data.supplyChannelForms[1].clickJumpType eq 2 or data.supplyChannelForms[1].clickJumpType eq 3 or data.supplyChannelForms[1].clickJumpType eq 4 }"> class="hide"</c:if>>
                    <!-- <label class="mod-col-3" for="name">链接类型：</label>
                    <div class="mod-col-5">
                        <label class="label-rbtn">
                            <input type="radio" name="supplyChannelForms[1].linkType" id="linkEcnew2" value="1"<c:if test="${data.supplyChannelForms[1].linkType eq 1 }"> checked</c:if>/> 资讯样式（操作栏有返回、分享、收藏、搜索）
                        </label>
                        <label class="label-rbtn">
                            <input type="radio"name="supplyChannelForms[1].linkType" id="linkEcdoc2" value="2"<c:if test="${data.supplyChannelForms[1].linkType eq 2 }"> checked</c:if>/> 资料样式（操作栏有返回、下载、分享、收藏、搜索）
                        </label>
                        <label class="label-rbtn">
                            <input type="radio" name="supplyChannelForms[1].linkType" id="linkExternal2" value="3"<c:if test="${data.supplyChannelForms[1].linkType eq 3 }"> checked</c:if>/> 外链样式（操作栏仅返回，带页头）
                        </label>
                        <label class="label-rbtn">
                            <input type="radio"name="supplyChannelForms[1].linkType" id="linkActi2" value="6"<c:if test="${data.supplyChannelForms[1].linkType eq 6 }"> checked</c:if>/> 研讨会活动样式（操作栏有返回、分享、报名按钮）
                        </label>
                    </div> -->
                </li>
                    
                <li<c:if test="${empty data or data.supplyChannelForms[1].clickJumpType eq 1 or data.supplyChannelForms[1].clickJumpType eq 4 }"> class="hide"</c:if>>
                    <label class="mod-col-3">输入关键字：</label>
                    <div class="mod-col-5">
                        <input class="form-control" type="text" maxlength="35" value="${data.supplyChannelForms[1].searchKeyword }" id="searchKeyword2" name="supplyChannelForms[1].searchKeyword"/>
                    </div>
                </li>
                <li>
                    <label class="mod-col-3">上传图片：</label>
                    <div class="mod-col-5">
                        <div class="model-up-banner mt10" style="width: 125px;height: 90px;" >
                            <table style="margin-left: 18px;width: 100%;height: 90px;">
                                <tr style="vertical-align: top;">
                                    <td>
                                         <div class="img-preview mt10">
                                             <div class="upload-default-img" id="col2_thumbnail" >
                                                 <div class="thumbnail-wrap" id="col2" <c:if test="${empty data.supplyChannelForms[1].appImgUrl }">style="display: none;"</c:if>>
                                                    <a class="img-a" target="_blank" id="col2_img_href" href="">
                                                        <img src="${imageLoadPath }${data.supplyChannelForms[1].appImgUrl }" id="col2_img"/>
                                                    </a>
                                                    <a class='del-thum'></a>
                                                 </div>
                                             </div>
                                             <input type="file" class="upload-banner" id="upload2" name="upload2" data-target="col2_thumbnail" data-width="250" data-height="60" data-src=""/>
                                         </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div id="upload2Container"></div>
                    </div>
                    <span class="required">*</span>
                </li>
            </ul>
        </div>
    </div>

    <div class="accordion-panel<c:if test="${empty data or data.displayColumn le 2 }"> hide</c:if>" id="accordion-panel3">
        <div class="accordion-title">
            <div class="accordion-title-wrap">
                <div class="accordion-title-line"></div>
            </div>
            <h3>列3信息</h3>
            <a class="accordion-title-icon" href="javascript:void(0);"></a>
        </div>
        <div class="accordion-content">
            <ul class="mod-row mod-row-lg">
                <li>
                    <label class="mod-col-3" for="name">列名称：</label>
                    <div class="mod-col-5">
                    	<input id="channelFormId3" name="supplyChannelForms[2].id" type="hidden" value="${data.supplyChannelForms[2].id }"/>
                    	<input id="channelId3" name="supplyChannelForms[2].channelId" type="hidden" value="${data.supplyChannelForms[2].channelId }"/>
                        <input id="columnName3" name="supplyChannelForms[2].columnName" value="${data.supplyChannelForms[2].columnName }" class="form-control" type="text" maxlength="16" placeholder="请输入...（2~16个字）" />
                    </div>
                    <span class="required">*</span>
                </li>
                <li>
                    <label class="mod-col-3" for="name">点击跳转：</label>
                    <div class="mod-col-5 clickJumpType">
                        <label class="label-rbtn">
                            <input type="radio" name="supplyChannelForms[2].clickJumpType" id="clickToweb3" value="1" <c:if test="${empty data or data.supplyChannelForms[2].clickJumpType eq 1 }"> checked</c:if>/> 网页
                        </label>
                        <label class="label-rbtn">
                            <input type="radio" name="supplyChannelForms[2].clickJumpType" id="clickToSearch3" value="2" <c:if test="${data.supplyChannelForms[2].clickJumpType eq 2 }"> checked</c:if>/> 通用搜索
                        </label>
                        <label class="label-rbtn">
                            <input type="radio" name="supplyChannelForms[2].clickJumpType" id="clickToSupply3" value="3" <c:if test="${data.supplyChannelForms[2].clickJumpType eq 3 }"> checked</c:if>/> 元件搜索
                        </label>
                        <label class="label-rbtn">
                            <input type="radio" name="supplyChannelForms[2].clickJumpType" id="clickToAppPromotion3" value="4"<c:if test="${data.supplyChannelForms[2].clickJumpType eq 4 }"> checked</c:if>/> app元件促销页
                        </label>
                    </div>
                </li>
                <li<c:if test="${data.supplyChannelForms[2].clickJumpType eq 2 or data.supplyChannelForms[2].clickJumpType eq 3 or data.supplyChannelForms[2].clickJumpType eq 4}"> class="hide"</c:if>>
                    <label class="mod-col-3" for="name">链接地址：</label>
                    <div class="mod-col-5">
                        <input class="form-control" id="linkUrl3" name="supplyChannelForms[2].linkUrl" type="text" maxlength="300" value="<c:choose><c:when test='${!empty data and data.displayColumn eq 3 and data.supplyChannelForms[2].clickJumpType eq 1 }'>${data.supplyChannelForms[2].linkUrl }</c:when><c:otherwise>http://</c:otherwise></c:choose>" />
                    </div>
                    <span>&emsp;<a href="javascript:void(0);" onclick="doPreView(3)">预览</a></span>
                    <div class="mod-col-tip">
                    输入提示：请保证地址为“http（或https）：//…………”格式开头的网址。
                    </div>
                </li>
                <li<c:if test="${data.supplyChannelForms[2].clickJumpType eq 2 or data.supplyChannelForms[2].clickJumpType eq 3 or data.supplyChannelForms[2].clickJumpType eq 4}"> class="hide"</c:if>>
                   <%--  <label class="mod-col-3" for="name">链接类型：</label>
                    <div class="mod-col-5">
                        <label class="label-rbtn">
                            <input type="radio"name="supplyChannelForms[2].linkType" id="linkEcnew3" value="1" <c:if test="${data.supplyChannelForms[2].linkType eq 1 }"> checked</c:if>/> 资讯样式（操作栏有返回、分享、收藏、搜索）
                        </label>
                        <label class="label-rbtn">
                            <input type="radio"name="supplyChannelForms[2].linkType" id="linkEcdoc3" value="2" <c:if test="${data.supplyChannelForms[2].linkType eq 2 }"> checked</c:if>/> 资料样式（操作栏有返回、下载、分享、收藏、搜索）
                        </label>
                        <label class="label-rbtn">
                            <input type="radio" name="supplyChannelForms[2].linkType" id="linkExternal3" value="3"<c:if test="${data.supplyChannelForms[2].linkType eq 3 }"> checked</c:if>/> 外链样式（操作栏仅返回，带页头）
                        </label>
                        <label class="label-rbtn">
                            <input type="radio"name="supplyChannelForms[2].linkType" id="linkActi3" value="6" <c:if test="${data.supplyChannelForms[2].linkType eq 6 }"> checked</c:if>/> 研讨会活动样式（操作栏有返回、分享、报名按钮）
                        </label>
                    </div> --%>
                </li>
                   
                <li<c:if test="${empty data or data.supplyChannelForms[2].clickJumpType eq 1 or data.supplyChannelForms[2].clickJumpType eq 4 }"> class="hide"</c:if>>
                    <label class="mod-col-3">输入关键字：</label>
                    <div class="mod-col-5">
                        <input class="form-control" type="text" maxlength="35" value="${data.supplyChannelForms[2].searchKeyword }" id="searchKeyword2" name="supplyChannelForms[2].searchKeyword"/>
                    </div>
                </li>
                <li>
                    <label class="mod-col-3">上传图片：</label>
                    <div class="mod-col-5">
                        <div class="model-up-banner mt10" style="width: 125px;height: 90px;" >
                            <table style="margin-left: 18px;width: 100%;height: 90px;">
                                <tr style="vertical-align: top;">
                                    <td>
                                         <div class="img-preview mt10">
                                             <div class="upload-default-img" id="col3_thumbnail" >
                                                 <div class="thumbnail-wrap" id="col3" <c:if test="${empty data.supplyChannelForms[2].appImgUrl }">style="display: none;"</c:if>>
                                                    <a class="img-a" target="_blank" id="col3_img_href" href="">
                                                        <img src="${imageLoadPath }${data.supplyChannelForms[2].appImgUrl }" id="col3_img"/>
                                                    </a>
                                                    <a class='del-thum'></a>
                                                 </div>
                                             </div>
                                             <input type="file" class="upload-banner" id="upload3" name="upload3" data-target="col3_thumbnail" data-width="250" data-height="60" data-src=""/>
                                         </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div id="upload3Container"></div>
                    </div>
                    <span class="required">*</span>
                </li>
            </ul>
        </div>
    </div>

</div>
<div class="accordion-btns mod-row-btns">
	<input class="btn btn-warning btn-mid" type="button" value="保 存" id="saveBtn"/>
    <input class="btn btn-default btn-mid" type="button" value="取 消" onclick="reback();"/>
</div>
</form>
<%@include file="/jsp/base/jsBase.jsp"%>
<script src="${publicPath}/js/common/plu/jquery/form/jquery.form.js"></script>
<script src="${publicPath}/js/supply/partnumberSupply/supplyChannelAdd.js"></script>
</body>
