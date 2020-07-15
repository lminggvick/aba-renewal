package com.abacorp.aba.model.type;

import com.abacorp.aba.model.mapper.TypeMapper;
import com.fasterxml.jackson.annotation.JsonFormat;

@JsonFormat(shape = JsonFormat.Shape.OBJECT)
public enum DealType implements TypeMapper {

    UNKNOWN("UNKNOWN"),

    /**
     * 거래 유형
     */
    MONTHLY("월세"),
    CHARTER("전세"),
    SALE("매매");

    private String value;

    DealType(String value) {
        this.value = value;
    }

    @Override
    public String getValue() {
        return value;
    }

    @Override
    public String getCode() {
        return name();
    }

    @Override
    public String toString() {
        return "DealType {" +
                "value='" + value + '\'' +
                '}';
    }
}