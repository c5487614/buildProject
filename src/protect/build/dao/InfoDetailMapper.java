package protect.build.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import protect.build.model.InfoDetail;
import protect.build.model.InfoDetailExample;
import protect.build.model.InfoDetailKey;

public interface InfoDetailMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infodetail
     *
     * @mbggenerated Sun Nov 06 21:05:28 CST 2016
     */
    int countByExample(InfoDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infodetail
     *
     * @mbggenerated Sun Nov 06 21:05:28 CST 2016
     */
    int deleteByExample(InfoDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infodetail
     *
     * @mbggenerated Sun Nov 06 21:05:28 CST 2016
     */
    int deleteByPrimaryKey(InfoDetailKey key);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infodetail
     *
     * @mbggenerated Sun Nov 06 21:05:28 CST 2016
     */
    int insert(InfoDetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infodetail
     *
     * @mbggenerated Sun Nov 06 21:05:28 CST 2016
     */
    int insertSelective(InfoDetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infodetail
     *
     * @mbggenerated Sun Nov 06 21:05:28 CST 2016
     */
    List<InfoDetail> selectByExampleWithBLOBs(InfoDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infodetail
     *
     * @mbggenerated Sun Nov 06 21:05:28 CST 2016
     */
    List<InfoDetail> selectByExample(InfoDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infodetail
     *
     * @mbggenerated Sun Nov 06 21:05:28 CST 2016
     */
    InfoDetail selectByPrimaryKey(InfoDetailKey key);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infodetail
     *
     * @mbggenerated Sun Nov 06 21:05:28 CST 2016
     */
    int updateByExampleSelective(@Param("record") InfoDetail record, @Param("example") InfoDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infodetail
     *
     * @mbggenerated Sun Nov 06 21:05:28 CST 2016
     */
    int updateByExampleWithBLOBs(@Param("record") InfoDetail record, @Param("example") InfoDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infodetail
     *
     * @mbggenerated Sun Nov 06 21:05:28 CST 2016
     */
    int updateByExample(@Param("record") InfoDetail record, @Param("example") InfoDetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infodetail
     *
     * @mbggenerated Sun Nov 06 21:05:28 CST 2016
     */
    int updateByPrimaryKeySelective(InfoDetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infodetail
     *
     * @mbggenerated Sun Nov 06 21:05:28 CST 2016
     */
    int updateByPrimaryKeyWithBLOBs(InfoDetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infodetail
     *
     * @mbggenerated Sun Nov 06 21:05:28 CST 2016
     */
    int updateByPrimaryKey(InfoDetail record);
}