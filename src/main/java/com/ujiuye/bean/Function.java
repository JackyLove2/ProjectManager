package com.ujiuye.bean;

public class Function {
    private Integer id;

    private String proname;

    private String analysisname;

    private Integer modeleFk;

    private String functionname;

    private String level;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProname() {
        return proname;
    }

    public void setProname(String proname) {
        this.proname = proname == null ? null : proname.trim();
    }

    public String getAnalysisname() {
        return analysisname;
    }

    public void setAnalysisname(String analysisname) {
        this.analysisname = analysisname == null ? null : analysisname.trim();
    }

    public Integer getModeleFk() {
        return modeleFk;
    }

    public void setModeleFk(Integer modeleFk) {
        this.modeleFk = modeleFk;
    }

    public String getFunctionname() {
        return functionname;
    }

    public void setFunctionname(String functionname) {
        this.functionname = functionname == null ? null : functionname.trim();
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level == null ? null : level.trim();
    }
}