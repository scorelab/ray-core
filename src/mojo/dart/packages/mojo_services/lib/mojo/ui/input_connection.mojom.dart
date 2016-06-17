// WARNING: DO NOT EDIT. This file was generated by a program.
// See $MOJO_SDK/tools/bindings/mojom_bindings_generator.py.

library input_connection_mojom;
import 'dart:async';
import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojo/mojo/bindings/types/service_describer.mojom.dart' as service_describer;
import 'package:mojo_services/mojo/input_events.mojom.dart' as input_events_mojom;



class _InputConnectionSetListenerParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  InputListenerInterface listener = null;

  _InputConnectionSetListenerParams() : super(kVersions.last.size);

  _InputConnectionSetListenerParams.init(
    InputListenerInterface this.listener
  ) : super(kVersions.last.size);

  static _InputConnectionSetListenerParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _InputConnectionSetListenerParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _InputConnectionSetListenerParams result = new _InputConnectionSetListenerParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.listener = decoder0.decodeServiceInterface(8, true, InputListenerProxy.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_InputConnectionSetListenerParams";
    String fieldName;
    try {
      fieldName = "listener";
      encoder0.encodeInterface(listener, 8, true);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_InputConnectionSetListenerParams("
           "listener: $listener" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class _InputListenerOnEventParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  input_events_mojom.Event event = null;

  _InputListenerOnEventParams() : super(kVersions.last.size);

  _InputListenerOnEventParams.init(
    input_events_mojom.Event this.event
  ) : super(kVersions.last.size);

  static _InputListenerOnEventParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _InputListenerOnEventParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _InputListenerOnEventParams result = new _InputListenerOnEventParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.event = input_events_mojom.Event.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_InputListenerOnEventParams";
    String fieldName;
    try {
      fieldName = "event";
      encoder0.encodeStruct(event, 8, false);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_InputListenerOnEventParams("
           "event: $event" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["event"] = event;
    return map;
  }
}


class InputListenerOnEventResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  bool consumed = false;

  InputListenerOnEventResponseParams() : super(kVersions.last.size);

  InputListenerOnEventResponseParams.init(
    bool this.consumed
  ) : super(kVersions.last.size);

  static InputListenerOnEventResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static InputListenerOnEventResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    InputListenerOnEventResponseParams result = new InputListenerOnEventResponseParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.consumed = decoder0.decodeBool(8, 0);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "InputListenerOnEventResponseParams";
    String fieldName;
    try {
      fieldName = "consumed";
      encoder0.encodeBool(consumed, 8, 0);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "InputListenerOnEventResponseParams("
           "consumed: $consumed" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["consumed"] = consumed;
    return map;
  }
}

const int _inputConnectionMethodSetListenerName = 0;

class _InputConnectionServiceDescription implements service_describer.ServiceDescription {
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

abstract class InputConnection {
  static const String serviceName = "mojo::ui::InputConnection";

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _InputConnectionServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static InputConnectionProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    InputConnectionProxy p = new InputConnectionProxy.unbound();
    String name = serviceName ?? InputConnection.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void setListener(InputListenerInterface listener);
}

abstract class InputConnectionInterface
    implements bindings.MojoInterface<InputConnection>,
               InputConnection {
  factory InputConnectionInterface([InputConnection impl]) =>
      new InputConnectionStub.unbound(impl);

  factory InputConnectionInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [InputConnection impl]) =>
      new InputConnectionStub.fromEndpoint(endpoint, impl);

  factory InputConnectionInterface.fromMock(
      InputConnection mock) =>
      new InputConnectionProxy.fromMock(mock);
}

abstract class InputConnectionInterfaceRequest
    implements bindings.MojoInterface<InputConnection>,
               InputConnection {
  factory InputConnectionInterfaceRequest() =>
      new InputConnectionProxy.unbound();
}

class _InputConnectionProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<InputConnection> {
  InputConnection impl;

  _InputConnectionProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _InputConnectionProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _InputConnectionProxyControl.unbound() : super.unbound();

  String get serviceName => InputConnection.serviceName;

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
    return "_InputConnectionProxyControl($superString)";
  }
}

class InputConnectionProxy
    extends bindings.Proxy<InputConnection>
    implements InputConnection,
               InputConnectionInterface,
               InputConnectionInterfaceRequest {
  InputConnectionProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _InputConnectionProxyControl.fromEndpoint(endpoint));

  InputConnectionProxy.fromHandle(core.MojoHandle handle)
      : super(new _InputConnectionProxyControl.fromHandle(handle));

  InputConnectionProxy.unbound()
      : super(new _InputConnectionProxyControl.unbound());

  factory InputConnectionProxy.fromMock(InputConnection mock) {
    InputConnectionProxy newMockedProxy =
        new InputConnectionProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static InputConnectionProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For InputConnectionProxy"));
    return new InputConnectionProxy.fromEndpoint(endpoint);
  }


  void setListener(InputListenerInterface listener) {
    if (impl != null) {
      impl.setListener(listener);
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _InputConnectionSetListenerParams();
    params.listener = listener;
    ctrl.sendMessage(params,
        _inputConnectionMethodSetListenerName);
  }
}

class _InputConnectionStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<InputConnection> {
  InputConnection _impl;

  _InputConnectionStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [InputConnection impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _InputConnectionStubControl.fromHandle(
      core.MojoHandle handle, [InputConnection impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _InputConnectionStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => InputConnection.serviceName;



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
      case _inputConnectionMethodSetListenerName:
        var params = _InputConnectionSetListenerParams.deserialize(
            message.payload);
        _impl.setListener(params.listener);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  InputConnection get impl => _impl;
  set impl(InputConnection d) {
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
    return "_InputConnectionStubControl($superString)";
  }

  int get version => 0;
}

class InputConnectionStub
    extends bindings.Stub<InputConnection>
    implements InputConnection,
               InputConnectionInterface,
               InputConnectionInterfaceRequest {
  InputConnectionStub.unbound([InputConnection impl])
      : super(new _InputConnectionStubControl.unbound(impl));

  InputConnectionStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [InputConnection impl])
      : super(new _InputConnectionStubControl.fromEndpoint(endpoint, impl));

  InputConnectionStub.fromHandle(
      core.MojoHandle handle, [InputConnection impl])
      : super(new _InputConnectionStubControl.fromHandle(handle, impl));

  static InputConnectionStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For InputConnectionStub"));
    return new InputConnectionStub.fromEndpoint(endpoint);
  }


  void setListener(InputListenerInterface listener) {
    return impl.setListener(listener);
  }
}

const int _inputListenerMethodOnEventName = 0;

class _InputListenerServiceDescription implements service_describer.ServiceDescription {
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

abstract class InputListener {
  static const String serviceName = null;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _InputListenerServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static InputListenerProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    InputListenerProxy p = new InputListenerProxy.unbound();
    String name = serviceName ?? InputListener.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void onEvent(input_events_mojom.Event event,void callback(bool consumed));
}

abstract class InputListenerInterface
    implements bindings.MojoInterface<InputListener>,
               InputListener {
  factory InputListenerInterface([InputListener impl]) =>
      new InputListenerStub.unbound(impl);

  factory InputListenerInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [InputListener impl]) =>
      new InputListenerStub.fromEndpoint(endpoint, impl);

  factory InputListenerInterface.fromMock(
      InputListener mock) =>
      new InputListenerProxy.fromMock(mock);
}

abstract class InputListenerInterfaceRequest
    implements bindings.MojoInterface<InputListener>,
               InputListener {
  factory InputListenerInterfaceRequest() =>
      new InputListenerProxy.unbound();
}

class _InputListenerProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<InputListener> {
  InputListener impl;

  _InputListenerProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _InputListenerProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _InputListenerProxyControl.unbound() : super.unbound();

  String get serviceName => InputListener.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case _inputListenerMethodOnEventName:
        var r = InputListenerOnEventResponseParams.deserialize(
            message.payload);
        if (!message.header.hasRequestId) {
          proxyError("Expected a message with a valid request Id.");
          return;
        }
        Function callback = callbackMap[message.header.requestId];
        if (callback == null) {
          proxyError(
              "Message had unknown request Id: ${message.header.requestId}");
          return;
        }
        callbackMap.remove(message.header.requestId);
        callback(r.consumed );
        break;
      default:
        proxyError("Unexpected message type: ${message.header.type}");
        close(immediate: true);
        break;
    }
  }

  @override
  String toString() {
    var superString = super.toString();
    return "_InputListenerProxyControl($superString)";
  }
}

