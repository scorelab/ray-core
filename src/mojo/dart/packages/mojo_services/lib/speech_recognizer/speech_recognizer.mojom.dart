// WARNING: DO NOT EDIT. This file was generated by a program.
// See $MOJO_SDK/tools/bindings/mojom_bindings_generator.py.

library speech_recognizer_mojom;
import 'dart:async';
import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojo/mojo/bindings/types/service_describer.mojom.dart' as service_describer;

class Error extends bindings.MojoEnum {
  static const Error networkTimeout = const Error._(1);
  static const Error network = const Error._(2);
  static const Error audio = const Error._(3);
  static const Error server = const Error._(4);
  static const Error client = const Error._(5);
  static const Error speechTimeout = const Error._(6);
  static const Error noMatch = const Error._(7);
  static const Error recognizerBusy = const Error._(8);
  static const Error insufficientPermissions = const Error._(9);

  const Error._(int v) : super(v);

  static const Map<String, Error> valuesMap = const {
    "networkTimeout": networkTimeout,
    "network": network,
    "audio": audio,
    "server": server,
    "client": client,
    "speechTimeout": speechTimeout,
    "noMatch": noMatch,
    "recognizerBusy": recognizerBusy,
    "insufficientPermissions": insufficientPermissions,
  };
  static const List<Error> values = const [
    networkTimeout,
    network,
    audio,
    server,
    client,
    speechTimeout,
    noMatch,
    recognizerBusy,
    insufficientPermissions,
  ];

  static Error valueOf(String name) => valuesMap[name];

  factory Error(int v) {
    switch (v) {
      case 1:
        return Error.networkTimeout;
      case 2:
        return Error.network;
      case 3:
        return Error.audio;
      case 4:
        return Error.server;
      case 5:
        return Error.client;
      case 6:
        return Error.speechTimeout;
      case 7:
        return Error.noMatch;
      case 8:
        return Error.recognizerBusy;
      case 9:
        return Error.insufficientPermissions;
      default:
        return null;
    }
  }

  static Error decode(bindings.Decoder decoder0, int offset) {
    int v = decoder0.decodeUint32(offset);
    Error result = new Error(v);
    if (result == null) {
      throw new bindings.MojoCodecError(
          'Bad value $v for enum Error.');
    }
    return result;
  }

  String toString() {
    switch(this) {
      case networkTimeout:
        return 'Error.networkTimeout';
      case network:
        return 'Error.network';
      case audio:
        return 'Error.audio';
      case server:
        return 'Error.server';
      case client:
        return 'Error.client';
      case speechTimeout:
        return 'Error.speechTimeout';
      case noMatch:
        return 'Error.noMatch';
      case recognizerBusy:
        return 'Error.recognizerBusy';
      case insufficientPermissions:
        return 'Error.insufficientPermissions';
      default:
        return null;
    }
  }

  int toJson() => mojoEnumValue;
}



class UtteranceCandidate extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  String text = null;
  double confidenceScore = 0.0;

  UtteranceCandidate() : super(kVersions.last.size);

  UtteranceCandidate.init(
    String this.text, 
    double this.confidenceScore
  ) : super(kVersions.last.size);

  static UtteranceCandidate deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static UtteranceCandidate decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    UtteranceCandidate result = new UtteranceCandidate();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.text = decoder0.decodeString(8, false);
    }
    if (mainDataHeader.version >= 0) {
      
      result.confidenceScore = decoder0.decodeFloat(16);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "UtteranceCandidate";
    String fieldName;
    try {
      fieldName = "text";
      encoder0.encodeString(text, 8, false);
      fieldName = "confidenceScore";
      encoder0.encodeFloat(confidenceScore, 16);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "UtteranceCandidate("
           "text: $text" ", "
           "confidenceScore: $confidenceScore" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["text"] = text;
    map["confidenceScore"] = confidenceScore;
    return map;
  }
}


