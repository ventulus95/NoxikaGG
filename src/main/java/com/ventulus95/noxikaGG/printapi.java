package com.ventulus95.noxikaGG;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.stereotype.Service;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Service("printapi")
public class printapi {

//	@RequestMapping(value="/index", method=RequestMethod.GET)
//	public void printResultService(String idid) {
//		System.out.println(idid);
	public static void main(String args[]) {
		BufferedReader br = null;
		try{            
			String urlstr = "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+
					"noxika"					+"?api_key=RGAPI-7d6ef83c-f993-4f52-ada1-28ec1dd6584c";
			URL url = new URL(urlstr);
			HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
			urlconnection.setRequestMethod("GET");
			br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(),"UTF-8")); // 여기에 문자열을 받아와라.
			String result = "";
			String line;
			while((line = br.readLine()) != null) { // 그 받아온 문자열을 계속 br에서 줄단위로 받고 출력하겠다.
				result = result + line;
			}
			System.out.println(result);
			JsonParser jsonParser = new JsonParser();
			JsonObject k = (JsonObject) jsonParser.parse(result);
			System.out.println(k.size());
			int profileIconId = k.get("profileIconId").getAsInt();
			String name = k.get("name").getAsString();
			String puuid = k.get("puuid").getAsString();
			long summonerLevel = k.get("summonerLevel").getAsLong();
			long revisionDate = k.get("revisionDate").getAsLong();
			String id = k.get("id").getAsString();
			String accountId = k.get("accountId").getAsString();
			System.out.println(name);
			System.out.println(summonerLevel);

		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}
}
