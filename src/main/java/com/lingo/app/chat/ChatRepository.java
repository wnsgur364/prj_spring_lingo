package com.lingo.app.chat;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class ChatRepository {
    private final SqlSession sqlSession;

    public List<ChatDTO> list(){return sqlSession.selectList("Chat.list");}

    public void insert(ChatDTO dto){ sqlSession.insert("Chat.insert",dto);}

    public void delete(int seq){sqlSession.delete("Chat.delete",seq);}

    public int last(){return sqlSession.selectOne("Chat.last");}


}//END OF CHAT REPOSITORY
