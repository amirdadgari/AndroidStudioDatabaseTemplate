<?xml version="1.0"?>
<recipe>

   

    <instantiate from="root/src/app_package/DataBaseHelper.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/database/DataBaseHelper.java" />

    <instantiate from="root/src/app_package/DataBaseDataSource.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/database/DataBaseDataSource.java" />


    <open file="${escapeXmlAttribute(srcOut)}/database/DataBaseHelper.java" />
    <open file="${escapeXmlAttribute(srcOut)}/database/DataBaseDataSource.java" />


</recipe>
