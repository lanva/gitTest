<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>${orderTitle}处理通知邮件(系统邮件请勿回复)</title>
    <style type="text/css">
        * { padding: 0; margin: 0; }
        body,html{ width: 100%; height: 100%; }
        ul li { list-style-type: none; }
        a:hover { color: #ec6a00; }
        td {padding: 5px 0; word-break: break-all;}
        .mt50 {margin-top: 50px}
        .a9a9a9 { color: #a9a9a9; }
        .ec6a00 { color: #ec6a00; }
        .layout { width: 800px; margin: 0 auto; }
        .header { width: 100%; height: 60px;  border-bottom: 1px solid; }
        .logo-wrap{float: left;}
        .logo { display: inline-block; width: 135px; height: 25px; border: 1px solid;}
        .bg-g {background: #f2f2f2}
        .pd-1 {padding: 7px 15px}
        .wd80 {width: 80px}
        .menu-wrap { float: right; }
        .menu-wrap li { float:left; margin-right: 10px; }
        .menu-wrap li a { font-size: 12px; display: inline-block;}
        .content { width: 100%; padding: 20px 0; font-size: 12px; }
        .content p { display:block; font-size: 12px; margin-bottom: 25px; line-height: 20px; }
        .content strong { display:inline-block; font-size: 12px; margin-bottom: 25px; }
        .content .font-x { font-size: 14px;}
        .content .text-dashed-b { margin-top: 20px; border-bottom: 1px dashed #515050; width: 100%; }
        .table-wrap { }
    </style>
</head>
<body>
<div class="layout">
    <div class="header">
        <table cellspacing="0" cellpadding="0" border="0" width="100%">
            <tr>
                <td width="200" height="86" >
                    <img width="135" height="25" style="border: none;" src="${webUrl}/front/website/images/email_logo.png"/>
                </td>
                <td align="right" style="font-size:14px;">
                    <a style="color:#313131; text-decoration:none; cursor:pointer;" href="${portalIndex}">网站首页</a>&nbsp;&nbsp;<a style="color:#313131; text-decoration:none; cursor:pointer;" href="${portalMemberInfo}">会员中心</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="content">
        <strong class="font-x">尊敬的${username}, 您好！</strong>
        <p>${secTitle} 详情如下：</p>
        <div class="table-wrap">
            <table  cellpadding="0" cellspacing="0" border="0" >
                <tr class="bg-g"><td colspan="2" class="pd-1">${orderTitle}信息</td></tr>
                <tr>
                    <td class="pd-1">
                        <table  cellpadding="0" cellspacing="0" border="0" >
                            <tr><td class="wd80">型&nbsp;&nbsp;&nbsp;&nbsp;号</td><td>${order.pnCode}</td></tr>
                            <tr><td class="wd80">品&nbsp;&nbsp;&nbsp;&nbsp;牌</td><td>${order.brand}</td></tr>
                            <tr><td>${pcsTitle}</td><td>${order.pcs} &nbsp;pcs</td></tr>
                            <tr><td valign="top">项目描述</td><td>${order.projectDesc}</td></tr>
                        </table>
                    </td>
                </tr>
                <tr class="bg-g"><td colspan="2" class="pd-1">单据状态</td></tr>
                <tr>
                    <td class="pd-1">
                        <table  cellpadding="0" cellspacing="0" border="0" >
                            <tr><td class="wd80">提交时间</td><td>${order.createTime?datetime}</td></tr>
                            <tr><td>状&nbsp;&nbsp;&nbsp;&nbsp;态</td><td>${processStatus}</td></tr>
                            <tr><td>处理时间</td><td>${order.updateTime?datetime}</td></tr>
                        </table>
                    </td>
                </tr>
                <tr class="bg-g">
                    <td class="pd-1">
                        <table  cellpadding="0" cellspacing="0" border="0" >
                            <tr><td colspan="2">如有任何疑问，欢迎随时与您的服务代表联系！</td></tr>
                            <tr><td  class="wd80">服务代表</td><td>${order.csName}</td></tr>
                            <tr><td>联系电话</td><td>${order.csPhone}</td></tr>
                            <tr><td>邮&nbsp;&nbsp;&nbsp;&nbsp;箱</td><td>${order.csEmail}</td></tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <table cellspacing="0" cellpadding="0" border="0" width="100%">
            <tr>
                <td style="padding:50px 0;color: #000">
                    世强元件电商团队<br />
                ${curdate?date}
                </td>
            </tr>
            <tr>
                <td style="background:#f9f9f9; border-top:1px dotted #b9b9b9; padding: 20px 40px;">
                    <table cellspacing="0" cellpadding="0" border="0" width="100%">
                        <tr>
                            <td align="left" height="98" width="120">
                                <span style="display:block;"> <img width="96" height="96" style="border: 1px solid #e5e5e5; background: #FFFFFF;" src=${cekomLogoPath} /></span>
                            </td>
                            <td style="font-size: 14px; color: #000000;">
                                更多最新资讯，请扫码下载&nbsp;<span style="color: #ec6a00;">世强元件电商APP</span>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>

    </div>
</div>
</body>
</html>