package com.skilldistillery.dnd.entities;

import java.time.LocalDateTime;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name = "dnd_character")
public class PlayerCharacter {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;

	private Integer strength;

	private Integer dexterity;

	private Integer constitution;

	private Integer intelligence;

	private Integer wisdom;

	private Integer charisma;

	private String gender;

	@Column(name = "char_level")
	private Integer characterLevel;

	@Column(name = "date_created")
	@CreationTimestamp
	private LocalDateTime dateCreated;

	@Column(name = "date_updated")
	@CreationTimestamp
	private LocalDateTime dateUpdated;

	@Column(name = "status")
	private String characterStatus;

	private Integer initiative;

	@Column(name = "armor_class")
	private Integer armorClass;

	// dnd_race; OneToMany
	// sub_race  OneToMany
	// job_class OneToMany
	// sub class OneToMany
	// alignment ManyToOne
	// personality_trait ManyToMany
	// background ManyToOne
	// equipment ManyToMany
	// Spells ManyToMany
	// Features ManyToMany
	

	// constructor
	public PlayerCharacter() {
		super();

	}

	// getters and setters
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

	public Integer getStrength() {
		return strength;
	}

	public void setStrength(Integer strength) {
		this.strength = strength;
	}

	public Integer getDexetrity() {
		return dexterity;
	}

	public void setDexterity(Integer dextrity) {
		this.dexterity = dextrity;
	}

	public Integer getConstitution() {
		return constitution;
	}

	public void setConstitution(Integer constitution) {
		this.constitution = constitution;
	}

	public Integer getIntelligence() {
		return intelligence;
	}

	public void setIntelligence(Integer intelligence) {
		this.intelligence = intelligence;
	}

	public Integer getWisdom() {
		return wisdom;
	}

	public void setWisdom(Integer wisdom) {
		this.wisdom = wisdom;
	}

	public Integer getCharisma() {
		return charisma;
	}

	public void setCharisma(Integer charisma) {
		this.charisma = charisma;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Integer getCharacterLevel() {
		return characterLevel;
	}

	public void setCharacterLevel(Integer characterLevel) {
		this.characterLevel = characterLevel;
	}

	public LocalDateTime getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(LocalDateTime dateCreated) {
		this.dateCreated = dateCreated;
	}

	public LocalDateTime getDateUpdated() {
		return dateUpdated;
	}

	public void setDateUpdated(LocalDateTime dateUpdated) {
		this.dateUpdated = dateUpdated;
	}

	public String getCharacterStatus() {
		return characterStatus;
	}

	public void setCharacterStatus(String characterStatus) {
		this.characterStatus = characterStatus;
	}

	public Integer getinitiative() {
		return initiative;
	}

	public void setIniative(Integer initiative) {
		this.initiative = initiative;
	}

	public Integer getArmorClass() {
		return armorClass;
	}

	public void setArmorClass(Integer armorClass) {
		this.armorClass = armorClass;
	}

	@Override
	public String toString() {
		return "PlayerCharacter [id=" + id + ", name=" + name + ", strength=" + strength + ", dexterity=" + dexterity
				+ ", constitution=" + constitution + ", intelligence=" + intelligence + ", wisdom=" + wisdom
				+ ", charisma=" + charisma + ", gender=" + gender + ", characterLevel=" + characterLevel
				+ ", dateCreated=" + dateCreated + ", dateUpdated=" + dateUpdated + ", characterStatus="
				+ characterStatus + ", initiative=" + initiative + ", armorClass=" + armorClass + "]";
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
		PlayerCharacter other = (PlayerCharacter) obj;
		return id == other.id;
	}

}
