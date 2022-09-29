package com.skilldistillery.dnd.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class PlayerCharacterTest {


	private static EntityManagerFactory emf;

	private EntityManager em;

	private PlayerCharacter playerCharacter;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {

		emf = Persistence.createEntityManagerFactory("JPADnd");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		playerCharacter = em.find(PlayerCharacter.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		playerCharacter = null;
	}

	@Test
	void test_PlayerCharacter_entity_mapping() {
		assertNotNull(playerCharacter);
		assertEquals("Nateomancer", playerCharacter.getName());
	}
}
