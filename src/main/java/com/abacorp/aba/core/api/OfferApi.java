package com.abacorp.aba.core.api;

import com.abacorp.aba.core.service.MapService;
import com.abacorp.aba.model.Offer;
import com.abacorp.aba.model.dto.MapFiltersDto;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/apis")
@Slf4j
public class OfferApi {
    private final int OFFERS_PER_PAGE = 1;
    private final int MAXIMUM_PAGE = 999;

    @Autowired
    private MapService service;

    @RequestMapping(value = "/offers", method = RequestMethod.POST)
    public PageInfo<Offer> offers(@RequestBody MapFiltersDto dto) {
        log.info("Dto : {}", dto);

        if (dto.getBelongsTo() != null) {
            return PageHelper.startPage(dto.getPage(), OFFERS_PER_PAGE).doSelectPageInfo(
                    () -> service.getOffersInRegion(dto)
            );
        } else {
            int limit = dto.getPage() == 0 ? MAXIMUM_PAGE : OFFERS_PER_PAGE;

            return PageHelper.startPage(dto.getPage(), limit).doSelectPageInfo(
                    () -> service.getOffers(dto)
            );
        }
    }

    @RequestMapping(value = "/offers/{offer}", method = RequestMethod.GET)
    public Offer show(@PathVariable(value = "offer") int id) {
        return service.getOfferById(id);
    }

    @RequestMapping(value = "/offers/spot", method = RequestMethod.POST)
    public List<Offer> offersOfLatLng(@RequestBody MapFiltersDto dto) {
        log.info("dto : {}", dto);
        return service.getOffersByLatLng(dto);
    }

    @RequestMapping(value = "/offers", method = RequestMethod.GET)
    public List<Offer> offersByIdKeyword(@RequestParam(value = "idKey") String idKey) {
        return service.getOffersByIdKeyword(idKey);
    }

    @RequestMapping(value = "/offers/my", method = RequestMethod.GET)
    public PageInfo<Offer> offersByUserId(@RequestParam(value = "userId") String userId,
                                          @RequestParam(value = "page") int page) {
        log.info("userId : {}", userId);
        log.info("page : {}", page);
        return PageHelper.startPage(page, 3).doSelectPageInfo(
                () -> service.getOffersByUserId(userId)
        );
    }

    @RequestMapping(value = "/offers/{offer}", method = RequestMethod.DELETE)
    public int delete(@PathVariable(value = "offer") int id) {
        return service.deleteOfferById(id);
    }
}
