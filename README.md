# AndroidStudio Database Template

##Description 
Database template is a custom template (like BlankActivity,Fragments and other templates alike) which will make adding Database to your android app easier (using SQLiteOpenHelper and this tutorial) just right click on your App name in project section or file and select “new => database => database”.

##Features
generates database data source and database helper with one click
generates a table with as many columns as you want
for each table there is a type class automatically generated
database oncreate and onupdate codes generated automatically in table class and can be copied to database helper class
generates functions for creating, getting,updating and removing table rows which are available in commented section in table class and can be copied to database data source class

##How to Add the Template to Android Studio 
Clone or download this git repository 
Open it and copy its content to “android-studio\plugins\android\lib\templates\other\”
That's it, just close and reopen Android Studio and a new section named database should be added to the “new” menu.

##How to add Database Using this Template
right click on your App name and select “new => database => database”
this will add a database helper and a database data source to your project.
This is needed only once.

##How to add Database Tables
right click on your App name and select “new => database => databasetable”  
this will add a database table and a database type to your project.
in the opened window there are 3 variables Table name, class name and column names which are explained below:
class name : name of the Table class usually name of the table followed bt table i.e. MyTable,CustomersTable.
database table name : name used to create table in database and name of type class.
table columns : column names separated by ‘,’ i.e. “column1,column2”
note: in columns, _id is generated automatically so there is no need to mention it in “column names”
note: all column types are String but you can change them manually in code.
after the table is created you can find some commented code in table class which should be copied to database data source and database helper classes as described in next section.

##Completing Database Datasource and database helper
Android studio templates system does not support merging for java code so you need to copy some generated code to its class manually ;
after creating the table there should be a commented section of codes at the end of table class.
just copy each section to the class mentioned in commented area and you are good to go.

##Refrences
* Android studio custom templates tutorial
* google blog


##license
>Licensed under the Apache License, Version 2.0 (the "License"); you may not use this work except in compliance with the >License. You may obtain a copy of the License in the LICENSE file, or at:
>
>http://www.apache.org/licenses/LICENSE-2.0
>
>Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" >BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language >governing permissions and limitations under the License. 
