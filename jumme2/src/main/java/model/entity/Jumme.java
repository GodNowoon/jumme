package model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;



//@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
@ToString

@Table(name = "JUMME")  // 소문자 테이블 이름
public class Jumme {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "jumme_seq_gen")
    @SequenceGenerator(name = "jumme_seq_gen", sequenceName = "jumme_seq", allocationSize = 1)
    @Column(name = "id") // 소문자 컬럼
    private Long id;

    @Column(name = "category")
    private String category;

    @Column(name = "rname")
    private String rname;

    @Column(name = "rmenu")
    private String rmenu;

    @Column(name = "score")
    private Double score;

    @Column(name = "link")
    private String link;
    
    // 기본 생성자
    public Jumme() {}

    // 생성자 (id 제외)
    public Jumme(String category, String rname, String rmenu, double score, String link) {
        this.category = category;
        this.rname = rname;
        this.rmenu = rmenu;
        this.score = score;
        this.link = link;
    }
	
}
