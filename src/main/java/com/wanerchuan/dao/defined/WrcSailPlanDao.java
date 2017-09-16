package com.wanerchuan.dao.defined;

import com.wanerchuan.domain.defined.Page;
import com.wanerchuan.domain.generation.WrcAirrouteFeatureDetail;
import com.wanerchuan.domain.generation.WrcAirrouteFeeDetail;
import com.wanerchuan.domain.generation.WrcAirrouteFlowDetail;
import com.wanerchuan.domain.generation.WrcAirrouteInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by zzh on 2017/9/10.
 */
@Repository
public interface WrcSailPlanDao {

    List<WrcAirrouteInfo> getSailPlanList(Page page);

    int queryPlanNum(Page page);

    WrcAirrouteFeeDetail getFeeInfo(String airrouteId);

    List<WrcAirrouteFeatureDetail> getFeatureInfo(String airrouteId);

    List<WrcAirrouteFlowDetail> getFlowList(String airrouteId);
}
