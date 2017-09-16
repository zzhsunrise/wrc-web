package com.wanerchuan.service;

import com.wanerchuan.domain.generation.WrcAlbum;

import java.util.List;

/**
 * Created by zzh on 2017/9/17.
 */
public interface WrcAlbumService {

    List<WrcAlbum> getAlbumByfid(String fid);
}
