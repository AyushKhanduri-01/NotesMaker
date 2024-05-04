package com.entities;
import java.util.Date;

import javax.persistence.*;


@Entity
public class Note {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String title;
	
	@Column(length = 5000)
	private String content;
	private Date date;
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Note(String title, String content, Date date) {
		super();
		this.title = title;
		this.content = content;
		this.date = date;
	}

	public Note(int id, String title, String content, Date date) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.date = date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
	
}
