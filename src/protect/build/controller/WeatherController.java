package protect.build.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/weather")
public class WeatherController {

	@RequestMapping(value = "/getWeather.do",produces="application/json;charset=UTF-8")
	public String getWeather(String location){
		
		return null;
	}
}
