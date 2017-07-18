<!DOCTYPE html>
<html>
<head lang="en">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>${orderTitle}</title>
    
</head>
<body style="background:#e7ebee; padding: 0; margin: 0;">
    <div align="center">
        <table cellpadding="0" cellspacing="0" border="0" width="760">
            <tr>
                <td style="mso-line-height-rule: exactly;width: 760px;height: 10px;font-size: 0;">
                    <img style="vertical-align: middle;border: none 0;" alt="世强先进" src="${webUrl}/front/website/images/top.gif">
                </td>
            </tr>
        </table>
        <table style="background: #fff;" cellpadding="0" cellspacing="0" border="0" width="760">
            <tr>
                <td style="mso-line-height-rule: exactly;width: 360px;font-size: 0;text-align: left;border-bottom: 1px solid #f0f0f0;">
                    <img style="vertical-align: middle;border: none 0;" alt="世强先进" width="138" height="45" src="${webUrl}/front/website/images/logo.png">
                </td>
                <td style="mso-line-height-rule: exactly;width: 120px;text-align: left;height: 116px;border-bottom: 1px solid #f0f0f0;">
                    <table cellpadding="0" cellspacing="0" border="0" width="100%">
                        <tr>
                            <td style="mso-line-height-rule: exactly;width: 380px;height: 20px;color:#808080;font-size: 12px;">服务热线</td>                   
                        </tr>
                        <tr>
                            <td style="mso-line-height-rule: exactly;width: 380px;height: 24px;color:#333;font-size: 16px;">400-887-3266</td>
                        </tr>
                    </table>
                </td>
                <td style="mso-line-height-rule: exactly;width: 170px;text-align: left;height: 116px;border-bottom: 1px solid #f0f0f0;">
                    <table>
                        <tr>
                            <td style="mso-line-height-rule: exactly;width: 100px;font-size: 0;">
                                <img width="86" style="vertical-align: middle;border: none 0;display: block;width: 86px;" alt="世强先进" src="http://file.sekorm.com/fileStore/bdm/qrCode/logo_sekorm_app.jpg">
                            </td>
                            <td style="mso-line-height-rule: exactly;height: 117px;text-align: center;">
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                    <tr>
                                        <td style="mso-line-height-rule: exactly;width: 100%;font-size: 12px;text-align: left;height: 24px;color: #808080;">
                                            搞研发 找元件</td>
                                    </tr>
                                    <tr>
                                        <td style="mso-line-height-rule: exactly;width: 100%;font-size: 12px;text-align: left;height: 24px;color: #fc6f00;">
                                            上世强元件电商</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>

        <table style="background: #fff; font-size:14px; color:#333" cellpadding="0" cellspacing="0" border="0" width="760">
            <tr>
                <td width="30"></td>
                <td>
                    <table>
                        <tr style="height: 34px;">
                            <td>亲爱的${name}, 您好！</td>
                        </tr>
                    </table>
                    <table>
                        <tr style="height: 20px;">
                            
                            <td>${orderText}</td>
                        </tr>
                        <tr style="height: 20px;">
                            <td>了解订单状态和查看订单详情，请登录官网或APP > 我的 > <a href="${webUrl}/mem/order/main" style="color: #5f97d8;">我的订单</a>。</td>
                        </tr>
                        <tr style="height: 14px;">
                            <td></td>
                        </tr>
                    </table>
                    <table>
                        <tr style="height: 20px;">
                            <td>订 单 号: ${orderCode}</td>
                        </tr>
                        <tr style="height: 20px;">
                            <td>订单时间: ${createTime?string("yyyy-MM-dd HH:mm:ss")}</td>
                        </tr>
                        <tr style="height: 20px;">
                            <td>订单状态: 
					              <#if orderStatus == 1>正在出库
					              <#elseif orderStatus == 2>待收货
					              <#elseif orderStatus == 4>已取消
					              <#else>处理中
					              </#if>
					         </td>
                        </tr>
                        <tr style="height: 20px;">
                            <td>支付方式:
                                  <#if payChannel == 0>未支付
                                      <#elseif payChannel == 1 || payChannel == 2>微信支付
					                  <#elseif payChannel == 3 || payChannel == 4>支付宝
					                  <#elseif payChannel == 5>银行汇款
					                  <#else>其它
					              </#if> 
                            </td>
                        </tr>
                        <tr style="height: 20px;">
                            <td>配送方式:
                                  <#if goodsPostType == 0>顺丰速运        
					                  <#elseif goodsPostType == 1>圆通 
					                  <#else>其它
					              </#if>  
                            </td>
                        </tr>
                        <#if orderStatus ==2 && goodsPostNum != "" >	                                  
	                        <tr style="height: 20px;">
                            <td>物流单号:  ${goodsPostNum}                                
                            </td>
                        </tr>             
	                     </#if>       
                    </table>
                    <#if orderStatus == 1 || orderStatus == 4 >	
                        <table>
	                        <tr><td height='14'></td></tr>
	                        <tr>
	                            <td style="font-size:16px;font-weight: bold;">>> 订单详细信息</td>
	                        </tr>
	                        <tr><td height='14'></td></tr>
	                        <tr>
	                            <td height="26" style="font-size:14px;font-weight: bold;">送货地址</td>
	                        </tr>
	                    </table>
	                    <table>
	                        <tr>
	                            <td height="20">收 货 人：${goodsReceiver} ${goodsPhone}</td>
	                        </tr>
	                        <tr>
	                            <td height="20">收货地址：${goodsAreaName} ${goodsAddress}</td>
	                        </tr>
	                        <tr><td height='14'></td></tr>
	                        <tr>
	                            <td height="26" style="font-size:14px;font-weight: bold;">发票信息</td>
	                        </tr>                                                
	                        <tr>
	                            <td height="20">
	                                 <#if invoiceType == 1>发票类型：增值税普通发票             
					                     <#elseif invoiceType == 2>发票类型：增值税专用发票                      
					                     <#else>不需要发票                						   						    						    				
					                  </#if>
	                          </td>
	                        </tr>
	                         <#if invoiceType == 1>
	                            <tr>
	                                <td height="20">发票抬头：${invoiceInfo.companyName}</td>
	                            </tr>   
	                            <#if invoiceInfo.dutyNum != "" >
	                                <tr>
	                                    <td height="20">纳税人识别号：${invoiceInfo.dutyNum}</td>
	                                </tr>  	
	                            </#if>	                                                      
	                         <#elseif invoiceType == 2>  
	                               <tr>
	                                <td height="20">公司名称：${invoiceInfo.companyName}</td>
	                               </tr>   
	                               <tr>
	                                <td height="20">纳税人识别号：${invoiceInfo.dutyNum}</td>
	                               </tr>   
	                               <tr>
	                                <td height="20">注册地址：${invoiceInfo.address}</td>
	                               </tr>   
	                               <tr>
	                                <td height="20">注册电话：${invoiceInfo.phone}</td>
	                               </tr>   
	                               <tr>
	                                <td height="20">开户银行名称：${invoiceInfo.bank}</td>
	                               </tr>   
	                               <tr>
	                                <td height="20">开户银行账号：${invoiceInfo.bankAccount}</td>
	                               </tr>          						   						    							   				  
							 </#if>                                          
	                        
	                        <tr><td height='20'></td></tr>
	                        <tr>
	                            <td style="font-size:16px;font-weight: bold;">商品清单</td>
	                        </tr>
	                        <tr>
	                            
	                            <td>
	                                <table cellpadding="0" cellspacing="0" border="0" style="font-size:12px;text-align:center;">
	                                    <tr style="background-color: #f5f5f5;">
	                                        <th width="50" height='32' style="border-top:1px solid #eee;border-bottom:1px solid #eee;">序号</th>
	                                        <th width="150" height='32' style="border-top:1px solid #eee;border-bottom:1px solid #eee;">型号</th>
	                                        <th width="150" height='32' style="border-top:1px solid #eee;border-bottom:1px solid #eee;">品牌</th>
	                                        <th width="100" height='32' style="border-top:1px solid #eee;border-bottom:1px solid #eee;">单价（RMB）</th>
	                                        <th width="100" height='32' style="border-top:1px solid #eee;border-bottom:1px solid #eee;">数量</th>
	                                        <th width="150" height='32' style="border-top:1px solid #eee;border-bottom:1px solid #eee;">小计（RMB）</th>
	                                    </tr>
	                                    <#list pnList as detail>   
	                                    <tr>
	                                        <td height='32' style="border-top:1px solid #eee;border-bottom:1px solid #eee;">${detail_index+1}</td>
	                                        <td height='32' style="border-top:1px solid #eee;border-bottom:1px solid #eee;">${detail.pnCode}</td>
	                                        <td height='32' style="border-top:1px solid #eee;border-bottom:1px solid #eee;">${detail.brandName}</td>
	                                        <td height='32' style="border-top:1px solid #eee;border-bottom:1px solid #eee;">${detail.price?string('#.####')}</td>
	                                        <td height='32' style="border-top:1px solid #eee;border-bottom:1px solid #eee;">${detail.amount}</td>
	                                        <td height='32' style="border-top:1px solid #eee;border-bottom:1px solid #eee;">${detail.totalAmount?string('#.####')}</td>
	                                    </tr>
	                                    </#list>  
	                                </table>
	                            </td>
	                              
	                        </tr>
	                        <tr><td height='14'></td></tr>
	                        <tr>
	                        	<td>
	                        		<table cellpadding="0" cellspacing="0" border="0" style="text-align: right;">
	                        			<tr>
	                        				<td width="277" height="20"></td>
	                        				<td width="300" height="20">商品总计：</td>
	                        				<td width="120" height="20">¥${goodsAmount?string('#.####')}</td>
	                        			</tr>
	                        			<tr>
	                        				<td height="20"></td>
	                        				<td height="20">服务费(运费)：</td>
	                        				<td height="20">¥${goodsPostFee?string('#.####')}</td>
	                        			</tr>	                        			
	                                    <tr>
	                                        <td height="20"></td>
	                                        <td height="20">订单总金额：</td>
	                                        <td height="20" style="color:#ff6d00;">¥${totalAmount?string('#.##')}</td>
	                                    </tr>
	                                    <#if dealAmount != 0 >	                                  
		                                     <tr>
		                                        <td height="20"></td>
		                                        <td height="20">优惠后订单总金额：</td>
		                                        <td height="20" style="color:#ff6d00;">¥${dealAmount?string('#.##')}</td>
		                                    </tr>
		                               </#if>                                    
	                        		</table>
	                        	</td>
	                        </tr>
	                        <tr><td height='15'></td></tr>
	                    </table>
                    </#if>
	                    
                </td>
            </tr>
        </table>
             
        <table cellpadding="0" cellspacing="0" border="0" width="760">
            <tr>
                <td style="mso-line-height-rule: exactly;width: 760px;height: 150px;background: #fafafa;border-top: 1px solid #f5f5f5;">
                    <table cellpadding="0" cellspacing="0" border="0" width="760">
                        <tr>
                            <td style="mso-line-height-rule: exactly;width: 40px;"></td>
                            <td style="mso-line-height-rule: exactly;width: 100px;height: 150px;font-size: 0;">
                                <img width="86" style="vertical-align: middle;border: none 0;display: block;width: 86px;" alt="世强先进" src="http://file.sekorm.com/fileStore/bdm/qrCode/logo_sekorm_app.jpg">
                            </td>
                            <td style="mso-line-height-rule: exactly;width: 280px;height: 150px;text-align: center;">
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                    <tr>
                                        <td style="mso-line-height-rule: exactly;width: 100%;font-size: 14px;text-align: left;height: 24px;color: #808080;">
                                            搞研发 找元件</td>
                                    </tr>
                                    <tr>
                                        <td style="mso-line-height-rule: exactly;width: 100%;font-size: 14px;text-align: left;height: 24px;color: #fc6f00;">
                                            上世强元件电商</td>
                                    </tr>
                                </table>
                            </td>
                            <td style="mso-line-height-rule: exactly;height: 150px;text-align: left;">
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                    <tr>
                                        <td style="mso-line-height-rule: exactly;width: 100%;font-size: 12px;text-align: left;height: 24px;color: #808080;">
                                            © 2017 深圳市世强先进科技有限公司. 保留所有权利
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="mso-line-height-rule: exactly;width: 100%;font-size: 12px;text-align: left;height: 24px;color: #808080;">
                                            服务热线：40088-73266
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="mso-line-height-rule: exactly;width: 100%;font-size: 12px;text-align: left;height: 24px;color: #808080;">
                                            邮 箱：service@sekorm.com
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    
                </td>
            </tr>
        </table>

        <table cellpadding="0" cellspacing="0" border="0" width="760">
            <tr>
                <td style="mso-line-height-rule: exactly;width: 760px;height: 6px;font-size: 0;">
                    <div align="center"><img style="vertical-align: middle;border: none 0;" alt="世强先进" src="${webUrl}/front/website/images/bottom.gif">
                    </div>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
