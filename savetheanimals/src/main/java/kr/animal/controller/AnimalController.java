package kr.animal.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sun.org.apache.regexp.internal.recompile;

import kr.animal.mapper.AnimalMapper;
import kr.animal.entity.Member;

@Controller
public class AnimalController {
	
	@Autowired
	private AnimalMapper mapper;

	@RequestMapping("/index.do")
	public String index() {
		
		
		
		return "index";
	}
	
	
}