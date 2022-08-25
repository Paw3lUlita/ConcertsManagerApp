package pl.coderslab.concertsapp.entity;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name = "club")
@Data
public class Club {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotEmpty(message = "Nazwa klubu nie może być pusta!")
    @Size(min=2, message = "Nazwa klubu musi mieć co najmniej dwa znaki!")
    private String name;

    @NotEmpty(message = "Nazwa miasta nie może być pusta!")
    @Size(min=3, message = "Nazwa miasta musi mieć co najmniej trzy znaki!")
    private String city;

    @NotEmpty(message = "Musisz podac adres!")
    private String address;

    @NotEmpty(message = "Musisz podać numer telefonu!")
    private int phoneNumber;

    @Email(message = "Niepoprawny adres email!")
    @NotEmpty(message = "Musisz podać adres email!")
    private String email;


    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

}
