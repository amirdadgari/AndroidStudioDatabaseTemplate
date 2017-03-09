package ${packageName}.database.tables;

import android.database.sqlite.SQLiteDatabase;

public class ${tableName?cap_first}Table {

    // Database table
    public static final String TABLE_${tableName?upper_case} = "${tableName?lower_case}";


    public static final String COLUMN_ID = "_id";


    <#list rowsList?split(",") as s>
        public static final String COLUMN_${s?upper_case} = "${s?lower_case}";
    </#list>
    

    // Database creation SQL statement
    private static final String DATABASE_CREATE = "create table "
            + TABLE_${tableName?upper_case}
            + "("
            + COLUMN_ID + " integer primary key autoincrement, "
            <#list rowsList?split(",") as s>
            + COLUMN_${s?upper_case} + " text not null, "
           </#list>
            + ");";

    public static void onCreate(SQLiteDatabase database) {
        database.execSQL(DATABASE_CREATE);
    }

    public static void onUpgrade(SQLiteDatabase database, int oldVersion,
                                 int newVersion) {
        database.execSQL("DROP TABLE IF EXISTS " + TABLE_${tableName?upper_case});
        onCreate(database);
    }


}

/*
//androidstudio does not support merge for java code so you need to copy these generated codes to related classes yourself if you need them

//first paste these imports at the top of both DataBaseHelper and DataBaseDataSource classes
import ${packageName}.database.tables.${tableName?cap_first}Table;

////codes for DataBaseHelper class ////

//this code should be copied to DataBaseHelper onCreate method:
    ${tableName?cap_first}Table.onCreate(database);

//this code should be copied to DataBaseHelper onUpdate method:
    ${tableName?cap_first}Table.onUpgrade(db, oldVersion, newVersion);


////codes for DataBaseDataSource class ////

//paste these imports at top
import android.content.ContentValues;
import ${packageName}.database.types.${tableName?cap_first};

// copy and paste these codes to the end of DataBaseDataSource class

private String[] ${tableName?cap_first}TableColumns = {${tableName?cap_first}Table.COLUMN_ID <#list rowsList?split(",") as s>, ${tableName?cap_first}Table.COLUMN_${s?upper_case} </#list> };

//creates new row in ${tableName?cap_first} Table
public boolean create${tableName?cap_first}(<#list rowsList?split(",") as s> String ${s?lower_case} <#if s_has_next>,</#if></#list>) {
        
        if(!isTableExists(database, ${tableName?cap_first}Table.TABLE_${tableName?upper_case})){
            ${tableName?cap_first}Table.onCreate(database);
        }

        ContentValues values = new ContentValues();

        <#list rowsList?split(",") as s>
            values.put(${tableName?cap_first}Table.COLUMN_${s?upper_case}, ${s?lower_case});
        </#list>
        

        long insertId = database.insert(${tableName?cap_first}Table.TABLE_${tableName?upper_case} , null,
                values);

        Cursor cursor = database.query(${tableName?cap_first}Table.TABLE_${tableName?upper_case},
                ${tableName?cap_first}TableColumns, ${tableName?cap_first}Table.COLUMN_ID + " = " + insertId, null,
                null, null, null);
        cursor.moveToFirst();
        ${tableName?cap_first} new${tableName?cap_first} = new ${tableName?cap_first}();
        if(cursor.getCount()>0){
            cursor.close();
            return true; //added
        }

        cursor.close();
        return false;//not added
    }


    //delete row with object
    public void delete${tableName?cap_first}(${tableName?cap_first} ${tableName?lower_case}) {
        long id = ${tableName?lower_case}.getId();
        database.delete(${tableName?cap_first}Table.TABLE_${tableName?upper_case}, ${tableName?cap_first}Table.COLUMN_ID
                + " = " + id, null);
    }

    //delete row with id
    public void delete${tableName?cap_first}(long ${tableName?lower_case}_id) {

        database.delete(${tableName?cap_first}Table.TABLE_${tableName?upper_case}, ${tableName?cap_first}Table.COLUMN_ID
                + " = " + ${tableName?lower_case}_id, null);
    }

    public void update${tableName?cap_first}(long id,<#list rowsList?split(",") as s> String new${s?lower_case} <#if s_has_next>,</#if></#list>){
        ContentValues cv = new ContentValues();
        <#list rowsList?split(",") as s>
            cv.put(${tableName?cap_first}Table.COLUMN_${s?upper_case}, new${s?lower_case});
        </#list>
        database.update(${tableName?cap_first}Table.TABLE_${tableName?upper_case}, cv, "_id " + "=" + id, null);
    }

public Cursor get${tableName?cap_first}Cursor(){
         if(!isTableExists(database, ${tableName?cap_first}Table.TABLE_${tableName?upper_case})){
            ${tableName?cap_first}Table.onCreate(database);
        }

        Cursor cursor = database.query(${tableName?cap_first}Table.TABLE_${tableName?upper_case},
                ${tableName?cap_first}TableColumns, null, null, null, null, null);

        return cursor;

    }
   
   boolean isTableExists(SQLiteDatabase db, String tableName)
    {
        if (tableName == null || db == null || !db.isOpen())
        {
            return false;
        }
        Cursor cursor = db.rawQuery("SELECT COUNT(*) FROM sqlite_master WHERE type = ? AND name = ?", new String[] {"table", tableName});
        if (!cursor.moveToFirst())
        {
            return false;
        }
        int count = cursor.getInt(0);
        cursor.close();
        return count > 0;
    }

*/
