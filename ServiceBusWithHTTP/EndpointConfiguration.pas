namespace ServiceBusWithHTTP;

interface

uses
  NServiceBus,
  System.Collections.Generic,
  System.Linq,
  System.Text, 
  NServiceBus.Features;

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

    Configure
    .With
    .DefaultBuilder
    //.UseTransport<RabbitMQ>()
    .Features
    .Disable<SecondLevelRetries>
    .Disable<TimeoutManager>
    ;
end;

end.
