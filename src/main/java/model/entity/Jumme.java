package model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;



@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
@ToString

@Table(name = "JUMME")  // 소문자 테이블 이름
public class Jumme {

    @Id
    @Column(name = "ID") // 대문자 컬럼
    private Long id;

    @Column(name = "CATEGORY")
    private String category;

    @Column(name = "RNAME")
    private String rname;

    @Column(name = "RMENU")
    private String rmenu;

    @Column(name = "SCORE")
    private Double score;

    @Column(name = "LINK")
    private String link;
	
}
