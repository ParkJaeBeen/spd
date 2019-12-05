package com.spd.test.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.spd.test.dao.UserDAO;
import com.spd.test.vo.UserVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class UserController {

	@Resource
	UserDAO ud;
	
	@GetMapping("/users")
	public String getUserInfo(Model m,@ModelAttribute UserVO user) {
		log.debug("user : {}",user);
		m.addAttribute("users",ud.selectUserList(user));
		return "user/list";
	}
}
