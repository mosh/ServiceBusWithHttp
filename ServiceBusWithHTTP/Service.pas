namespace ServiceBusWithHTTP;

interface

uses
  System.Collections.Generic,
  System.Linq,
  System.Text, 
  Nancy.Hosting.Self,
  NServiceBus;

type
  Service = public class(IWantToRunAtStartup)
  private
    host:NancyHost;
  protected
  public
      method Run;
      method Stop;

      property Bus:IBus;
  end;

implementation

method Service.Run;
begin
  var config := new HostConfiguration();
  config.RewriteLocalhost := false;
  host := new Nancy.Hosting.Self.NancyHost(new ServiceBusBootStrapper(Bus),config,new Uri("http://localhost:1234"));
  host.Start;

end;

method Service.Stop;
begin
  if(assigned(host))then
  begin
    host.Stop;
  end;
end;

end.
