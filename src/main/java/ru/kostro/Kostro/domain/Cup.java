package ru.kostro.Kostro.domain;

import javax.persistence.*;

@Entity
public class Cup {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private String title;
    private String description;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User author;

    private String[] filename;

    public Cup() {
    }

    public Cup(String title, String description, User author) {
        this.title = title;
        this.description = description;
        this.author = author;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public String[] getFilename() {
        return filename;
    }

    public void setFilename(String[] filename) {
        this.filename = filename;
    }
}
