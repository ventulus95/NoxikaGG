package com.ventulus95.noxikaGG.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.ventulus95.noxikaGG.dto.Summoner;

@Controller
public class SearchSummoner {
	final static String API_KEY = "RGAPI-8805ace2-14ef-4c5d-bfe1-1ac3a36d3cfb";
	
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public String searchSummoner(Model model, HttpServletRequest httpServletRequest) {
		BufferedReader br = null;
		String SummonerName = httpServletRequest.getParameter("title");
		Summoner temp= null;
		try{            
			String urlstr = "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+
					SummonerName		+"?api_key="+API_KEY;
			URL url = new URL(urlstr);
			HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
			urlconnection.setRequestMethod("GET");
			br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(),"UTF-8")); // 여기에 문자열을 받아와라.
			String result = "";
			String line;
			while((line = br.readLine()) != null) { // 그 받아온 문자열을 계속 br에서 줄단위로 받고 출력하겠다.
				result = result + line;
			}
			JsonParser jsonParser = new JsonParser();
			JsonObject k = (JsonObject) jsonParser.parse(result);
			int profileIconId = k.get("profileIconId").getAsInt();
			String name = k.get("name").getAsString();
			String puuid = k.get("puuid").getAsString();
			long summonerLevel = k.get("summonerLevel").getAsLong();
			long revisionDate = k.get("revisionDate").getAsLong();
			String id = k.get("id").getAsString();
			String accountId = k.get("accountId").getAsString();
			temp = new Summoner(profileIconId,name,puuid,summonerLevel,revisionDate,id,accountId);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		
		model.addAttribute("summoner", temp);
		model.addAttribute("imgURL", "http://ddragon.leagueoflegends.com/cdn/9.16.1/img/profileicon/"+temp.getProfileIconId()+".png");
		return "result";
	}
	
}
