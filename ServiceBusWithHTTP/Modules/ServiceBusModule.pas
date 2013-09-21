namespace ServiceBusWithHTTP.Modules;

interface

uses
  System.Collections.Generic,
  System.Linq,
  System.Text, 
  Nancy, 
  NServiceBus, 
  ServiceBus.Messages;

type
  ServiceBusModule = public class(NancyModule)
  private
    _bus:IBus;
  protected
  public
    constructor(bus:IBus);

  end;

implementation

constructor ServiceBusModule(bus:IBus);
begin
  inherited constructor;

  _bus := bus;

  Get['/ServiceBus'] := _ -> 
    begin 
      exit Response.AsText('Hello');  
    end;
  Put['/ServiceBus'] := _ -> 
    begin 
      if(assigned(_bus))then
      begin
        var message := new DomainMessage;                          
        _bus.Send(message);
      end;
      exit Response.AsJson(new class(), HttpStatusCode.OK);  
    end;
  Post['/ServiceBus'] := _ -> 
    begin 
      if(assigned(_bus))then
      begin
        var message := new DomainMessage;                          
        _bus.Send(message);
      end;
      exit Response.AsJson(new class(), HttpStatusCode.OK);  
    end;

end;

end.
