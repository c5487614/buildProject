package protect.build.util;

import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;
import java.util.zip.GZIPOutputStream;

/**
 * Project Name : hbcabss<br>
 * Package Name : package cn.org.hbca.daily.util;<br>
 * File Name : CommonUtil.java<br>
 * Type Name : CommonUtil<br>
 * Created on : 2015-11-12上午10:53:47<br>
 * Created by : Chunhui Chen <br>
 * Note : <br>
 * 
 * 
 */
public class CommonUtil {
	private static int BUFFERSIZE = 1024;
	public static String createNewGUID(){
		UUID uuid = UUID.randomUUID();
		String guid = uuid.toString();
		guid = guid.replace("-", "").toUpperCase();
		return guid.toLowerCase();
	}
	
	public static Date stringToDatetime(String string) throws ParseException {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date dateTime = dateFormat.parse(string);
		return dateTime;
	}
	
	public static String datetimeToString(Date date) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateStr = format.format(date);
		return dateStr;
	}
	public static String sha1(String str) throws Exception{
        MessageDigest sha = MessageDigest.getInstance("SHA");  
 
        sha.update(str.getBytes("utf8"));
        byte [] bytes=sha.digest();
        StringBuilder ret=new StringBuilder(bytes.length<<1);
        for(int i=0;i<bytes.length;i++){
             ret.append(Character.forDigit((bytes[i]>>4)&0xf,16));
             ret.append(Character.forDigit(bytes[i]&0xf,16));
        }
        return ret.toString();
    }
	
	public static void compress(InputStream is, OutputStream os)
			throws Exception {

		GZIPOutputStream gos = new GZIPOutputStream(os);
		int count;
		byte data[] = new byte[BUFFERSIZE];
		while ((count = is.read(data, 0, BUFFERSIZE)) != -1) {
			gos.write(data, 0, count);
		}

		gos.finish();

		gos.flush();
		gos.close();
	}

	public static void main(String[] args){
		System.out.println(CommonUtil.createNewGUID());
	}
}
