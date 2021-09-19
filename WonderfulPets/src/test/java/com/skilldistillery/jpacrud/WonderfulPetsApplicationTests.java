package com.skilldistillery.jpacrud;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.skilldistillery.jpacrud.dao.DogDAO;
import com.skilldistillery.jpacrud.entities.Dog;

@SpringBootTest
class WonderfulPetsApplicationTests {
	@Autowired
	private DogDAO dao;
	@PersistenceContext
	private EntityManager em;

	@Test
	void test_findById() {
		Dog dog = dao.findById(2);
		assertNotNull(dog);
		assertEquals("randy", dog.getName());
		assertEquals("golden retriever", dog.getBreed());
	}
	
	@Test 
	void test_findAll(){
		List<Dog> dogs = dao.findAll();
		assertNotNull(dogs);
		assertEquals(14, dogs.size());
		assertEquals("randy", dogs.get(0).getName());
	}
	
//	@Test
//	void test_addDog(){
//		int id = 20;
//		Dog dog = new Dog();
//		dog.setName("Pie");
//		dog.setAge(2);
//		dog.setBreed("siberian husky");
//		dog.setWeight(66.0);
//		dao.addDog(dog);
//		Dog managedDog = em.find(Dog.class, id);
//		assertNotNull(managedDog);
//		assertEquals("Pie", managedDog.getName());
//		assertEquals(2, managedDog.getAge());
//		assertEquals("siberian husky", managedDog.getBreed());
//		assertEquals(66.0, managedDog.getWeight());
//	}
	
	@Test
	void test_updateDog() {
		Dog dog = new Dog();
		int id = 11;
		dog.setId(id);
		dog.setName("Snow");
		dog.setAge(1);
		dog.setBreed("siberian husky");
		dog.setWeight(66.0);
		dao.updateDog(dog);
		Dog managedDog = em.find(Dog.class, id);
		assertNotNull(managedDog);
		assertEquals("Snow", managedDog.getName());
		assertEquals(1, managedDog.getAge());
		assertEquals("siberian husky", managedDog.getBreed());
		assertEquals(66.0, managedDog.getWeight());
	}
	
	@Test
	void test_deleteDog() {
		int id = 15;
		dao.deleteDog(id);
		Dog managedDog = em.find(Dog.class, id);
		assertNull(managedDog);
	}
}
