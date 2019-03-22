package spring.springmvc.mybatis.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.springmvc.mybatis.pojo.User;
import spring.springmvc.mybatis.service.UserService;


@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/list")
	@ResponseBody//返回json格式的数据
	public List<User> products() throws Exception {
		List<User> userList = userService.getUserList();
		return userList;
	}
	
}
