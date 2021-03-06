package com.simland.appservice.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.simland.core.base.Utils;
import com.simland.core.module.smap.entity.Ring;
import com.simland.core.module.smap.service.IRingService;

@Controller
public class MapController {

	@Autowired
	private IRingService ringService;

	/***
	 * 一览图
	 * 
	 * @return
	 */
	@RequestMapping(value = "/map/map1Page")
	public String map1Page(HttpServletRequest request, Model model) {
		List<Ring> list = ringService.getRingList(null);
		model.addAttribute("ringlist", Utils.arrayToJson(list));
		return "map/map1Page";
	}

	/***
	 * 水贝分区域后商家
	 * 
	 * @return
	 */
	@RequestMapping(value = "/map/map2Page")
	public String map2Page() {
		return "map/map2Page";
	}

	/***
	 * 楼层列表(水牌)
	 * 
	 * @return
	 */
	@RequestMapping(value = "/map/map3Page")
	public String map3Page() {
		return "map/map3Page";
	}

	@RequestMapping(value = "/map/map4Page")
	public String map4Page() {
		return "map/map4Page";
	}

}
