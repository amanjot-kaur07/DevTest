global class ChildObjects extends VisualEditor.DynamicPickList{
    VisualEditor.DesignTimePageContext context;
    global override VisualEditor.DataRow getDefaultValue(){
        VisualEditor.DataRow defaultValue = new VisualEditor.DataRow('red', 'RED');
        return defaultValue;
    }
    global ChildObjects(VisualEditor.DesignTimePageContext context) {
       this.context = context;
       system.debug(JSON.serialize(context.entityName));
    }
    global override VisualEditor.DynamicPickListRows getValues() {
        VisualEditor.DynamicPickListRows  childObjectValues= new VisualEditor.DynamicPickListRows();
        if(context.pageType == 'RecordPage'){
            DescribeSObjectResult objectResult = Schema.getGlobalDescribe().get(context.entityName).getDescribe();
            List<Schema.ChildRelationship> children = objectResult.getChildRelationships();
            for(Schema.ChildRelationship child:children){
              if(child.getRelationshipName()!=null){
                  VisualEditor.DataRow value = new VisualEditor.DataRow(child.getRelationshipName(),child.getRelationshipName());
                  childObjectValues.addRow(value);
               }
            }
        }
        return childObjectValues;
    }
}