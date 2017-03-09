package ${packageName}.database;



import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;

import ${packageName}.database.DataBaseHelper;



public class DataBaseDataSource  {


 	private SQLiteDatabase database;
    private DataBaseHelper dbHelper;

	private Context context;

	public DataBaseDataSource(Context context) {
        dbHelper = new DataBaseHelper(context);
        this.context = context;
    }

 private static DataBaseDataSource instance;

public static synchronized DataBaseDataSource getInstance(Context context)
    {
        if (instance == null)
            instance = new DataBaseDataSource(context);

        return instance;

    }

public void open() throws SQLException {

       if(database==null) database = dbHelper.getWritableDatabase();
        else if (!database.isOpen()) {
           database = dbHelper.getWritableDatabase();

        }
 }



public void close() {
        //dbHelper.close();
        //close is not needed, using it crashes the app
        //database will be close automatically after closing the app
    }

   
//paste generated code for tables here or create functions manualy



}