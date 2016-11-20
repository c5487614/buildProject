package protect.build.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/login")
public class LoginController {

	@RequestMapping(value = "/init.do",produces="application/json;charset=UTF-8")
	public @ResponseBody Map<String,Object> getWeather(@RequestParam("userId") String userId){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("user", null);
		
		List<Map> list = new ArrayList<Map>();
		Map<String,Map> pointMap = new HashMap<String,Map>();
		
		Map<String,Object> pointMap1 = new HashMap<String,Object>();
		pointMap1.put("positionName", "杨美古镇");
		pointMap1.put("latitude", 108.074);
		pointMap1.put("longitude", 22.84592);
		pointMap1.put("weatherCode", "23");
		pointMap1.put("weatherText", "中雪");
		pointMap1.put("weatherTemp", "3");
		pointMap1.put("weatherUpdateDate", "2016-11-20T20:00:00+08:00");
		list.add(pointMap1);
		map.put("pointList", list);
		return map;
	}
}
