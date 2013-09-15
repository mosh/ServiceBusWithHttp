namespace ServiceBusWithHTTP;

interface

uses
  System.Collections.Generic,
  System.Linq,
  System.Text, 
  NServiceBus;

type
  Service = public class(IWantToRunAtStartup)
  private
  protected
  public
      method Run;
      method Stop;
  end;

implementation

method Service.Run;
begin

end;

method Service.Stop;
begin

end;

end.