class InputListenerProxy
    extends bindings.Proxy<InputListener>
    implements InputListener,
               InputListenerInterface,
               InputListenerInterfaceRequest {
  InputListenerProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _InputListenerProxyControl.fromEndpoint(endpoint));

  InputListenerProxy.fromHandle(core.MojoHandle handle)
      : super(new _InputListenerProxyControl.fromHandle(handle));

  InputListenerProxy.unbound()
      : super(new _InputListenerProxyControl.unbound());

  factory InputListenerProxy.fromMock(InputListener mock) {
    InputListenerProxy newMockedProxy =
        new InputListenerProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static InputListenerProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For InputListenerProxy"));
    return new InputListenerProxy.fromEndpoint(endpoint);
  }


  void onEvent(input_events_mojom.Event event,void callback(bool consumed)) {
    if (impl != null) {
      impl.onEvent(event,callback);
      return;
    }
    var params = new _InputListenerOnEventParams();
    params.event = event;
    Function zonedCallback;
    if (identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((bool consumed) {
        z.bindCallback(() {
          callback(consumed);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _inputListenerMethodOnEventName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
}

class _InputListenerStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<InputListener> {
  InputListener _impl;

  _InputListenerStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [InputListener impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _InputListenerStubControl.fromHandle(
      core.MojoHandle handle, [InputListener impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _InputListenerStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => InputListener.serviceName;


  Function _inputListenerOnEventResponseParamsResponder(
      int requestId) {
  return (bool consumed) {
      var result = new InputListenerOnEventResponseParams();
      result.consumed = consumed;
      sendResponse(buildResponseWithId(
          result,
          _inputListenerMethodOnEventName,
          requestId,
          bindings.MessageHeader.kMessageIsResponse));
    };
  }

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
      case _inputListenerMethodOnEventName:
        var params = _InputListenerOnEventParams.deserialize(
            message.payload);
        _impl.onEvent(params.event, _inputListenerOnEventResponseParamsResponder(message.header.requestId));
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  InputListener get impl => _impl;
  set impl(InputListener d) {
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
    return "_InputListenerStubControl($superString)";
  }

  int get version => 0;
}

class InputListenerStub
    extends bindings.Stub<InputListener>
    implements InputListener,
               InputListenerInterface,
               InputListenerInterfaceRequest {
  InputListenerStub.unbound([InputListener impl])
      : super(new _InputListenerStubControl.unbound(impl));

  InputListenerStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [InputListener impl])
      : super(new _InputListenerStubControl.fromEndpoint(endpoint, impl));

  InputListenerStub.fromHandle(
      core.MojoHandle handle, [InputListener impl])
      : super(new _InputListenerStubControl.fromHandle(handle, impl));

  static InputListenerStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For InputListenerStub"));
    return new InputListenerStub.fromEndpoint(endpoint);
  }


  void onEvent(input_events_mojom.Event event,void callback(bool consumed)) {
    return impl.onEvent(event,callback);
  }
}


