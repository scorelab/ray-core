// WARNING: DO NOT EDIT. This file was generated by a program.
// See $MOJO_SDK/tools/bindings/mojom_bindings_generator.py.

library authenticating_url_loader_interceptor_meta_factory_mojom;
import 'dart:async';
import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojo/mojo/bindings/types/service_describer.mojom.dart' as service_describer;
import 'package:mojo_services/authentication/authentication.mojom.dart' as authentication_mojom;
import 'package:mojo_services/mojo/url_loader_interceptor.mojom.dart' as url_loader_interceptor_mojom;



class _AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  url_loader_interceptor_mojom.UrlLoaderInterceptorFactoryInterfaceRequest factoryRequest = null;
  authentication_mojom.AuthenticationServiceInterface authenticationService = null;

  _AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams() : super(kVersions.last.size);

  _AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams.init(
    url_loader_interceptor_mojom.UrlLoaderInterceptorFactoryInterfaceRequest this.factoryRequest, 
    authentication_mojom.AuthenticationServiceInterface this.authenticationService
  ) : super(kVersions.last.size);

  static _AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams result = new _AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.factoryRequest = decoder0.decodeInterfaceRequest(8, false, url_loader_interceptor_mojom.UrlLoaderInterceptorFactoryStub.newFromEndpoint);
    }
    if (mainDataHeader.version >= 0) {
      
      result.authenticationService = decoder0.decodeServiceInterface(12, false, authentication_mojom.AuthenticationServiceProxy.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams";
    String fieldName;
    try {
      fieldName = "factoryRequest";
      encoder0.encodeInterfaceRequest(factoryRequest, 8, false);
      fieldName = "authenticationService";
      encoder0.encodeInterface(authenticationService, 12, false);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams("
           "factoryRequest: $factoryRequest" ", "
           "authenticationService: $authenticationService" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}

const int _authenticatingUrlLoaderInterceptorMetaFactoryMethodCreateUrlLoaderInterceptorFactoryName = 0;

class _AuthenticatingUrlLoaderInterceptorMetaFactoryServiceDescription implements service_describer.ServiceDescription {
  void getTopLevelInterface(Function responder) {
    responder(null);
  }

  void getTypeDefinition(String typeKey, Function responder) {
    responder(null);
  }

  void getAllTypeDefinitions(Function responder) {
    responder(null);
  }
}

abstract class AuthenticatingUrlLoaderInterceptorMetaFactory {
  static const String serviceName = "mojo::AuthenticatingURLLoaderInterceptorMetaFactory";

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _AuthenticatingUrlLoaderInterceptorMetaFactoryServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static AuthenticatingUrlLoaderInterceptorMetaFactoryProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    AuthenticatingUrlLoaderInterceptorMetaFactoryProxy p = new AuthenticatingUrlLoaderInterceptorMetaFactoryProxy.unbound();
    String name = serviceName ?? AuthenticatingUrlLoaderInterceptorMetaFactory.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void createUrlLoaderInterceptorFactory(url_loader_interceptor_mojom.UrlLoaderInterceptorFactoryInterfaceRequest factoryRequest, authentication_mojom.AuthenticationServiceInterface authenticationService);
}

abstract class AuthenticatingUrlLoaderInterceptorMetaFactoryInterface
    implements bindings.MojoInterface<AuthenticatingUrlLoaderInterceptorMetaFactory>,
               AuthenticatingUrlLoaderInterceptorMetaFactory {
  factory AuthenticatingUrlLoaderInterceptorMetaFactoryInterface([AuthenticatingUrlLoaderInterceptorMetaFactory impl]) =>
      new AuthenticatingUrlLoaderInterceptorMetaFactoryStub.unbound(impl);

  factory AuthenticatingUrlLoaderInterceptorMetaFactoryInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [AuthenticatingUrlLoaderInterceptorMetaFactory impl]) =>
      new AuthenticatingUrlLoaderInterceptorMetaFactoryStub.fromEndpoint(endpoint, impl);

  factory AuthenticatingUrlLoaderInterceptorMetaFactoryInterface.fromMock(
      AuthenticatingUrlLoaderInterceptorMetaFactory mock) =>
      new AuthenticatingUrlLoaderInterceptorMetaFactoryProxy.fromMock(mock);
}

abstract class AuthenticatingUrlLoaderInterceptorMetaFactoryInterfaceRequest
    implements bindings.MojoInterface<AuthenticatingUrlLoaderInterceptorMetaFactory>,
               AuthenticatingUrlLoaderInterceptorMetaFactory {
  factory AuthenticatingUrlLoaderInterceptorMetaFactoryInterfaceRequest() =>
      new AuthenticatingUrlLoaderInterceptorMetaFactoryProxy.unbound();
}

class _AuthenticatingUrlLoaderInterceptorMetaFactoryProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<AuthenticatingUrlLoaderInterceptorMetaFactory> {
  AuthenticatingUrlLoaderInterceptorMetaFactory impl;

  _AuthenticatingUrlLoaderInterceptorMetaFactoryProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _AuthenticatingUrlLoaderInterceptorMetaFactoryProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _AuthenticatingUrlLoaderInterceptorMetaFactoryProxyControl.unbound() : super.unbound();

  String get serviceName => AuthenticatingUrlLoaderInterceptorMetaFactory.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      default:
        proxyError("Unexpected message type: ${message.header.type}");
        close(immediate: true);
        break;
    }
  }

  @override
  String toString() {
    var superString = super.toString();
    return "_AuthenticatingUrlLoaderInterceptorMetaFactoryProxyControl($superString)";
  }
}

