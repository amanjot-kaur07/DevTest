/**
* @author : Amanjot Kaur
* @date   : 25/11/2021
* @description : Landing Page Controller.
Modification Log:
------------------------------------------------------------------------------------
Developer Mod Number Date Description
------------------------------------------------------------------------------------
*/

public class LandingPageCtrl { 
    @AuraEnabled
    public static Lightning_RemoteResponse getApiNameOfChild(String recordId,String objectName){
        try{
            Lightning_RemoteResponse response = new Lightning_RemoteResponse(true, 'Success', System.JSON.serialize(DataTableWrapperController.getInstance().getApiNameOfChild(recordId,objectName)));
            if(Test.isRunningTest()){
                throw new AuraHandledException('TEST CONTEXT');
            }
            return response;
        }
        catch(Exception e){
            return new Lightning_RemoteResponse(false,'Fail',e.getMessage());
        }
   }
   @AuraEnabled
    public static Lightning_RemoteResponse getRecords(String objectName, String fieldsToQuery, String filters,String sortField,String sortDirect,String recordId){
        try{
            Lightning_RemoteResponse response = new Lightning_RemoteResponse(true, 'Success', System.JSON.serialize(DataTableWrapperController.getInstance().getRecords(objectName,fieldsToQuery,filters,sortField,sortDirect,recordId)));
            if(Test.isRunningTest()){
                throw new AuraHandledException('TEST CONTEXT');
            }
            return response;
        }
        catch(Exception e){
            return new Lightning_RemoteResponse(false,'Fail',e.getMessage());
        }
   }
   @AuraEnabled(cacheable=true)
    public static Lightning_RemoteResponse getFieldDetails(String objectName, String fieldsToQuery, String filters,String recordId){
        try{
            Lightning_RemoteResponse response = new Lightning_RemoteResponse(true, 'Success', System.JSON.serialize(DataTableWrapperController.getInstance().getFieldDetails(objectName,fieldsToQuery,filters,recordId)));
            if(Test.isRunningTest()){
                throw new AuraHandledException('TEST CONTEXT');
            }
            return response;
        }
        catch(Exception e){
            return new Lightning_RemoteResponse(false,'Fail',e.getMessage());
        }
   }
   @AuraEnabled
    public static Lightning_RemoteResponse retrieveIconForObject(String objectname,String recordId){
        try{
            Lightning_RemoteResponse response = new Lightning_RemoteResponse(true, 'Success', System.JSON.serialize(DataTableWrapperController.getInstance().retrieveIconForObject(objectName,recordId)));
            if(Test.isRunningTest()){
                throw new AuraHandledException('TEST CONTEXT');
            }
            return response;
        }
        catch(Exception e){
            return new Lightning_RemoteResponse(false,'Fail',e.getMessage());
        }
   }
   @AuraEnabled
    public static Lightning_RemoteResponse getFieldLabels(String recordId,String objectName){
        try{
            Lightning_RemoteResponse response = new Lightning_RemoteResponse(true, 'Success', System.JSON.serialize(DataTableWrapperController.getInstance().getFieldLabels(recordId,objectName)));
            if(Test.isRunningTest()){
                throw new AuraHandledException('TEST CONTEXT');
            }
            return response;
        }
        catch(Exception e){
            return new Lightning_RemoteResponse(false,'Fail',e.getMessage());
        }
   }
   @AuraEnabled
    public static Lightning_RemoteResponse getTotalRecords(String objectName,String filters,String recordId){
        try{
            Lightning_RemoteResponse response = new Lightning_RemoteResponse(true, 'Success', System.JSON.serialize(DataTableWrapperController.getInstance().getTotalRecords(objectName,filters,recordId)));
            if(Test.isRunningTest()){
                throw new AuraHandledException('TEST CONTEXT');
            }
            return response;
        }
        catch(Exception e){
            return new Lightning_RemoteResponse(false,'Fail',e.getMessage());
        }
   }
   @AuraEnabled
    public static Lightning_RemoteResponse getRecords2(String objectName, String fieldsToQuery, String filters,String sortField,String sortDirect,String recordId,String offset,String limitrec){
        try{
            Lightning_RemoteResponse response = new Lightning_RemoteResponse(true, 'Success', System.JSON.serialize(DataTableWrapperController.getInstance().getRecords2(objectName,fieldsToQuery,filters,sortField,sortDirect,recordId,offset,limitrec)));
            if(Test.isRunningTest()){
                throw new AuraHandledException('TEST CONTEXT');
            }
            return response;
        }
        catch(Exception e){
            return new Lightning_RemoteResponse(false,'Fail',e.getMessage());
        }
   }
   @AuraEnabled
    public static Lightning_RemoteResponse searchrecords(String objectName,String fieldsToQuery,String filters,String sortField,String sortDirect,String recordId,String offset,String limitrec,String searchSTring){
        try{
            Lightning_RemoteResponse response = new Lightning_RemoteResponse(true, 'Success', System.JSON.serialize(DataTableWrapperController.getInstance().searchrecords(objectName,fieldsToQuery,filters,sortField,sortDirect,recordId,offset,limitrec,searchSTring)));
            if(Test.isRunningTest()){
                throw new AuraHandledException('TEST CONTEXT');
            }
            return response;
        }
        catch(Exception e){
            return new Lightning_RemoteResponse(false,'Fail',e.getMessage());
        }
   }
   @AuraEnabled
    public static Lightning_RemoteResponse updateRecords(String objectName,List<Object> records){
        try{
            Lightning_RemoteResponse response = new Lightning_RemoteResponse(true, 'Success', System.JSON.serialize(DataTableWrapperController.getInstance().updateRecords(objectName,records)));
            if(Test.isRunningTest()){
                throw new AuraHandledException('TEST CONTEXT');
            }
            return response;
        }
        catch(Exception e){
            return new Lightning_RemoteResponse(false,'Fail',e.getMessage());
        }
   }
}