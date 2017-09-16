package com.wanerchuan.dao.defined;

import com.wanerchuan.domain.generation.WrcPic;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by zzh on 2017/9/16.
 */
@Repository
public interface WrcPicDao {

    List<WrcPic> getPicListByAlbumId(String albumId);
}
