package com.skilldistillery.dnd.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "sub_class")
public class CharacterSubClass {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;

	private String description;

	// CharacterClass ManyToOne
	// Spells?
	// Features?
	// Equipment?
	// Ability Modifiers?
}
