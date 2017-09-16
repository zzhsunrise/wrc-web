package com.wanerchuan.service;

import com.wanerchuan.domain.generation.WrcPic;

import java.util.List;

/**
 * Created by zzh on 2017/9/16.
 */
public interface WrcPicService {

    List<WrcPic> getPicListByAlbumId(String albumId);
}
