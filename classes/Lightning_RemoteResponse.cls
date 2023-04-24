/**
* @author Amanjot Kaur
* @date 
* @description : Generic Class to handle server trip for apex. 
Modification Log:
------------------------------------------------------------------------------------
Developer Mod Number Date Description
------------------------------------------------------------------------------------
*/
public class Lightning_RemoteResponse{
    
    @AuraEnabled
    public Boolean isSuccess;
    @AuraEnabled
    public String message;
    @AuraEnabled
    public Integer statusCode;
    @AuraEnabled
    public Object payload;
    
    public Lightning_RemoteResponse(Boolean isSuccess, String message, Object data) {
        
        
        this.isSuccess = isSuccess;
        this.message = message;
        this.payload = data;
    }

    public Lightning_RemoteResponse(Boolean isSuccess,Integer statusCode, String message, Object data) {
        
        
        this.isSuccess = isSuccess;
        this.message = message;
        this.statusCode = statusCode;
        this.payload = data;
    }
    
    public Lightning_RemoteResponse(Object data) {
        this(true, 'Done.', data);
    }
}