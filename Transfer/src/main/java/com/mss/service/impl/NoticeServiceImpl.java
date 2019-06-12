package com.mss.service.impl;

import com.mss.mappers.NoticeMapper;
import com.mss.models.Notice;
import com.mss.service.NoticeServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeServiceInterface {
    @Autowired
    private NoticeMapper mapper;
    public void addNewNotice(Notice notice) {
        // TODO Auto-generated method stub
        mapper.addNewNotice(notice);
    }

    public List<Notice> selectAllNotice() {
        // TODO Auto-generated method stub
        return mapper.selectAllNotice();
    }

    public Notice selectNoticeById(int i) {
        // TODO Auto-generated method stub
        return mapper.selectNoticeById(i);
    }

    public void updateNoticeById(Notice notice) {
        // TODO Auto-generated method stub
        mapper.updateNoticeById(notice);
    }

    public void deleteNoticeById(int i) {
        // TODO Auto-generated method stub
        mapper.deleteNoticeById(i);
    }
}
