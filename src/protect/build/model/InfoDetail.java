package protect.build.model;

public class InfoDetail extends InfoDetailKey {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column infodetail.InfoType
     *
     * @mbggenerated Sat Dec 17 14:49:54 CST 2016
     */
    private String infoType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column infodetail.InfoDataURL
     *
     * @mbggenerated Sat Dec 17 14:49:54 CST 2016
     */
    private String infoDataURL;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column infodetail.InfoData
     *
     * @mbggenerated Sat Dec 17 14:49:54 CST 2016
     */
    private byte[] infoData;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column infodetail.InfoType
     *
     * @return the value of infodetail.InfoType
     *
     * @mbggenerated Sat Dec 17 14:49:54 CST 2016
     */
    public String getInfoType() {
        return infoType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column infodetail.InfoType
     *
     * @param infoType the value for infodetail.InfoType
     *
     * @mbggenerated Sat Dec 17 14:49:54 CST 2016
     */
    public void setInfoType(String infoType) {
        this.infoType = infoType == null ? null : infoType.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column infodetail.InfoDataURL
     *
     * @return the value of infodetail.InfoDataURL
     *
     * @mbggenerated Sat Dec 17 14:49:54 CST 2016
     */
    public String getInfoDataURL() {
        return infoDataURL;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column infodetail.InfoDataURL
     *
     * @param infoDataURL the value for infodetail.InfoDataURL
     *
     * @mbggenerated Sat Dec 17 14:49:54 CST 2016
     */
    public void setInfoDataURL(String infoDataURL) {
        this.infoDataURL = infoDataURL == null ? null : infoDataURL.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column infodetail.InfoData
     *
     * @return the value of infodetail.InfoData
     *
     * @mbggenerated Sat Dec 17 14:49:54 CST 2016
     */
    public byte[] getInfoData() {
        return infoData;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column infodetail.InfoData
     *
     * @param infoData the value for infodetail.InfoData
     *
     * @mbggenerated Sat Dec 17 14:49:54 CST 2016
     */
    public void setInfoData(byte[] infoData) {
        this.infoData = infoData;
    }
}