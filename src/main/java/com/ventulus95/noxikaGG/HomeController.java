package com.ventulus95.noxikaGG;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ventulus95.noxikaGG.config.VersionCheck;
import com.ventulus95.noxikaGG.dao.ApiKeyValue;
import com.ventulus95.noxikaGG.dao.SearchLogDao;
import com.ventulus95.noxikaGG.dto.Summoner;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		SearchLogDao dao = new SearchLogDao();
		List<Summoner> list = dao.getSearchLogs();
		VersionCheck.checkVersion();
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("name", "이창섭");
		model.addAttribute("idList", list);
		model.addAttribute("version", VersionCheck.profileiconVersion);
		return "home";
	}
	
	
	



}
