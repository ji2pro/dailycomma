package com.yedam.dailycomma.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class RestAdminController {
	
	@Autowired
	AdminService adminService;
		
	//삭제
	@RequestMapping(value="/deleteMembers.ajax", method=RequestMethod.DELETE)
	public HashMap<String,Object> deleteMembers(@RequestBody List<String> checkbox){
		HashMap<String,Object> map = new HashMap<String,Object>();
		
	
		for(String str : checkbox)			
			System.out.println("checkbox==========================="+str);
		
		int check = adminService.deleteMembers(checkbox);
		if(check > 0 ) {
			map.put("result", Boolean.TRUE);
		}
		else {
			map.put("result", Boolean.FALSE);
		}
		return map;
	}
	
	@RequestMapping(value="/deleteLodgments.ajax", method=RequestMethod.DELETE)
	public HashMap<String,Object> deleteLodgments(@RequestBody List<String> checkbox){
		HashMap<String,Object> map = new HashMap<String,Object>();
			
		for(String str : checkbox)			
			System.out.println("checkbox==========================="+str);
		
		int check = adminService.deleteLodgments(checkbox);
		if(check > 0 ) {
			map.put("result", Boolean.TRUE);
		}
		else {
			map.put("result", Boolean.FALSE);
		}
		return map;
	}
	
	@RequestMapping(value="/deleteReserves.ajax", method=RequestMethod.DELETE)
	public HashMap<String,Object> deleteReserves(@RequestBody List<String> checkbox){
		HashMap<String,Object> map = new HashMap<String,Object>();
		
		for(String str : checkbox)			
			System.out.println("checkbox==========================="+str);
		
		int check = adminService.deleteReserves(checkbox);
		if(check > 0 ) {
			map.put("result", Boolean.TRUE);
		}
		else {
			map.put("result", Boolean.FALSE);
		}
		return map;
	}
	
	@RequestMapping(value="/deleteTours.ajax", method=RequestMethod.DELETE)
	public HashMap<String,Object> deleteTours(@RequestBody List<String> checkbox){
		HashMap<String,Object> map = new HashMap<String,Object>();
		
		for(String str : checkbox)			
			System.out.println("checkbox==========================="+str);
		
		int check = adminService.deleteTours(checkbox);
		if(check > 0 ) {
			map.put("result", Boolean.TRUE);
		}
		else {
			map.put("result", Boolean.FALSE);
		}
		return map;
	}
	
	
}
