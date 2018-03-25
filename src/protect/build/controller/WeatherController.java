package protect.build.controller;

import java.io.IOException;
import java.net.Socket;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.protocol.RequestExpectContinue;
import org.apache.http.impl.DefaultBHttpClientConnection;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicHttpRequest;
import org.apache.http.protocol.HttpCoreContext;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpProcessorBuilder;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.RequestConnControl;
import org.apache.http.protocol.RequestContent;
import org.apache.http.protocol.RequestTargetHost;
import org.apache.http.protocol.RequestUserAgent;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import protect.build.util.WeatherUtil;

@Controller
@RequestMapping("/weather")
public class WeatherController {

	//public static String WEATHERURL= "http://www.weather.com.cn/data/sk/%s.html";
	@RequestMapping(value = "/getWeather.do",produces="application/json;charset=UTF-8")
	public @ResponseBody String getWeather(@RequestParam("locationId") String locationId){
		
		String weatherData = WeatherUtil.getWeatherData(locationId);
		return weatherData;
	}
	
	public static void main(String[] args) throws Exception {
//		String weatherData = WeatherUtil.getWeatherData("101200101");
		String weatherData = WeatherUtil.getWeatherData("WKJ1F428HH2F");
		ObjectMapper mapper = new ObjectMapper();  
		JsonNode json = mapper.readTree(weatherData);
		String weatherCode = json.get("results").get(0).get("now").get("code").asText();
		
		System.out.println(weatherData);
		System.out.println(weatherCode);
    }
}
