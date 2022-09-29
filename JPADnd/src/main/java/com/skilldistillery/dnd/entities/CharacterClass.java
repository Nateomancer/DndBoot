package com.skilldistillery.dnd.entities;

import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "job_class")
public class CharacterClass {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "job_class_name")
	private String className;

	@Column(name = "hit_dice")
	private String hitDice;

	// user (player) ManyToOne
	// subclass OneToMany
	// equipment ManyToMany
	// Spells ManyToMany
	// Features  ManyToMany
	// Equipment ManyToMany
	// Ability Modifiers  ManyToMany

	public CharacterClass() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getHitDice() {
		return hitDice;
	}

	public void setHitDice(String hitDice) {
		this.hitDice = hitDice;
	}

	@Override
	public String toString() {
		return "CharacterClass [id=" + id + ", className=" + className + ", hit_dice=" + hitDice + "]";
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
		CharacterClass other = (CharacterClass) obj;
		return id == other.id;
	}

}
