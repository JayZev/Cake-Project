package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016101900724481";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCs9ngLp2VCNW7f/ClzArvhfP8uRHkp+DbIPYpmpyMjIxTtFKBXwVlkibBO0DDze7m2eRImLQADmqp9VpncbBHc1DGa/x5hLhtTj8cT3SWsurHqVYtfRl7UQ92rSJj3hpyI3uUQ/MUBAtJZ4R6aNG+jgtgcFf4kYfYAdT8c6Ej3fWOcQab6x/gEbQJy3r0DXDt1kEQpEyv0rqBG8DyDMhiotPlTpCYDDwNZFRb1O3xnX877swg+UI1yIkx2f52bLLjIOBfkF+3EnHmreHvQ7Kjs5FwHlJ39uY3H3mjef5HIsMcklRIIJC41NgXZ7HJExx7+Zg2nXqSZ7n5BCNtjx6HAgMBAAECggEAS1UlDp1asUhK0hItfSjWbliIz5aXur3NvVsig3Rj7+mNffF+HroyL1t+DTOs2lW6gq15qzESLBdn47yfrviI+QxAC5XKiQX2CazFtGF1vb0aJAh75HvLuS/i6MsSTEuqNdFOxk4IJg1uhIc99dLKnIz/D+BH2VANnGERFGB0z5grYJuOU0Dhfey/3OxV4P+jvop0TKP5i5VUQyXW9Wmmt5V9Swp9q0lIBwhXyfenbGe1MWmdlAR5K874/ppKgcDMGeJJJ8ILF9FrsW3wU8JAb6V4UKJAWIfNKnWsrGRqXPwqHNU97400ANJ5sU2VlUUHiCR/PMoBPblS4/yqemo1OQKBgQDw1wrPlrCkw0qRW3jMFZPI9gBiCp90/4MZpohQLsIuE6WFWSD6ijsDsDJwwKp3BM/Nxh0xMyQjO3HEG364KJddOnaI5ya9BHa4Fq8IiDObQhD63nm2Pvqmra/2XXp5iy8+osYWqJXNHBa1JW7hoT/TAa32IFtF/Krvrcuydwo3TQKBgQDO9VZ/E4g7QhwdPhsWW6iGCMEI9exjeE+Mk5npLFzYOVJdjgHx3iKZeQFR4Tdks5GjHOLzLi7M5Vu9L8PORjU57ccNx8tN2o1lCg9zAO117gyDlnP3/vP5ATbSxwWebI1jFsEOjvvFcHpOuRRBNc1IMZ2BqpWJPb8gUTjMzc5LIwKBgQDEXeF/rpLqVBzpdZaBeBpeIU3gol6vK2H+OQ0tq2JB5Vzw4+ICxVAmyrPlwQF8N10jnyPQKK2PWHmC9xQUHWyE5BUfvLCWLxyJLl2abEr/jReBJIJCeQkve7BcBI3GqhhkTp2KffxeF0fgfNvydeIvLlBjvLAO2VuaPq82HN8khQKBgQCnEWR+9xyNgcPCU4V4WgvED8MM4cGvVssY13pywi49GqEEBwRI5SKXNBi9qYqXD2KtAz+uQgTjwO963Nk7Zm/HUMzUsgnL0nc8Lo/kLcaD4eRWQZlihH0c8T75jlJZ3pWQfSjiAMj8TN1fOYdBURZjhjH5H+TRQnhMtWSd6DH1cwKBgBskTjntD1ZIc9miemSzB9MfBMV6ngoTR4HVE/pHL4Vfo+U/jwe0tFv20VzP+oUyF+xKu+uJT94GPM0xho5V/BaAsGDzQmGulubEKDcV7BnNmIp/R1tfpwa0pSIxHUH6R30nsHnNWZ17K/3Dr1eR62wxou2jIecRh20d51AOXdCe";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwrPZ4C6dlQjVu3/wpcwK74Xz/LkR5Kfg2yD2KZqcjIyMU7RSgV8FZZImwTtAw83u5tnkSJi0AA5qqfVaZ3GwR3NQxmv8eYS4bU4/HE90lrLqx6lWLX0Ze1EPdq0iY94aciN7lEPzFAQLSWeEemjRvo4LYHBX+JGH2AHU/HOhI931jnEGm+sf4BG0Cct69A1w7dZBEKRMr9K6gRvA8gzIYqLT5U6QmAw8DWRUW9Tt8Z1/O+7MIPlCNciJMdn+dmyy4yDgX5BftxJx5q3h70Oyo7ORcB5Sd/bmNx95o3n+RyLDHJJUSCCQuNTYF2exyRMce/mYNp16kme5+QQjbY8ehwIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问/gateway.do/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp
	public static String notify_url = "https://openapi.alipaydev.com/gateway.do";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/CakeProject/NewCheckoutServlet";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "https://openapi.alipaydev.com/gateway.do";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

