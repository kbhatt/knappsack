package com.sparc.knappsack.models.api.v1;

public class Property {
    private String key;
    private String value;
    private String description;

    public Property() {
        key = "";
        value = "";
        description = "";
    }

    public Property(String key, String value) {
        this.key = key;
        this.value = value;
        this.description = "";
    }

    public Property(String key, String value, String description) {
        this.key = key;
        this.value = value;
        this.description = description;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
