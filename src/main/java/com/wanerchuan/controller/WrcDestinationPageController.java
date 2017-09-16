package com.wanerchuan.controller;

import com.wanerchuan.domain.defined.Constants;
import com.wanerchuan.domain.defined.Page;
import com.wanerchuan.domain.generation.WrcAlbum;
import com.wanerchuan.domain.generation.WrcBoatInfo;
import com.wanerchuan.domain.generation.WrcDestinationInfo;
import com.wanerchuan.domain.generation.WrcPic;
import com.wanerchuan.service.WrcAlbumService;
import com.wanerchuan.service.WrcBoatInfoService;
import com.wanerchuan.service.WrcDestinationService;
import com.wanerchuan.service.WrcPicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by zzh on 2017/8/24.
 */
@Controller
@RequestMapping("/destination")
public class WrcDestinationPageController {

    @Autowired
    private WrcDestinationService wrcDestinationService;
    @Autowired
    private WrcBoatInfoService wrcBoatInfoService;
    @Autowired
    private WrcPicService wrcPicService;
    @Autowired
    private WrcAlbumService wrcAlbumService;

    @RequestMapping("/info")
    public ModelAndView toInfoPage(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        List<WrcDestinationInfo> destList = wrcDestinationService.getTopDestList(5);
        List<WrcAlbum> albumList = wrcAlbumService.getAlbumByfid(Constants.ALBUM_DEST_CODE);
        mav.setViewName("destination");
        mav.addObject("destList",destList);
        mav.addObject("albumList",albumList);
        return mav;
    }

    @RequestMapping("/detail")
    public ModelAndView toDetailPage (@RequestParam String id){
        ModelAndView mav = new ModelAndView();
        //获取目的地详情信息
        WrcDestinationInfo destInfo = wrcDestinationService.getDestinationInfoById(id);
        String keyWord = destInfo.getKeyWord();
        String[] keyWordArr = keyWord.split(",");

        //获取页面船列表 (1行3列
        Page page = new Page();
        page.setId(id);
        page.setCurrentPage(1);
        page.setPageSize(3);
        List<WrcBoatInfo> boatInfoList = wrcBoatInfoService.queryALLBoatInfoList(page);
        //获取图片信息
        List<WrcPic> destPicList = wrcPicService.getPicListByAlbumId(destInfo.getAlbumId());

        mav.setViewName("destinationDetail");
        mav.addObject("boatList",boatInfoList);
        mav.addObject("DestInfo",destInfo);
        mav.addObject("destPicList",destPicList);
        mav.addObject("keyWordArr",keyWordArr);
        return mav;
    }
}
