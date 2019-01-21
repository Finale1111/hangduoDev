package com.hangduo.dev1.entity;

public class Law {

    private int lawNum,showStatus;
    private String lawAlias,lawVersion,lawTitle,lawDescription,lawLogoUrl,lawPDFTitle,lawDownloadLink;

    public int getLawNum() {
        return lawNum;
    }

    public void setLawNum(int lawNum) {
        this.lawNum = lawNum;
    }

    public int getShowStatus() {
        return showStatus;
    }

    public void setShowStatus(int showStatus) {
        this.showStatus = showStatus;
    }

    public String getLawAlias() {
        return lawAlias;
    }

    public void setLawAlias(String lawAlias) {
        this.lawAlias = lawAlias;
    }

    public String getLawVersion() {
        return lawVersion;
    }

    public void setLawVersion(String lawVersion) {
        this.lawVersion = lawVersion;
    }

    public String getLawTitle() {
        return lawTitle;
    }

    public void setLawTitle(String lawTitle) {
        this.lawTitle = lawTitle;
    }

    public String getLawDescription() {
        return lawDescription;
    }

    public void setLawDescription(String lawDescription) {
        this.lawDescription = lawDescription;
    }

    public String getLawLogoUrl() {
        return lawLogoUrl;
    }

    public void setLawLogoUrl(String lawLogoUrl) {
        this.lawLogoUrl = lawLogoUrl;
    }

    public String getLawPDFTitle() {
        return lawPDFTitle;
    }

    public void setLawPDFTitle(String lawPDFTitle) {
        this.lawPDFTitle = lawPDFTitle;
    }

    public String getLawDownloadLink() {
        return lawDownloadLink;
    }

    public void setLawDownloadLink(String lawDownloadLink) {
        this.lawDownloadLink = lawDownloadLink;
    }

    @Override
    public boolean equals(Object object) {
        if (object instanceof Law){
            Law law=(Law)object;
            if (this.lawAlias.equals(law.lawAlias)){
                return true;
            }else{
                return false;
            }
        }else{
            return false;
        }


    }
}
