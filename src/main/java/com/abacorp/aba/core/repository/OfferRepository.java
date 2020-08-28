package com.abacorp.aba.core.repository;

import com.abacorp.aba.model.Offer;
import com.abacorp.aba.model.OfferAddition;
import com.abacorp.aba.model.OfferAddress;
import com.abacorp.aba.model.dto.MapFiltersDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class OfferRepository {

    @Autowired
    private SqlSession sqlSession;

    public Offer selectOfferById(int id) {
        return sqlSession.selectOne("selectOfferById", id);
    }

    // ───────────────────────── For `map.jsp` ───────────────────────── //
    public List<Offer> selectOffersUsingFilter(MapFiltersDto dto) {
        return sqlSession.selectList("selectOffersByFilters", dto);
    }

    public List<Offer> selectOffersByBelongsTo(MapFiltersDto dto) {
        return sqlSession.selectList("selectOffersByRegion", dto);
    }

    public List<Offer> selectOffersByLatLng(MapFiltersDto latLng) {
        return sqlSession.selectList("selectOffersByLatLng", latLng);
    }

    public List<Offer> selectOffersByIdKeyword(String idKey) {
        return sqlSession.selectList("selectOffersByIdKey", idKey);
    }

    public int selectCountByFilters(MapFiltersDto dto) {
        return sqlSession.selectOne("selectCountByBelongsAndFilters", dto);
    }
    // ───────────────────────────────────────────────────────────────── //

    /**
     * Insert `offer` and return `offerId` of inserted `offer`.
     *
     * @param offer
     * @return offerId (autogeneratedKey)
     */
    public int insertOffer(Offer offer) {
        return sqlSession.insert("insertOffer", offer);
    }

    /* return query row */
    public int insertOfferAddress(OfferAddress offerAddress) {
        return sqlSession.insert("insertOfferAddress", offerAddress);
    }

    /* return query row */
    public int insertOfferAddition(OfferAddition offerAddition) {
        return sqlSession.insert("insertOfferAddition", offerAddition);
    }

    public int deleteOfferById(int offerId) {
        return sqlSession.delete("deleteOfferById", offerId);
    }

    public int updateOfferThumbnailById(Offer offer) {
        return sqlSession.update("updateThumbnailById", offer);
    }
}