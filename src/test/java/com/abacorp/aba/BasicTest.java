package com.abacorp.aba;

import com.abacorp.aba.model.dto.MapFiltersDto;
import com.abacorp.aba.model.type.OfferType;
import com.abacorp.aba.model.type.UserRoleType;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RunWith(JUnit4.class)
public class BasicTest {
    private static final Logger logger = LoggerFactory.getLogger(BasicTest.class);

    @Test
    public void noArgsConstructor() {
        MapFiltersDto filtersDto = new MapFiltersDto();
        logger.error("a : {}", filtersDto.getEast());
    }

    @Test
    public void enumTest() {
        String code = "ONE_ROOM";
        logger.info("result : {}", OfferType.create(code).getValue());

        String dbValue = "MASTER";
        logger.info("result : {}", UserRoleType.create(dbValue).getCode());
    }

    @Test
    public void regex() {
        String id = "vick123";

        Pattern pattern = Pattern.compile("[A-Za-z]+[0-9]*");
        Matcher matcher = pattern.matcher(id);

        if(matcher.find()) {
            logger.info(matcher.group());
        } else {
            logger.info("불일치");
        }
    }
}