class AuthenticatingUrlLoaderInterceptorMetaFactoryProxy
    extends bindings.Proxy<AuthenticatingUrlLoaderInterceptorMetaFactory>
    implements AuthenticatingUrlLoaderInterceptorMetaFactory,
               AuthenticatingUrlLoaderInterceptorMetaFactoryInterface,
               AuthenticatingUrlLoaderInterceptorMetaFactoryInterfaceRequest {
  AuthenticatingUrlLoaderInterceptorMetaFactoryProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _AuthenticatingUrlLoaderInterceptorMetaFactoryProxyControl.fromEndpoint(endpoint));

  AuthenticatingUrlLoaderInterceptorMetaFactoryProxy.fromHandle(core.MojoHandle handle)
      : super(new _AuthenticatingUrlLoaderInterceptorMetaFactoryProxyControl.fromHandle(handle));

  AuthenticatingUrlLoaderInterceptorMetaFactoryProxy.unbound()
      : super(new _AuthenticatingUrlLoaderInterceptorMetaFactoryProxyControl.unbound());

  factory AuthenticatingUrlLoaderInterceptorMetaFactoryProxy.fromMock(AuthenticatingUrlLoaderInterceptorMetaFactory mock) {
    AuthenticatingUrlLoaderInterceptorMetaFactoryProxy newMockedProxy =
        new AuthenticatingUrlLoaderInterceptorMetaFactoryProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static AuthenticatingUrlLoaderInterceptorMetaFactoryProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For AuthenticatingUrlLoaderInterceptorMetaFactoryProxy"));
    return new AuthenticatingUrlLoaderInterceptorMetaFactoryProxy.fromEndpoint(endpoint);
  }


  void createUrlLoaderInterceptorFactory(url_loader_interceptor_mojom.UrlLoaderInterceptorFactoryInterfaceRequest factoryRequest, authentication_mojom.AuthenticationServiceInterface authenticationService) {
    if (impl != null) {
      impl.createUrlLoaderInterceptorFactory(factoryRequest, authenticationService);
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams();
    params.factoryRequest = factoryRequest;
    params.authenticationService = authenticationService;
    ctrl.sendMessage(params,
        _authenticatingUrlLoaderInterceptorMetaFactoryMethodCreateUrlLoaderInterceptorFactoryName);
  }
}

