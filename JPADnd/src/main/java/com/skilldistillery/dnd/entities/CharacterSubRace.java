package com.skilldistillery.dnd.entities;

import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "sub_race")
public class CharacterSubRace {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;

	private String description;

	@Column(name = "ability_modified")
	private String abilityModified;

	@Column(name = "ability_modifier")
	private String abilityScoreModifier;

	// race manyToOne
	// Character OneToMany
	// Spells ManyToMany
	// Features ManyToMany
	// Ability Modifiers OneToMany + ManyToMany

	public CharacterSubRace() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAbilityModified() {
		return abilityModified;
	}

	public void setAbilityModified(String abilityModified) {
		this.abilityModified = abilityModified;
	}

	public String getAbilityScoreModifier() {
		return abilityScoreModifier;
	}

	public void setAbilityScoreModifier(String abilityScoreModifier) {
		this.abilityScoreModifier = abilityScoreModifier;
	}

	@Override
	public String toString() {
		return "CharacterSubRace [id=" + id + ", name=" + name + ", description=" + description + ", abilityModified="
				+ abilityModified + ", abilityScoreModifier=" + abilityScoreModifier + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CharacterSubRace other = (CharacterSubRace) obj;
		return id == other.id;
	}

}
