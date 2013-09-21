namespace ServiceBusWithHTTP;

interface

uses
  System.Collections.Generic,
  System.Linq,
  System.Text, 
  Nancy, 
  Nancy.TinyIoc,
  NServiceBus;

type
  ServiceBusBootStrapper = public class(DefaultNancyBootstrapper)
  private
    _bus:IBus;
  protected
    method ConfigureApplicationContainer(container:TinyIoCContainer);
  public

    constructor(bus:IBus);
  end;

implementation

constructor ServiceBusBootStrapper(bus:IBus);
begin
  inherited constructor;
  self._bus := bus;
end;

method ServiceBusBootStrapper.ConfigureApplicationContainer(container: TinyIoCContainer);
begin
  inherited.ConfigureApplicationContainer(container);
  container.Register<IBus>(_bus);
end;

end.
