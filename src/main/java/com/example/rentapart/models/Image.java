package com.example.rentapart.models;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "images")
@Data
@NoArgsConstructor
@AllArgsConstructor

public class Image {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column("id")
    private Long id;
    @Column("name")
    private String name;
    @Column("filename")
    private String filename;
    @Column("size")
    private Long size;
    @Column("contentType")
    private String contentType;
    @Column("IsPreviewImage")
    private boolean IsPreviewImage;
    @Lob
    private byte[] bytes;

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    private Product product;
}
