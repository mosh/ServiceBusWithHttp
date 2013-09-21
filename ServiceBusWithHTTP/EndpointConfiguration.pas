namespace ServiceBusWithHTTP;

interface

uses
  System.Reflection,
  NServiceBus,
  System.Collections.Generic,
  System.Linq,
  System.Text, 
  NServiceBus.Features, 
  ServiceBus.Messages;

type

  EndpointConfiguration = public class(IConfigureThisEndpoint, INameThisEndpoint, AsA_Server,IWantCustomInitialization,UsingTransport<RabbitMQ>)
  private
  protected
  public
      method GetName:String;
      method Init;
  end;

implementation

method EndpointConfiguration.GetName: String;
begin
  exit 'ServiceBusWithHttp';
end;

method EndpointConfiguration.Init;
begin

    var scanThese := new List<&Assembly> ();

    scanThese.Add(typeOf(DomainMessage).Assembly);

    Configure
    .With(scanThese)
    .DefaultBuilder
    .DefiningMessagesAs(t -> assigned(t.Namespace) and t.Namespace.StartsWith('ServiceBus.Messages'))
    .Features
    .Disable<SecondLevelRetries>
    .Disable<TimeoutManager>
    ;
end;

end.