class _SpeechRecognizerListenerOnRecognizerErrorParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  Error errorCode = null;

  _SpeechRecognizerListenerOnRecognizerErrorParams() : super(kVersions.last.size);

  _SpeechRecognizerListenerOnRecognizerErrorParams.init(
    Error this.errorCode
  ) : super(kVersions.last.size);

  static _SpeechRecognizerListenerOnRecognizerErrorParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _SpeechRecognizerListenerOnRecognizerErrorParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _SpeechRecognizerListenerOnRecognizerErrorParams result = new _SpeechRecognizerListenerOnRecognizerErrorParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
        result.errorCode = Error.decode(decoder0, 8);
        if (result.errorCode == null) {
          throw new bindings.MojoCodecError(
            'Trying to decode null union for non-nullable Error.');
        }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_SpeechRecognizerListenerOnRecognizerErrorParams";
    String fieldName;
    try {
      fieldName = "errorCode";
      encoder0.encodeEnum(errorCode, 8);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_SpeechRecognizerListenerOnRecognizerErrorParams("
           "errorCode: $errorCode" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["errorCode"] = errorCode;
    return map;
  }
}


class _SpeechRecognizerListenerOnResultsParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  List<UtteranceCandidate> results = null;
  bool complete = false;

  _SpeechRecognizerListenerOnResultsParams() : super(kVersions.last.size);

  _SpeechRecognizerListenerOnResultsParams.init(
    List<UtteranceCandidate> this.results, 
    bool this.complete
  ) : super(kVersions.last.size);

  static _SpeechRecognizerListenerOnResultsParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _SpeechRecognizerListenerOnResultsParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _SpeechRecognizerListenerOnResultsParams result = new _SpeechRecognizerListenerOnResultsParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      {
        var si1 = decoder1.decodeDataHeaderForPointerArray(bindings.kUnspecifiedArrayLength);
        result.results = new List<UtteranceCandidate>(si1.numElements);
        for (int i1 = 0; i1 < si1.numElements; ++i1) {
          
          var decoder2 = decoder1.decodePointer(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i1, false);
          result.results[i1] = UtteranceCandidate.decode(decoder2);
        }
      }
    }
    if (mainDataHeader.version >= 0) {
      
      result.complete = decoder0.decodeBool(16, 0);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_SpeechRecognizerListenerOnResultsParams";
    String fieldName;
    try {
      fieldName = "results";
      if (results == null) {
        encoder0.encodeNullPointer(8, false);
      } else {
        var encoder1 = encoder0.encodePointerArray(results.length, 8, bindings.kUnspecifiedArrayLength);
        for (int i0 = 0; i0 < results.length; ++i0) {
          encoder1.encodeStruct(results[i0], bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i0, false);
        }
      }
      fieldName = "complete";
      encoder0.encodeBool(complete, 16, 0);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_SpeechRecognizerListenerOnResultsParams("
           "results: $results" ", "
           "complete: $complete" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["results"] = results;
    map["complete"] = complete;
    return map;
  }
}


class _SpeechRecognizerListenerOnSoundLevelChangedParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  double rmsDb = 0.0;

  _SpeechRecognizerListenerOnSoundLevelChangedParams() : super(kVersions.last.size);

  _SpeechRecognizerListenerOnSoundLevelChangedParams.init(
    double this.rmsDb
  ) : super(kVersions.last.size);

  static _SpeechRecognizerListenerOnSoundLevelChangedParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _SpeechRecognizerListenerOnSoundLevelChangedParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _SpeechRecognizerListenerOnSoundLevelChangedParams result = new _SpeechRecognizerListenerOnSoundLevelChangedParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.rmsDb = decoder0.decodeFloat(8);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_SpeechRecognizerListenerOnSoundLevelChangedParams";
    String fieldName;
    try {
      fieldName = "rmsDb";
      encoder0.encodeFloat(rmsDb, 8);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_SpeechRecognizerListenerOnSoundLevelChangedParams("
           "rmsDb: $rmsDb" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["rmsDb"] = rmsDb;
    return map;
  }
}


class _SpeechRecognizerServiceListenParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  SpeechRecognizerListenerInterface listener = null;

  _SpeechRecognizerServiceListenParams() : super(kVersions.last.size);

  _SpeechRecognizerServiceListenParams.init(
    SpeechRecognizerListenerInterface this.listener
  ) : super(kVersions.last.size);

  static _SpeechRecognizerServiceListenParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _SpeechRecognizerServiceListenParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _SpeechRecognizerServiceListenParams result = new _SpeechRecognizerServiceListenParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.listener = decoder0.decodeServiceInterface(8, false, SpeechRecognizerListenerProxy.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_SpeechRecognizerServiceListenParams";
    String fieldName;
    try {
      fieldName = "listener";
      encoder0.encodeInterface(listener, 8, false);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_SpeechRecognizerServiceListenParams("
           "listener: $listener" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class _SpeechRecognizerServiceStopListeningParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _SpeechRecognizerServiceStopListeningParams() : super(kVersions.last.size);

  _SpeechRecognizerServiceStopListeningParams.init(
  ) : super(kVersions.last.size);

  static _SpeechRecognizerServiceStopListeningParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _SpeechRecognizerServiceStopListeningParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _SpeechRecognizerServiceStopListeningParams result = new _SpeechRecognizerServiceStopListeningParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_SpeechRecognizerServiceStopListeningParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_SpeechRecognizerServiceStopListeningParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}

const int _speechRecognizerListenerMethodOnRecognizerErrorName = 0;
const int _speechRecognizerListenerMethodOnResultsName = 1;
const int _speechRecognizerListenerMethodOnSoundLevelChangedName = 2;

class _SpeechRecognizerListenerServiceDescription implements service_describer.ServiceDescription {
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

abstract class SpeechRecognizerListener {
  static const String serviceName = null;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _SpeechRecognizerListenerServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static SpeechRecognizerListenerProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    SpeechRecognizerListenerProxy p = new SpeechRecognizerListenerProxy.unbound();
    String name = serviceName ?? SpeechRecognizerListener.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void onRecognizerError(Error errorCode);
  void onResults(List<UtteranceCandidate> results, bool complete);
  void onSoundLevelChanged(double rmsDb);
}

abstract class SpeechRecognizerListenerInterface
    implements bindings.MojoInterface<SpeechRecognizerListener>,
               SpeechRecognizerListener {
  factory SpeechRecognizerListenerInterface([SpeechRecognizerListener impl]) =>
      new SpeechRecognizerListenerStub.unbound(impl);

  factory SpeechRecognizerListenerInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [SpeechRecognizerListener impl]) =>
      new SpeechRecognizerListenerStub.fromEndpoint(endpoint, impl);

  factory SpeechRecognizerListenerInterface.fromMock(
      SpeechRecognizerListener mock) =>
      new SpeechRecognizerListenerProxy.fromMock(mock);
}

abstract class SpeechRecognizerListenerInterfaceRequest
    implements bindings.MojoInterface<SpeechRecognizerListener>,
               SpeechRecognizerListener {
  factory SpeechRecognizerListenerInterfaceRequest() =>
      new SpeechRecognizerListenerProxy.unbound();
}

class _SpeechRecognizerListenerProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<SpeechRecognizerListener> {
  SpeechRecognizerListener impl;

  _SpeechRecognizerListenerProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _SpeechRecognizerListenerProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _SpeechRecognizerListenerProxyControl.unbound() : super.unbound();

  String get serviceName => SpeechRecognizerListener.serviceName;

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
    return "_SpeechRecognizerListenerProxyControl($superString)";
  }
}

class SpeechRecognizerListenerProxy
    extends bindings.Proxy<SpeechRecognizerListener>
    implements SpeechRecognizerListener,
               SpeechRecognizerListenerInterface,
               SpeechRecognizerListenerInterfaceRequest {
  SpeechRecognizerListenerProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _SpeechRecognizerListenerProxyControl.fromEndpoint(endpoint));

  SpeechRecognizerListenerProxy.fromHandle(core.MojoHandle handle)
      : super(new _SpeechRecognizerListenerProxyControl.fromHandle(handle));

  SpeechRecognizerListenerProxy.unbound()
      : super(new _SpeechRecognizerListenerProxyControl.unbound());

  factory SpeechRecognizerListenerProxy.fromMock(SpeechRecognizerListener mock) {
    SpeechRecognizerListenerProxy newMockedProxy =
        new SpeechRecognizerListenerProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static SpeechRecognizerListenerProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For SpeechRecognizerListenerProxy"));
    return new SpeechRecognizerListenerProxy.fromEndpoint(endpoint);
  }


  void onRecognizerError(Error errorCode) {
    if (impl != null) {
      impl.onRecognizerError(errorCode);
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _SpeechRecognizerListenerOnRecognizerErrorParams();
    params.errorCode = errorCode;
    ctrl.sendMessage(params,
        _speechRecognizerListenerMethodOnRecognizerErrorName);
  }
  void onResults(List<UtteranceCandidate> results, bool complete) {
    if (impl != null) {
      impl.onResults(results, complete);
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _SpeechRecognizerListenerOnResultsParams();
    params.results = results;
    params.complete = complete;
    ctrl.sendMessage(params,
        _speechRecognizerListenerMethodOnResultsName);
  }
  void onSoundLevelChanged(double rmsDb) {
    if (impl != null) {
      impl.onSoundLevelChanged(rmsDb);
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _SpeechRecognizerListenerOnSoundLevelChangedParams();
    params.rmsDb = rmsDb;
    ctrl.sendMessage(params,
        _speechRecognizerListenerMethodOnSoundLevelChangedName);
  }
}

class _SpeechRecognizerListenerStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<SpeechRecognizerListener> {
  SpeechRecognizerListener _impl;

  _SpeechRecognizerListenerStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [SpeechRecognizerListener impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _SpeechRecognizerListenerStubControl.fromHandle(
      core.MojoHandle handle, [SpeechRecognizerListener impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _SpeechRecognizerListenerStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => SpeechRecognizerListener.serviceName;



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
      case _speechRecognizerListenerMethodOnRecognizerErrorName:
        var params = _SpeechRecognizerListenerOnRecognizerErrorParams.deserialize(
            message.payload);
        _impl.onRecognizerError(params.errorCode);
        break;
      case _speechRecognizerListenerMethodOnResultsName:
        var params = _SpeechRecognizerListenerOnResultsParams.deserialize(
            message.payload);
        _impl.onResults(params.results, params.complete);
        break;
      case _speechRecognizerListenerMethodOnSoundLevelChangedName:
        var params = _SpeechRecognizerListenerOnSoundLevelChangedParams.deserialize(
            message.payload);
        _impl.onSoundLevelChanged(params.rmsDb);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  SpeechRecognizerListener get impl => _impl;
  set impl(SpeechRecognizerListener d) {
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
    return "_SpeechRecognizerListenerStubControl($superString)";
  }

  int get version => 0;
}

class SpeechRecognizerListenerStub
    extends bindings.Stub<SpeechRecognizerListener>
    implements SpeechRecognizerListener,
               SpeechRecognizerListenerInterface,
               SpeechRecognizerListenerInterfaceRequest {
  SpeechRecognizerListenerStub.unbound([SpeechRecognizerListener impl])
      : super(new _SpeechRecognizerListenerStubControl.unbound(impl));

  SpeechRecognizerListenerStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [SpeechRecognizerListener impl])
      : super(new _SpeechRecognizerListenerStubControl.fromEndpoint(endpoint, impl));

  SpeechRecognizerListenerStub.fromHandle(
      core.MojoHandle handle, [SpeechRecognizerListener impl])
      : super(new _SpeechRecognizerListenerStubControl.fromHandle(handle, impl));

  static SpeechRecognizerListenerStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For SpeechRecognizerListenerStub"));
    return new SpeechRecognizerListenerStub.fromEndpoint(endpoint);
  }


  void onRecognizerError(Error errorCode) {
    return impl.onRecognizerError(errorCode);
  }
  void onResults(List<UtteranceCandidate> results, bool complete) {
    return impl.onResults(results, complete);
  }
  void onSoundLevelChanged(double rmsDb) {
    return impl.onSoundLevelChanged(rmsDb);
  }
}

const int _speechRecognizerServiceMethodListenName = 0;
const int _speechRecognizerServiceMethodStopListeningName = 1;

class _SpeechRecognizerServiceServiceDescription implements service_describer.ServiceDescription {
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

abstract class SpeechRecognizerService {
  static const String serviceName = "speech_recognizer::SpeechRecognizerService";

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _SpeechRecognizerServiceServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static SpeechRecognizerServiceProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    SpeechRecognizerServiceProxy p = new SpeechRecognizerServiceProxy.unbound();
    String name = serviceName ?? SpeechRecognizerService.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void listen(SpeechRecognizerListenerInterface listener);
  void stopListening();
}

abstract class SpeechRecognizerServiceInterface
    implements bindings.MojoInterface<SpeechRecognizerService>,
               SpeechRecognizerService {
  factory SpeechRecognizerServiceInterface([SpeechRecognizerService impl]) =>
      new SpeechRecognizerServiceStub.unbound(impl);

  factory SpeechRecognizerServiceInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [SpeechRecognizerService impl]) =>
      new SpeechRecognizerServiceStub.fromEndpoint(endpoint, impl);

  factory SpeechRecognizerServiceInterface.fromMock(
      SpeechRecognizerService mock) =>
      new SpeechRecognizerServiceProxy.fromMock(mock);
}

abstract class SpeechRecognizerServiceInterfaceRequest
    implements bindings.MojoInterface<SpeechRecognizerService>,
               SpeechRecognizerService {
  factory SpeechRecognizerServiceInterfaceRequest() =>
      new SpeechRecognizerServiceProxy.unbound();
}

class _SpeechRecognizerServiceProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<SpeechRecognizerService> {
  SpeechRecognizerService impl;

  _SpeechRecognizerServiceProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _SpeechRecognizerServiceProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _SpeechRecognizerServiceProxyControl.unbound() : super.unbound();

  String get serviceName => SpeechRecognizerService.serviceName;

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
    return "_SpeechRecognizerServiceProxyControl($superString)";
  }
}

class SpeechRecognizerServiceProxy
    extends bindings.Proxy<SpeechRecognizerService>
    implements SpeechRecognizerService,
               SpeechRecognizerServiceInterface,
               SpeechRecognizerServiceInterfaceRequest {
  SpeechRecognizerServiceProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _SpeechRecognizerServiceProxyControl.fromEndpoint(endpoint));

  SpeechRecognizerServiceProxy.fromHandle(core.MojoHandle handle)
      : super(new _SpeechRecognizerServiceProxyControl.fromHandle(handle));

  SpeechRecognizerServiceProxy.unbound()
      : super(new _SpeechRecognizerServiceProxyControl.unbound());

  factory SpeechRecognizerServiceProxy.fromMock(SpeechRecognizerService mock) {
    SpeechRecognizerServiceProxy newMockedProxy =
        new SpeechRecognizerServiceProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static SpeechRecognizerServiceProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For SpeechRecognizerServiceProxy"));
    return new SpeechRecognizerServiceProxy.fromEndpoint(endpoint);
  }


  void listen(SpeechRecognizerListenerInterface listener) {
    if (impl != null) {
      impl.listen(listener);
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _SpeechRecognizerServiceListenParams();
    params.listener = listener;
    ctrl.sendMessage(params,
        _speechRecognizerServiceMethodListenName);
  }
  void stopListening() {
    if (impl != null) {
      impl.stopListening();
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _SpeechRecognizerServiceStopListeningParams();
    ctrl.sendMessage(params,
        _speechRecognizerServiceMethodStopListeningName);
  }
}

class _SpeechRecognizerServiceStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<SpeechRecognizerService> {
  SpeechRecognizerService _impl;

  _SpeechRecognizerServiceStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [SpeechRecognizerService impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _SpeechRecognizerServiceStubControl.fromHandle(
      core.MojoHandle handle, [SpeechRecognizerService impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _SpeechRecognizerServiceStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => SpeechRecognizerService.serviceName;



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
      case _speechRecognizerServiceMethodListenName:
        var params = _SpeechRecognizerServiceListenParams.deserialize(
            message.payload);
        _impl.listen(params.listener);
        break;
      case _speechRecognizerServiceMethodStopListeningName:
        _impl.stopListening();
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  SpeechRecognizerService get impl => _impl;
  set impl(SpeechRecognizerService d) {
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
    return "_SpeechRecognizerServiceStubControl($superString)";
  }

  int get version => 0;
}

class SpeechRecognizerServiceStub
    extends bindings.Stub<SpeechRecognizerService>
    implements SpeechRecognizerService,
               SpeechRecognizerServiceInterface,
               SpeechRecognizerServiceInterfaceRequest {
  SpeechRecognizerServiceStub.unbound([SpeechRecognizerService impl])
      : super(new _SpeechRecognizerServiceStubControl.unbound(impl));

  SpeechRecognizerServiceStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [SpeechRecognizerService impl])
      : super(new _SpeechRecognizerServiceStubControl.fromEndpoint(endpoint, impl));

  SpeechRecognizerServiceStub.fromHandle(
      core.MojoHandle handle, [SpeechRecognizerService impl])
      : super(new _SpeechRecognizerServiceStubControl.fromHandle(handle, impl));

  static SpeechRecognizerServiceStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For SpeechRecognizerServiceStub"));
    return new SpeechRecognizerServiceStub.fromEndpoint(endpoint);
  }


  void listen(SpeechRecognizerListenerInterface listener) {
    return impl.listen(listener);
  }
  void stopListening() {
    return impl.stopListening();
  }
}


