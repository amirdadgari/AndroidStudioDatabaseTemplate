package ${packageName}.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;


public class DataBaseHelper extends SQLiteOpenHelper  {



    private static final String DATABASE_NAME = "${dataBaseName}";
    private static final int DATABASE_VERSION = 1;




    public DataBaseHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase database) {
        //put your tables onCreate here for  example
        //ExampleTable.onCreate(database);

    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        //put your tables onUpdate here for  example
        //ExampleTable.onUpgrade(db, oldVersion, newVersion);

    }

}