class _AuthenticatingUrlLoaderInterceptorMetaFactoryStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<AuthenticatingUrlLoaderInterceptorMetaFactory> {
  AuthenticatingUrlLoaderInterceptorMetaFactory _impl;

  _AuthenticatingUrlLoaderInterceptorMetaFactoryStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [AuthenticatingUrlLoaderInterceptorMetaFactory impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _AuthenticatingUrlLoaderInterceptorMetaFactoryStubControl.fromHandle(
      core.MojoHandle handle, [AuthenticatingUrlLoaderInterceptorMetaFactory impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _AuthenticatingUrlLoaderInterceptorMetaFactoryStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => AuthenticatingUrlLoaderInterceptorMetaFactory.serviceName;



  void handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      bindings.ControlMessageHandler.handleMessage(
          this, 0, message);
      return;
    }
    if (_impl == null) {
      throw new core.MojoApiError("$this has no implementation set");
    }
    switch (message.header.type) {
      case _authenticatingUrlLoaderInterceptorMetaFactoryMethodCreateUrlLoaderInterceptorFactoryName:
        var params = _AuthenticatingUrlLoaderInterceptorMetaFactoryCreateUrlLoaderInterceptorFactoryParams.deserialize(
            message.payload);
        _impl.createUrlLoaderInterceptorFactory(params.factoryRequest, params.authenticationService);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  AuthenticatingUrlLoaderInterceptorMetaFactory get impl => _impl;
  set impl(AuthenticatingUrlLoaderInterceptorMetaFactory d) {
    if (d == null) {
      throw new core.MojoApiError("$this: Cannot set a null implementation");
    }
    if (isBound && (_impl == null)) {
      beginHandlingEvents();
    }
    _impl = d;
  }

  @override
  void bind(core.MojoMessagePipeEndpoint endpoint) {
    super.bind(endpoint);
    if (!isOpen && (_impl != null)) {
      beginHandlingEvents();
    }
  }

  @override
  String toString() {
    var superString = super.toString();
    return "_AuthenticatingUrlLoaderInterceptorMetaFactoryStubControl($superString)";
  }

  int get version => 0;
}

class AuthenticatingUrlLoaderInterceptorMetaFactoryStub
    extends bindings.Stub<AuthenticatingUrlLoaderInterceptorMetaFactory>
    implements AuthenticatingUrlLoaderInterceptorMetaFactory,
               AuthenticatingUrlLoaderInterceptorMetaFactoryInterface,
               AuthenticatingUrlLoaderInterceptorMetaFactoryInterfaceRequest {
  AuthenticatingUrlLoaderInterceptorMetaFactoryStub.unbound([AuthenticatingUrlLoaderInterceptorMetaFactory impl])
      : super(new _AuthenticatingUrlLoaderInterceptorMetaFactoryStubControl.unbound(impl));

  AuthenticatingUrlLoaderInterceptorMetaFactoryStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [AuthenticatingUrlLoaderInterceptorMetaFactory impl])
      : super(new _AuthenticatingUrlLoaderInterceptorMetaFactoryStubControl.fromEndpoint(endpoint, impl));

  AuthenticatingUrlLoaderInterceptorMetaFactoryStub.fromHandle(
      core.MojoHandle handle, [AuthenticatingUrlLoaderInterceptorMetaFactory impl])
      : super(new _AuthenticatingUrlLoaderInterceptorMetaFactoryStubControl.fromHandle(handle, impl));

  static AuthenticatingUrlLoaderInterceptorMetaFactoryStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For AuthenticatingUrlLoaderInterceptorMetaFactoryStub"));
    return new AuthenticatingUrlLoaderInterceptorMetaFactoryStub.fromEndpoint(endpoint);
  }


  void createUrlLoaderInterceptorFactory(url_loader_interceptor_mojom.UrlLoaderInterceptorFactoryInterfaceRequest factoryRequest, authentication_mojom.AuthenticationServiceInterface authenticationService) {
    return impl.createUrlLoaderInterceptorFactory(factoryRequest, authenticationService);
  }
}


