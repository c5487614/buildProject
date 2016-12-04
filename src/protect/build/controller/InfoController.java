package protect.build.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import protect.build.model.Info;
import protect.build.model.Monitor;
import protect.build.model.OldBuilding;
import protect.build.model.User;
import protect.build.service.InfoService;
import protect.build.service.MonitorService;
import protect.build.util.CommonUtil;


@Controller
@RequestMapping("/info")
public class InfoController {

	@Autowired
	InfoService infoService;
	
	@Autowired
	MonitorService monitorService;
	
	@RequestMapping(value = "/addInfoPage.do")
	public void addInfoPage(HttpServletRequest request, HttpServletResponse response){
		User currentUser = (User) request.getSession().getAttribute("user");
		if(currentUser==null){
			currentUser = new User();
			currentUser.setUserDept("环境保护部门");
			currentUser.setUserId(1);
			currentUser.setUserName("环境保护人员");
			currentUser.setUserPassword("12345678");
			currentUser.setUserType("admin");
			currentUser.setUserTypeName("管理员");
			request.setAttribute("user", currentUser);
			OldBuilding oldBuilding = new OldBuilding();
			oldBuilding.setBuidId(1);
			oldBuilding.setBuildDesc(null);
			oldBuilding.setName("古建筑1");
			request.setAttribute("building", oldBuilding);
		}
		if(currentUser==null){
//			try {
//				response.sendRedirect("../login.html");
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
		}else{
			try {
				request.getRequestDispatcher("../manageAddInfo.jsp").forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return ;
	}
	
	
	@RequestMapping(value = "/showInfoPage.do")
	public void showInfoPage(HttpServletRequest request, HttpServletResponse response){
		try {
			request.getRequestDispatcher("../oldBuildingInfo.jsp").forward(request, response);
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
			request.getRequestDispatcher("../oldBuildingGISInfo.jsp").forward(request, response);
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
			request.getRequestDispatcher("../oldBuildingSatelliteInfo.jsp").forward(request, response);
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
			request.getRequestDispatcher("../monitorInfo.jsp").forward(request, response);
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
			request.setAttribute("info", info);
			request.getRequestDispatcher("../viewInfo.jsp").forward(request, response);
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
		model.setBuildId(Integer.parseInt(request.getParameter("buildId")));
		model.setBuildName(request.getParameter("buildName"));
		model.setCreateDate(new Date());
		model.setInfoId(CommonUtil.createNewGUID());
		model.setTemprature(request.getParameter("temprature"));
		model.setUserId(Integer.parseInt(request.getParameter("userId")));
		model.setUserName(request.getParameter("contactor"));
		model.setWeather(request.getParameter("weather"));
		model.setLevel(request.getParameter("warning"));
		infoService.addInfo(model);
		return null;
	}
	
	
	@RequestMapping(value = "/getMonitorData.do",produces="application/json;charset=UTF-8")
	public @ResponseBody List<Monitor> getMonitorData(){
		List<Monitor> list = monitorService.getLastMonitor();
		
		return list;
	}
}
