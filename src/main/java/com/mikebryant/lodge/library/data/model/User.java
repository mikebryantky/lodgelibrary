package com.mikebryant.lodge.library.data.model;

import lombok.Data;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
@Data
public class User {
    @Id
    @Column(name = "uuid", nullable = false, length = 36)
    private String uuid;

    @Column(name = "first_name", nullable = false, length = 255)
    private String firstName;

    @Column(name = "last_nme", nullable = false, length = 255)
    private String lastNme;

    @Column(name = "email_address", nullable = false, length = 255)
    private String emailAddress;

    @Column(name = "phone_number", nullable = true, length = 14)
    private String phoneNumber;

    @Column(name = "txt_msg_ind", nullable = false, length = 1)
    private String txtMsgInd;

    @Column(name = "last_login_date", nullable = true)
    private Timestamp lastLoginDate;

    @Column(name = "active_ind", nullable = false, length = 1)
    private String activeInd;

    @Column(name = "user_role", nullable = false, length = 255)
    private String userRole;

    @Column(name = "password", nullable = false, length = 255)
    private String password;

}
