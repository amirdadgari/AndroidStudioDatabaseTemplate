package ${packageName}.database.types;


public class ${tableName?cap_first} {
        
        private long id;
        <#list rowsList?split(",") as s>
        private String ${s?lower_case};
        </#list>


        public long getId() {
            return id;
        }

        public void setId(long id) {
            this.id = id;
        }

        <#list rowsList?split(",") as s>
        public String get${s?cap_first}() {
            return ${s?lower_case};
        }

        public void set${s?cap_first}(String ${s?lower_case}) {
            this.${s?lower_case} = ${s?lower_case};
        }
        </#list>

}
