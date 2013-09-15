namespace ConsoleApplication1;

interface

uses
  ServiceBus.Messages,
  System.Linq, 
  NServiceBus;

type
  ConsoleApp = class
  public
    class method Main(args: array of String);
  end;

implementation

class method ConsoleApp.Main(args: array of String);
begin
  var bus := Configure
  .With
  .DefaultBuilder
  .UseTransport<RabbitMQ>()
  .UnicastBus()
  .SendOnly
  ;

  bus.Send(new DomainMessage);
end;

end.
