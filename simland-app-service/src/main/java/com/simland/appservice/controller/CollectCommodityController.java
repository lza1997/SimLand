package com.simland.appservice.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.simland.appservice.controller.security.SessionManager;
import com.simland.core.base.SysMessage;
import com.simland.core.base.Utils;
import com.simland.core.base.page.PageView;
import com.simland.core.module.user.entity.CollectCommodity;
import com.simland.core.module.user.entity.User;
import com.simland.core.module.user.service.ICollectCommodityService;

@Controller
public class CollectCommodityController {

	public static final Log logger = LogFactory.getLog(CollectCommodityController.class);

	@Autowired
	private ICollectCommodityService collectCommodityService;

	/***
	 * 收藏商品
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/user/collectCommodity")
	@ResponseBody
	public String collectCommodity(HttpServletRequest request, Model model) {
		String reJson = null;
		SysMessage msg = new SysMessage();
		User user = SessionManager.getUser();

		String cid = request.getParameter("cid");
		if (Utils.isObjectEmpty(cid)) {
			msg.setCode("-2");
			msg.setMsg("参数错误");
			logger.info(this.getClass().getName() + (reJson = Utils.objToJsonp(msg, request.getParameter("callback"))));
			return reJson;
		}

		Lock lock = new ReentrantLock();
		try {
			lock.lock();
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("uid", user.getId());
			param.put("cid", Utils.strToInteger(cid));
			int count = collectCommodityService.getCollectCommodityCount(param);
			if (count > 0) {
				msg.setCode("-3");
				msg.setMsg("已收藏");
				logger.info(this.getClass().getName() + (reJson = Utils.objToJsonp(msg, request.getParameter("callback"))));
				param = null;
				return reJson;
			}

			CollectCommodity collectCommodity = new CollectCommodity();
			collectCommodity.setCreateTime(new Date());
			collectCommodity.setCid(Utils.strToInteger(cid));
			collectCommodity.setUid(user.getId());
			int id = collectCommodityService.insertCollectCommodity(collectCommodity);
			if (id > 0) {
				msg.setCode("1");
				msg.setMsg("收藏成功");
			} else {
				msg.setCode("-4");
				msg.setMsg("收藏失败");
			}

			logger.info(this.getClass().getName() + (reJson = Utils.objToJsonp(msg, request.getParameter("callback"))));

			msg = null;
			collectCommodity = null;
			param = null;
		} catch (Exception e) {
			logger.error(this.getClass().getName() + " collectCommodity error :" + e.getMessage());
		} finally {
			lock.unlock();
		}

		return reJson;
	}

	/***
	 * 店铺收藏显示
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/user/collectCommodityShow")
	public String collectCommodityShow(HttpServletRequest request, Model model) {

		int currentPage = Utils.strToInteger(request.getParameter("icurrentPage"));

		Map<String, Object> param = new HashMap<String, Object>();

		// param.put("uid", user.getId());

		int totalRecord = collectCommodityService.getCollectCommodityCount(param);
		PageView pageView = new PageView();
		pageView.setCurrentPage(currentPage);
		pageView.setPageSize(20);
		pageView.setTotalRecord(totalRecord);
		param.put("endSize", pageView.getFirstResult());
		param.put("pageSize", pageView.getPageSize());

		List<CollectCommodity> list = collectCommodityService.getSplitCollectCommodityList(param);

		model.addAttribute("code", "1");
		model.addAttribute("totalPage", pageView.getTotalPage());
		model.addAttribute("list", list);

		param.clear();

		model.addAttribute("list", list);

		return "user/collectCommodityShow";
	}

}
