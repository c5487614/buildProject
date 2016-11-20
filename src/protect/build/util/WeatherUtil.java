package protect.build.util;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

public class WeatherUtil {
	public static String WEATHERURL= "http://www.weather.com.cn/data/sk/%s.html";
	public static String WEATHERURL2 = "http://d1.weather.com.cn/sk_2d/101200101.html";
	public static String WEATHERURL3 = "https://api.thinkpage.cn/v3/weather/now.json?key=ovptvgg3r2fh1ebz&location=beijing&language=zh-Hans&unit=c";
	public static String getWeatherData(String locationId){
		String requestURL = String.format(WEATHERURL3, "101200101");
		CloseableHttpClient httpclient = HttpClients.createDefault();
		HttpGet httpget = new HttpGet(requestURL);
		String result = "";
		try {
			CloseableHttpResponse response = httpclient.execute(httpget);
			if(response.getStatusLine().getStatusCode()==200){
				HttpEntity httpEntity =  response.getEntity();
				result = EntityUtils.toString(httpEntity,"utf-8");
				
			}else{
				throw new ClientProtocolException("Unexpected response status: " + response.getStatusLine().getStatusCode());
			}
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		
	}
	
	private static String getWeatherReport(String locationId) throws JsonProcessingException, IOException{
		String weatherData = getWeatherData(locationId);
		ObjectMapper objectMappere = new ObjectMapper();
		JsonNode node = objectMappere.readTree(weatherData);
		JsonNode nodeWeather = node.get("weatherinfo");
		Map<String,String> weather = new HashMap<String,String>();
		//weather.put("city", arg1)
		return null;
	}
	
}
