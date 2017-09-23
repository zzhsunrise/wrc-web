package com.wanerchuan.service.impl;

import com.wanerchuan.dao.defined.WrcAlbumDao;
import com.wanerchuan.domain.generation.WrcAlbum;
import com.wanerchuan.service.WrcAlbumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zzh on 2017/9/17.
 */
@Service
public class WrcAlbumServiceImpl implements WrcAlbumService {

    @Autowired
    WrcAlbumDao wrcAlbumDao;

    public List<WrcAlbum> getAlbumByfid(String fid) {
        return this.wrcAlbumDao.getAlbumByfid(fid);
    }

    @Override
    public List<WrcAlbum> getALLAlbum() {
        return this.wrcAlbumDao.getAllAlbum();
    }
}
