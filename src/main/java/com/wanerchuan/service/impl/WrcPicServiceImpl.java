package com.wanerchuan.service.impl;

import com.wanerchuan.dao.defined.WrcPicDao;
import com.wanerchuan.domain.generation.WrcPic;
import com.wanerchuan.service.WrcPicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zzh on 2017/9/16.
 */
@Service
public class WrcPicServiceImpl implements WrcPicService{

    @Autowired
    WrcPicDao wrcPicDao;

    public List<WrcPic> getPicListByAlbumId(String albumId) {
        return this.wrcPicDao.getPicListByAlbumId(albumId);
    }
}
