package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpacrud.dao.DogDAO;
import com.skilldistillery.jpacrud.entities.Dog;

@Controller
public class DogController {
	
	@Autowired
	private DogDAO dao;
	
	@RequestMapping(path = {"/", "home.do"})
	public String home() {
		return "home";
	}
	
	@RequestMapping(path = "search.do")
	public String findDog(int id, Model model) {
		Dog dog = dao.findById(id);
		if(dog != null) {
			model.addAttribute("dog", dog);
		}
		return "searchView";
	}
	
	@RequestMapping(path = "add.do")
	public String addDog(Dog dog, Model model) {
		boolean isAdded = dao.addDog(dog);
		if(isAdded) {
			model.addAttribute("isAdded", isAdded);
		}
		return "addView";
	}
	
	@RequestMapping(path = "get.do")
	public String getDog(int id, Model model) {
		Dog dog = dao.findById(id);
		model.addAttribute("dog", dog);
		return "updateForm";
	}
	
	@RequestMapping(path = "update.do")
	public String updateDog(Dog dog, Model model) {
		boolean isUpdated = dao.updateDog(dog);
		if(isUpdated) {
			model.addAttribute("isUpdated", isUpdated);
		}
		return "updateView";
	}
	
	@RequestMapping(path = "delete.do")
	public String deleteDog(int id, Model model) {
		boolean isDeleted = dao.deleteDog(id);
		if(isDeleted) {
			model.addAttribute("isDeleted", isDeleted);
		}
		return "deleteView";
	}
	
	@RequestMapping(path = "findAll.do")
	public String findAll(Model model) {
		model.addAttribute("dogs", dao.findAll());
		return "findAllView";
	}
}
