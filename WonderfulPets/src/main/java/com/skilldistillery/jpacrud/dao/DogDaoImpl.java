package com.skilldistillery.jpacrud.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Dog;

@Service
@Transactional
public class DogDaoImpl implements DogDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Dog findById(int dogId) {
		return em.find(Dog.class, dogId);
	}

	@Override
	public List<Dog> findAll() {
		String jpql = "select d from Dog d";
		
		return em.createQuery(jpql, Dog.class).getResultList();
	}

	@Override
	public boolean addDog(Dog dog) {
		em.persist(dog);
		return em.contains(dog);
	}

	@Override
	public boolean updateDog(Dog dog) {
		Dog managedDog = em.find(Dog.class, dog.getId());
		managedDog.setName(dog.getName());
		managedDog.setAge(dog.getAge());
		managedDog.setBreed(dog.getBreed());
		managedDog.setWeight(dog.getWeight());
		return em.contains(managedDog);
	}

	@Override
	public boolean deleteDog(int dogId) {
		Dog managedDog = em.find(Dog.class, dogId);
		em.remove(managedDog);
		return !em.contains(managedDog);
	}

}
