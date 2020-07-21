package com.abacorp.aba;

import com.abacorp.aba.model.dto.MapFiltersDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@RunWith(JUnit4.class)
public class BasicTest {
    private static final Logger logger = LoggerFactory.getLogger(BasicTest.class);

    @Test
    public void noArgsConstructor() {
        MapFiltersDto filtersDto = new MapFiltersDto();
        logger.error("a : {}", filtersDto.getEast());
    }
}
