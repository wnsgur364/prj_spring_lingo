package com.lingo.app.chat;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ChatDTO {

    private String seq;
    private String sender;
    private String message;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="Asia/Seoul")
    private Date regdate;
}
