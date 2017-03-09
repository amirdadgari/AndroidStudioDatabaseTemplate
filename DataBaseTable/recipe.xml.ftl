<?xml version="1.0"?>
<recipe>
    <instantiate from="root/src/app_package/tables/Table.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/database/tables/${tableName?cap_first}Table.java" />

    <instantiate from="root/src/app_package/types/Type.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/database/types/${tableName?cap_first}.java" />
    
    <open file="${escapeXmlAttribute(srcOut)}/database/types/${tableName?cap_first}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/database/tables/${tableName?cap_first}Table.java" />
</recipe>
