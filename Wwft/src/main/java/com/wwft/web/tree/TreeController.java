package com.wwft.web.tree;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wwft.service.tree.TreeService;


@Controller
@RequestMapping("/tree/*")
public class TreeController {
	
	private TreeService treeService;
	
	public TreeController() {
		System.out.println(this.getClass());
	}

	
	
}
