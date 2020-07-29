package com.abacorp.aba.model;

import com.abacorp.aba.core.repository.MapRepository;
import com.abacorp.aba.model.dto.MapFiltersDto;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class OfferTest {
    private final MapFiltersDto testDto = MapFiltersDto.builder()
            .west("35.15604726758777")
            .east("35.170247905919645")
            .south("128.1038512961487")
            .north("128.13354775681677")
            .build();

    @Autowired
    private MapRepository repository;

    @Test
    public void getOffersUsingFilters() {
        List<Offer> offers = repository.selectOffersUsingFilter(testDto);
        log.info("offers.. : {}", offers);
    }

    @Test
    public void getOffersByRegion() {
        List<Offer> offers = repository.selectOffersByBelongsTo("호탄동");
        log.info("\noffers.. : {}", offers);
   }
}
