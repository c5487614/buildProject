package protect.build.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import protect.build.model.OldBuilding;
import protect.build.model.User;
import protect.build.service.BuildService;
import protect.build.service.UserService;
import protect.build.util.WeatherUtil;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Autowired
	UserService userService;
	
	@Autowired
	BuildService buildService;
	
	@RequestMapping(value = "/login.do",produces="application/json;charset=UTF-8")
	public @ResponseBody Map<String,Object> login(@RequestParam("userId") String userId,
			@RequestParam("userPassword") String userPassword,
			HttpServletRequest request){
		Map<String,Object> map = new HashMap<String,Object>();
		User user = userService.checkUser(userId, userPassword);
		if(user==null){
			map.put("result", "fail");
		}else{
			request.getSession().setAttribute("user", user);
			map.put("result", "success");
		}
		
		return map;
	}
	@RequestMapping(value = "/init.do",produces="application/json;charset=UTF-8")
	public @ResponseBody Map<String,Object> getWeather(@RequestParam("userId") String userId) throws JsonProcessingException, IOException{
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("user", null);
		
		List<OldBuilding> listBuild = buildService.getBuildList();
		if(listBuild!=null&&listBuild.size()>0){
			List<Map> list = new ArrayList<Map>();
			
			for(int i=0;i<listBuild.size();i++){
				OldBuilding oldBuilding = listBuild.get(i);
				String weather = WeatherUtil.getWeatherData(oldBuilding.getDistrict());
				ObjectMapper mapper = new ObjectMapper();  
				JsonNode json = mapper.readTree(weather);
				JsonNode jsonNow = json.get("results").get(0).get("now");
				String weatherCode = jsonNow.get("code").asText();
				String weatherText = jsonNow.get("text").asText();
				String weatherTemp = jsonNow.get("temperature").asText();
				String weatherDate = json.get("results").get(0).get("last_update").asText();
				
				Map<String,Object> pointMap1 = new HashMap<String,Object>();
				pointMap1.put("positionName", oldBuilding.getName());
				pointMap1.put("latitude", oldBuilding.getLatitude());
				pointMap1.put("longitude", oldBuilding.getLongitude());
				pointMap1.put("weatherCode", weatherCode);
				pointMap1.put("weatherText", weatherText);
				pointMap1.put("weatherTemp", weatherTemp);
				pointMap1.put("weatherUpdateDate", weatherDate);
				list.add(pointMap1);
				
			}
			map.put("pointList", list);
		}
		return map;
	}
}
