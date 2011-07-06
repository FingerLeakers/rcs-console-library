/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - DBNetwork.as.
 */
package it.ht.rcs.console.network.rest
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.HTTPServiceWrapper;
import it.ht.rcs.console.network.model.Network;
import it.ht.rcs.console.network.model.UserSession;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.http.HTTPMultiService;
import mx.rpc.http.Operation;

import com.adobe.serializers.json.JSONSerializationFilter;

[ExcludeClass]
internal class _Super_DBNetwork extends com.adobe.fiber.services.wrapper.HTTPServiceWrapper
{
    private static var serializer0:JSONSerializationFilter = new JSONSerializationFilter();

    // Constructor
    public function _Super_DBNetwork()
    {
        // initialize service control
        _serviceControl = new mx.rpc.http.HTTPMultiService("https://localhost:4444/");
         var operations:Array = new Array();
         var operation:mx.rpc.http.Operation;
         var argsArray:Array;

         operation = new mx.rpc.http.Operation(null, "all");
         operation.url = "/network";
         operation.method = "GET";
         operation.serializationFilter = serializer0;
         operation.resultType = it.ht.rcs.console.network.model.Network;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "_login");
         operation.url = "/auth/login";
         operation.method = "POST";
         operation.serializationFilter = serializer0;
         operation.contentType = "application/xml";
         operation.resultType = it.ht.rcs.console.network.model.UserSession;
         operations.push(operation);

         _serviceControl.operationList = operations;  


         preInitializeService();
         model_internal::initialize();
    }
    
    //init initialization routine here, child class to override
    protected function preInitializeService():void
    {
      
    }
    

    /**
      * This method is a generated wrapper used to call the 'all' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function all() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("all");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the '_login' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function _login(strXml:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("_login");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(strXml) ;
        return _internal_token;
    }
     
}

}