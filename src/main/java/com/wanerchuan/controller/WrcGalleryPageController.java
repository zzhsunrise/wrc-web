package com.wanerchuan.controller;

import com.wanerchuan.domain.generation.WrcAlbum;
import com.wanerchuan.domain.generation.WrcPic;
import com.wanerchuan.service.WrcAlbumService;
import com.wanerchuan.service.WrcPicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zzh on 2017/9/8.
 */
@Controller
public class WrcGalleryPageController {

    @Autowired
    WrcAlbumService wrcAlbumService;
    @Autowired
    WrcPicService wrcPicService;

    /**
     * gallery列表页面
     * */
    @RequestMapping("/gallery")
    public ModelAndView toGallerypage(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        List<WrcAlbum> albumsList = wrcAlbumService.getALLAlbum();
        //获取相册
        mav.setViewName("gallery");
        mav.addObject("albumList",albumsList);
        return mav;
    }
    /**
     * 图片列表
     * */
    @RequestMapping("/photolist")
    @ResponseBody
    public Map<String,Object> toPhotoList(HttpServletRequest request){
        Map<String,Object> resultMap = new HashMap<String,Object>();
        String albumId = request.getParameter("albumId");
        List<WrcPic> picList =  wrcPicService.getPicListByAlbumId(albumId);
        resultMap.put("picList",picList);
        return  resultMap;
    }

}
