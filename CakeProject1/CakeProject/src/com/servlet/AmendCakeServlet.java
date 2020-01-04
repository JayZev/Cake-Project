package com.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.ProgressListener;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.bean.Cake;
import com.service.ICakeService;
import com.service.impl.CakeService;


public class AmendCakeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ICakeService cservice;     
   
    public AmendCakeServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
		
	}

	@Override
    public void init() throws ServletException {
    	cservice = new CakeService();
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id =request.getParameter("id");
		System.out.println(id);
		String savePath = this.getServletContext().getRealPath("/cakeImage/upload");
		 String tempPath = this.getServletContext().getRealPath("/cakeImages/temp");
		 File tmpFile = new File(tempPath);
		 if (!tmpFile.exists()) {
			tmpFile.mkdirs();
		 }
		 String message = "";
		 try{
		 //1、创建一个DiskFileItemFactory工厂
			 DiskFileItemFactory factory = new DiskFileItemFactory();	 
			 factory.setSizeThreshold(1024*100); 
			 factory.setRepository(tmpFile);	 
		 //2、创建一个文件上传解析器
			 ServletFileUpload upload = new ServletFileUpload(factory);
		     upload.setProgressListener(new ProgressListener(){
			 public void update(long pBytesRead, long pContentLength, int arg2) {
			 System.out.println("文件大小为：" + pContentLength + ",当前已处理：" + pBytesRead);
			 
			   }
		     });	 
			 upload.setHeaderEncoding("UTF-8"); 
		 //3、判断提交上来的数据是否是上传表单的数据
		     if(!ServletFileUpload.isMultipartContent(request)){
		        return;
		     }
		     upload.setSizeMax(1024*1024*10);   
		 //4、使用ServletFileUpload解析器解析上传数据，解析结果返回的是一个List<FileItem>集合，每一个FileItem对应一个Form表单的输入项
		     List<FileItem> list = upload.parseRequest(request);
		     	String name =null; 
		     	String fileExtName =null;
		     	String[] value=new String[9] ;
		     	String filename=null;
		     	int i = 0;
		     	for(FileItem item : list){
		     		//System.out.println("我来了");
		        	 //如果fileitem中封装的是普通输入项的数据
		        	if(item.isFormField()){
		        		 name = item.getFieldName();
		        		//解决普通输入项的数据的中文乱码问题
		        		 value[i] = item.getString("UTF-8");
		        		 i++;
		                //System.out.println(name + "=" + value);
		           }else{//如果fileitem中封装的是上传文件
		                 //得到上传的文件名称，
		                filename = item.getName();
		                System.out.println(filename);
		                if(filename==null || filename.trim().equals("")){
		                	 continue;      	 
		                }      
		               filename = filename.substring(filename.lastIndexOf("\\")+1);
		               //得到上传文件的扩展名
		               fileExtName = filename.substring(filename.lastIndexOf(".")+1);
		               System.out.println("上传的文件的扩展名是："+fileExtName);
		                 InputStream in = item.getInputStream();
		                 String saveFilename = makeFileName(filename);
		                 String realSavePath = makePath(saveFilename, savePath);
		                 FileOutputStream out = new FileOutputStream(realSavePath + "\\" + saveFilename);
		                 String imgPath = realSavePath.substring(realSavePath.indexOf("cakeImage"))+File.separatorChar+saveFilename;
		                 System.out.println(imgPath);
		                 byte buffer[] = new byte[1024];
		                 int len = 0;
			                 while((len=in.read(buffer))>0){
			                 out.write(buffer, 0, len);
			                 } 
				                 in.close();
				                 out.close();
		                   item.delete(); 
		                   message = "文件上传成功！";
		                   Cake cake=new Cake(Integer.parseInt(id), value[0], imgPath, Float.parseFloat(value[1]), value[2], Float.parseFloat(value[3]), value[4], value[5], value[6], value[7], value[8]); 
		                   //System.out.println(cake);
		                   response.setContentType("text/html");
		           		   response.setCharacterEncoding("utf-8");
		           		   PrintWriter pwt=response.getWriter();
		                   if(cservice.amendCakeInfo(cake)) {
		                	   pwt.println("<html><head></head><body><h1 style='color:green;'>商品修改成功，1秒后自动返回修改商品界面</h1></body></html>");
		           			   response.addHeader("Refresh", "1; url=TB/AmendCake.jsp");
		                   }else {
		                	   pwt.println("<html><head></head><body><h1 style='color:red;'>商品修改失败，1秒后自动返回修改商品界面</h1></body></html>");
		           			   response.addHeader("Refresh", "1; url=TB/AmendCake.jsp");
		        		}
		                  }
		                 }
		             }catch (Exception e) {
		                message= "文件上传失败！";
		                e.printStackTrace();
		                
		             }
		          System.out.println(message); 
		     }

	/**
	 * 为防止文件覆盖的现象发生，要为上传文件产生一个唯一的文件名
	 * @param filename 文件的原始名称
	 * @return uuid+"_"+文件的原始名称
	 */
	private String makeFileName(String filename) { 
		return UUID.randomUUID().toString() + "_" + filename;
	}

	/**
	 * 为防止一个目录下面出现太多文件，要使用hash算法打散存储
	 * @param filename 文件名，要根据文件名生成存储目录
	 * @param savePath 文件存储路径
	 * @return 新的存储目录
	 */
	
	private String makePath(String filename, String savePath) {
		// 得到文件名的hashCode的值，得到的就是filename这个字符串对象在内存中的地址
		int hashcode = filename.hashCode();
		int dir1 = hashcode & 0xf; // 0--15
		int dir2 = (hashcode & 0xf0) >> 4; // 0-15
		// 构造新的保存目录
		String dir = savePath + "\\" + dir1 + "\\" + dir2; // upload\2\3 upload\3\5
		// File既可以代表文件也可以代表目录
		File file = new File(dir);
		// 如果目录不存在
		if (!file.exists()) {
			// 创建目录
			file.mkdirs();
		}
		return dir;
	
	}

}
