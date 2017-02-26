package protect.build.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import protect.build.model.Info;
import protect.build.model.InfoDetail;
import protect.build.model.Monitor;
import protect.build.model.OldBuilding;
import protect.build.model.User;
import protect.build.service.BuildService;
import protect.build.service.InfoDetailService;
import protect.build.service.InfoService;
import protect.build.service.MonitorService;
import protect.build.util.CommonUtil;


@Controller
@RequestMapping("/info")
public class InfoController {

	@Autowired
	InfoService infoService;
	
	@Autowired
	InfoDetailService infoDetailService;
	
	@Autowired
	MonitorService monitorService;
	
	@Autowired
	BuildService buildService;
	
	@RequestMapping(value = "/addInfoPage.do")
	public void addInfoPage(HttpServletRequest request, HttpServletResponse response){
		User currentUser = (User) request.getSession().getAttribute("user");
		if(currentUser!=null&&!currentUser.getUserType().equals("admin")){
			OldBuilding oldBuilding = buildService.getOldBuildingById(currentUser.getBuildId());
			System.out.println(oldBuilding.getName());
			oldBuilding.setContactNum(CommonUtil.createNewGUID());
			request.setAttribute("building", oldBuilding);
			request.setAttribute("user", currentUser);
		}else if(currentUser!=null&&currentUser.getUserType().equals("admin")){
			OldBuilding oldBuilding = buildService.getOldBuildingById(currentUser.getBuildId());
			System.out.println(oldBuilding.getName());
			oldBuilding.setContactNum(CommonUtil.createNewGUID());
			request.setAttribute("building", oldBuilding);
			request.setAttribute("user", currentUser);
		}if(currentUser==null){
			currentUser = new User();
			currentUser.setUserDept("环境保护部门");
			currentUser.setUserId(1);
			currentUser.setUserName("环境保护人员");
			currentUser.setUserPassword("12345678");
			currentUser.setUserType("admin");
			currentUser.setUserTypeName("管理员");
			request.setAttribute("user", currentUser);
			OldBuilding oldBuilding = buildService.getOldBuildingById(2);
			//use it for temp
			oldBuilding.setContactNum(CommonUtil.createNewGUID());
			request.setAttribute("building", oldBuilding);
		}
		List<OldBuilding> listOldBuild = buildService.getBuildList();
		request.setAttribute("listBuild", listOldBuild);
		try {
			request.getRequestDispatcher("../manageAddInfo2.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ;
	}
	
	
	@RequestMapping(value = "/showInfoPage.do")
	public void showInfoPage(HttpServletRequest request, HttpServletResponse response){
		try {
			String buildId = request.getParameter("buildId");
			if(buildId.equals("1")){
				request.getRequestDispatcher("../oldBuildingInfo11.jsp").forward(request, response);
			}else if(buildId.equals("2")){
				request.getRequestDispatcher("../oldBuildingInfo12.jsp").forward(request, response);
			}else if(buildId.equals("3")){
				request.getRequestDispatcher("../oldBuildingInfo13.jsp").forward(request, response);
			}else if(buildId.equals("4")){
				request.getRequestDispatcher("../oldBuildingInfo14.jsp").forward(request, response);
			}
			
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ;
	}
	
	@RequestMapping(value = "/showGISInfoPage.do")
	public void showGISInfoPage(HttpServletRequest request, HttpServletResponse response){
		try {
			String buildId = request.getParameter("buildId");
			if(buildId.equals("1")){
				request.getRequestDispatcher("../oldBuildingGISInfo11.jsp").forward(request, response);
			}else if(buildId.equals("2")){
				request.getRequestDispatcher("../oldBuildingGISInfo12.jsp").forward(request, response);
			}else if(buildId.equals("3")){
				request.getRequestDispatcher("../oldBuildingGISInfo13.jsp").forward(request, response);
			}else if(buildId.equals("4")){
				request.getRequestDispatcher("../oldBuildingGISInfo14.jsp").forward(request, response);
			}
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ;
	}
	
	@RequestMapping(value = "/showSatelliteInfoPage.do")
	public void Satellite(HttpServletRequest request, HttpServletResponse response){
		try {
			String buildId = request.getParameter("buildId");
			if(buildId.equals("1")){
				request.getRequestDispatcher("../oldBuildingSatelliteInfo11.jsp").forward(request, response);
			}else if(buildId.equals("2")){
				request.getRequestDispatcher("../oldBuildingSatelliteInfo12.jsp").forward(request, response);
			}else if(buildId.equals("3")){
				request.getRequestDispatcher("../oldBuildingSatelliteInfo13.jsp").forward(request, response);
			}else if(buildId.equals("4")){
				request.getRequestDispatcher("../oldBuildingSatelliteInfo14.jsp").forward(request, response);
			}
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ;
	}
	
	@RequestMapping(value = "/monitorInfoPage.do")
	public void monitorInfoPage(HttpServletRequest request, HttpServletResponse response){
		try {
			
			List<Monitor> list = monitorService.getLastMonitor();
//			Monitor monitor = new Monitor();
//			monitor.setBiuldId(1);
//			monitor.setContactor("负责人");
//			monitor.setDistrict("南宁");
//			monitor.setName("古建筑1");
//			monitor.setPhone("13685478214");
//			monitor.setProtectLevel("等级3");
//			monitor.setTemprature("2-34度");
//			monitor.setUpdateDate("2016-11-12 15:30:56");
//			
//			list.add(monitor);
//			list.add(monitor);
//			list.add(monitor);
			
			request.setAttribute("listMonitor", list);
			request.getRequestDispatcher("../monitorInfo2.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ;
	}
	
	@RequestMapping(value = "/viewInfoPage.do")
	public void viewInfoPage(HttpServletRequest request, HttpServletResponse response){
		try {
			String infoId = request.getParameter("infoId");
			Info info = infoService.getInfoById(infoId);
			List<InfoDetail> list = infoDetailService.getInfoDetailByInfoId(infoId);
			String infoType = "image";
			if(list!=null&&list.size()>0){
				infoType = list.get(0).getInfoType();
			}
			request.setAttribute("infoType", infoType);
			request.setAttribute("info", info);
			request.setAttribute("listInfoDetail", list);
			request.getRequestDispatcher("../viewInfo2.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ;
	}
	@RequestMapping(value = "/addInfo.do",produces="application/json;charset=UTF-8")
	public String addInfo(HttpServletRequest request, HttpServletResponse response){
		
		Info model = new Info();
		String buildId = request.getParameter("buildName");
		OldBuilding oldBuilding = buildService.getOldBuildingById(Integer.parseInt(buildId));
		model.setBuildId(Integer.parseInt(buildId));
		model.setBuildName(oldBuilding.getName());
		model.setCreateDate(new Date());
		model.setInfoId(request.getParameter("infoId"));
		model.setTemprature(request.getParameter("temprature"));
		model.setUserId(Integer.parseInt(request.getParameter("userId")));
		model.setUserName(request.getParameter("contactor"));
		model.setWeather(request.getParameter("weather"));
		model.setLevel(request.getParameter("warning"));
		infoService.addInfo(model);
		return null;
	}
	
	@RequestMapping(value = "/addImage.do",produces="application/json;charset=UTF-8")
	public @ResponseBody Map<String,Object> addImage(HttpServletRequest request, HttpServletResponse response) throws Exception{
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		String infoId = "";
		String imageName = "";
		String fileSubfix = "jpg";
		if(isMultipart){
			ServletFileUpload upload = new ServletFileUpload(); 
			FileItemIterator iter = upload.getItemIterator(request);
			
			String path = request.getServletContext().getRealPath("/") + "upload/";
			imageName = CommonUtil.createNewGUID();
			int i = 0;
			while (iter.hasNext()) {
				FileItemStream item = iter.next();
				InputStream input = item.openStream();
				String originalFileName = item.getName();
				if(item.getFieldName().equals("infoId")){
					infoId = request.getParameter("infoId");
				}
				if(originalFileName!=null&&originalFileName.contains(".")){
					fileSubfix = originalFileName.split("\\.")[1];
				}
				 byte[] buff = new byte[1024];
                 int len = 0;
                 FileOutputStream out = new FileOutputStream(new File(path+imageName+"."+fileSubfix));
                 while ((len = input.read(buff)) != -1){
                     out.write(buff, 0, len);
                 }
                 input.close();
                 out.close();
				//fileItem.write(new File("D:/test.txt"));
			}
			
		}
		InfoDetail infoDetail = new InfoDetail();
		infoDetail.setInfoId(infoId);
		infoDetail.setDetailId(CommonUtil.createNewGUID());
		infoDetail.setInfoDataURL("/upload/"+imageName+"."+fileSubfix);
		if("jpg".equals(fileSubfix)||"jepg".equals(fileSubfix)||"png".equals(fileSubfix)||"bmp".equals(fileSubfix)||"gif".equals(fileSubfix)){
			infoDetail.setInfoType("image");
		}else if("wav".equals(fileSubfix)||"mp3".equals(fileSubfix)||"avi".equals(fileSubfix)){
			infoDetail.setInfoType("voice");
		}else{
			infoDetail.setInfoType(fileSubfix);
		}
		infoDetailService.addInfoDetail(infoDetail);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("success", true);
		
		return map;
	}
	
	
	@RequestMapping(value = "/getMonitorData.do",produces="application/json;charset=UTF-8")
	public @ResponseBody List<Monitor> getMonitorData(){
		List<Monitor> list = monitorService.getLastMonitor();
		
		return list;
	}
}
