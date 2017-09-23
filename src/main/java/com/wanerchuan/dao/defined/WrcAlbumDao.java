package com.wanerchuan.dao.defined;

import com.wanerchuan.domain.generation.WrcAlbum;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by zzh on 2017/9/17.
 */
@Repository
public interface WrcAlbumDao {

    List<WrcAlbum> getAlbumByfid(String fid);

    List<WrcAlbum> getAllAlbum();
}
