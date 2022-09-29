package com.skilldistillery.dnd.entities;

import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "dnd_race")
public class CharacterRace {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private String size;
	
	private Integer speed;
	
	@Column(name="short_description")
	private String shortDescription;
	
	@Column(name="long_description")
	private String longDescription;

	//Spells ManyToMany
	//Spells OneToMany
	//Character OneToMany
	//OneToMany Subrace
	
	public CharacterRace() {
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

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public Integer getSpeed() {
		return speed;
	}

	public void setSpeed(Integer speed) {
		this.speed = speed;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public String getLongDescription() {
		return longDescription;
	}

	public void setLongDescription(String longDescription) {
		this.longDescription = longDescription;
	}

	@Override
	public String toString() {
		return "CharacterRace [id=" + id + ", name=" + name + ", size=" + size + ", speed=" + speed
				+ ", shortDescription=" + shortDescription + ", longDescription=" + longDescription + "]";
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
		CharacterRace other = (CharacterRace) obj;
		return id == other.id;
	}
	
	
	

}
