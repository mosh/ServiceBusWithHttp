namespace ServiceBusWithHTTP.Handlers;

interface

uses
  ServiceBus.Messages,
  System.Collections.Generic,
  System.Linq,
  System.Text;

type
  DomainHandler = public class(NServiceBus.IHandleMessages<DomainMessage>)
  private
  protected
  public
    method Handle(message:DomainMessage);
  end;

implementation

method DomainHandler.Handle(message: DomainMessage);
begin
  Console.WriteLine('DomainMessage');
end;

end.
