package com.skilldistillery.jpacrud.dao;

import java.util.List;
import com.skilldistillery.jpacrud.entities.Dog;

public interface DogDAO {

	Dog findById(int dogId);
	
	List<Dog> findAll();
	
	boolean addDog(Dog dog);
	
	boolean updateDog(Dog dog);
	
	boolean deleteDog(int dogId);
	
}
