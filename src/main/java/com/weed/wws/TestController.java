package com.weed.wws;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.weed.mapper.WwsMapper;

@Controller
public class TestController {

	@Autowired
	private WwsMapper wwsMapper;
	
	
}
