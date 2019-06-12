package com.mss.service;

import com.mss.models.Notice;

import java.util.List;

public interface NoticeServiceInterface {
    public void addNewNotice(Notice notice);
    public List<Notice> selectAllNotice();
    public Notice selectNoticeById(int i);
    public void updateNoticeById(Notice notice);
    public void deleteNoticeById(int i);
}
