// WARNING: DO NOT EDIT. This file was generated by a program.
// See $MOJO_SDK/tools/bindings/mojom_bindings_generator.py.

library dart_to_cpp_mojom;
import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojo/mojo/bindings/types/mojom_types.mojom.dart' as mojom_types;
import 'package:mojo/mojo/bindings/types/service_describer.mojom.dart' as service_describer;



class EchoArgs extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(104, 0)
  ];
  int si64 = 0;
  int si32 = 0;
  int si16 = 0;
  int si8 = 0;
  int ui8 = 0;
  int ui64 = 0;
  int ui32 = 0;
  int ui16 = 0;
  double floatVal = 0.0;
  double floatInf = 0.0;
  double floatNan = 0.0;
  core.MojoMessagePipeEndpoint messageHandle = null;
  double doubleVal = 0.0;
  double doubleInf = 0.0;
  double doubleNan = 0.0;
  String name = null;
  List<String> stringArray = null;
  core.MojoDataPipeConsumer dataHandle = null;

  EchoArgs() : super(kVersions.last.size);

  EchoArgs.init(
    int this.si64, 
    int this.si32, 
    int this.si16, 
    int this.si8, 
    int this.ui8, 
    int this.ui64, 
    int this.ui32, 
    int this.ui16, 
    double this.floatVal, 
    double this.floatInf, 
    double this.floatNan, 
    core.MojoMessagePipeEndpoint this.messageHandle, 
    double this.doubleVal, 
    double this.doubleInf, 
    double this.doubleNan, 
    String this.name, 
    List<String> this.stringArray, 
    core.MojoDataPipeConsumer this.dataHandle
  ) : super(kVersions.last.size);

  static EchoArgs deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static EchoArgs decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    EchoArgs result = new EchoArgs();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.si64 = decoder0.decodeInt64(8);
    }
    if (mainDataHeader.version >= 0) {
      
      result.si32 = decoder0.decodeInt32(16);
    }
    if (mainDataHeader.version >= 0) {
      
      result.si16 = decoder0.decodeInt16(20);
    }
    if (mainDataHeader.version >= 0) {
      
      result.si8 = decoder0.decodeInt8(22);
    }
    if (mainDataHeader.version >= 0) {
      
      result.ui8 = decoder0.decodeUint8(23);
    }
    if (mainDataHeader.version >= 0) {
      
      result.ui64 = decoder0.decodeUint64(24);
    }
    if (mainDataHeader.version >= 0) {
      
      result.ui32 = decoder0.decodeUint32(32);
    }
    if (mainDataHeader.version >= 0) {
      
      result.ui16 = decoder0.decodeUint16(36);
    }
    if (mainDataHeader.version >= 0) {
      
      result.floatVal = decoder0.decodeFloat(40);
    }
    if (mainDataHeader.version >= 0) {
      
      result.floatInf = decoder0.decodeFloat(44);
    }
    if (mainDataHeader.version >= 0) {
      
      result.floatNan = decoder0.decodeFloat(48);
    }
    if (mainDataHeader.version >= 0) {
      
      result.messageHandle = decoder0.decodeMessagePipeHandle(52, true);
    }
    if (mainDataHeader.version >= 0) {
      
      result.doubleVal = decoder0.decodeDouble(56);
    }
    if (mainDataHeader.version >= 0) {
      
      result.doubleInf = decoder0.decodeDouble(64);
    }
    if (mainDataHeader.version >= 0) {
      
      result.doubleNan = decoder0.decodeDouble(72);
    }
    if (mainDataHeader.version >= 0) {
      
      result.name = decoder0.decodeString(80, true);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(88, true);
      if (decoder1 == null) {
        result.stringArray = null;
      } else {
        var si1 = decoder1.decodeDataHeaderForPointerArray(bindings.kUnspecifiedArrayLength);
        result.stringArray = new List<String>(si1.numElements);
        for (int i1 = 0; i1 < si1.numElements; ++i1) {
          
          result.stringArray[i1] = decoder1.decodeString(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i1, false);
        }
      }
    }
    if (mainDataHeader.version >= 0) {
      
      result.dataHandle = decoder0.decodeConsumerHandle(96, true);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "EchoArgs";
    String fieldName;
    try {
      fieldName = "si64";
      encoder0.encodeInt64(si64, 8);
      fieldName = "si32";
      encoder0.encodeInt32(si32, 16);
      fieldName = "si16";
      encoder0.encodeInt16(si16, 20);
      fieldName = "si8";
      encoder0.encodeInt8(si8, 22);
      fieldName = "ui8";
      encoder0.encodeUint8(ui8, 23);
      fieldName = "ui64";
      encoder0.encodeUint64(ui64, 24);
      fieldName = "ui32";
      encoder0.encodeUint32(ui32, 32);
      fieldName = "ui16";
      encoder0.encodeUint16(ui16, 36);
      fieldName = "floatVal";
      encoder0.encodeFloat(floatVal, 40);
      fieldName = "floatInf";
      encoder0.encodeFloat(floatInf, 44);
      fieldName = "floatNan";
      encoder0.encodeFloat(floatNan, 48);
      fieldName = "messageHandle";
      encoder0.encodeMessagePipeHandle(messageHandle, 52, true);
      fieldName = "doubleVal";
      encoder0.encodeDouble(doubleVal, 56);
      fieldName = "doubleInf";
      encoder0.encodeDouble(doubleInf, 64);
      fieldName = "doubleNan";
      encoder0.encodeDouble(doubleNan, 72);
      fieldName = "name";
      encoder0.encodeString(name, 80, true);
      fieldName = "stringArray";
      if (stringArray == null) {
        encoder0.encodeNullPointer(88, true);
      } else {
        var encoder1 = encoder0.encodePointerArray(stringArray.length, 88, bindings.kUnspecifiedArrayLength);
        for (int i0 = 0; i0 < stringArray.length; ++i0) {
          encoder1.encodeString(stringArray[i0], bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i0, false);
        }
      }
      fieldName = "dataHandle";
      encoder0.encodeConsumerHandle(dataHandle, 96, true);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "EchoArgs("
           "si64: $si64" ", "
           "si32: $si32" ", "
           "si16: $si16" ", "
           "si8: $si8" ", "
           "ui8: $ui8" ", "
           "ui64: $ui64" ", "
           "ui32: $ui32" ", "
           "ui16: $ui16" ", "
           "floatVal: $floatVal" ", "
           "floatInf: $floatInf" ", "
           "floatNan: $floatNan" ", "
           "messageHandle: $messageHandle" ", "
           "doubleVal: $doubleVal" ", "
           "doubleInf: $doubleInf" ", "
           "doubleNan: $doubleNan" ", "
           "name: $name" ", "
           "stringArray: $stringArray" ", "
           "dataHandle: $dataHandle" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class EchoArgsList extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  EchoArgsList next = null;
  EchoArgs item = null;

  EchoArgsList() : super(kVersions.last.size);

  EchoArgsList.init(
    EchoArgsList this.next, 
    EchoArgs this.item
  ) : super(kVersions.last.size);

  static EchoArgsList deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static EchoArgsList decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    EchoArgsList result = new EchoArgsList();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, true);
      result.next = EchoArgsList.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, true);
      result.item = EchoArgs.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "EchoArgsList";
    String fieldName;
    try {
      fieldName = "next";
      encoder0.encodeStruct(next, 8, true);
      fieldName = "item";
      encoder0.encodeStruct(item, 16, true);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "EchoArgsList("
           "next: $next" ", "
           "item: $item" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class _CppSideStartTestParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _CppSideStartTestParams() : super(kVersions.last.size);

  _CppSideStartTestParams.init(
  ) : super(kVersions.last.size);

  static _CppSideStartTestParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _CppSideStartTestParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _CppSideStartTestParams result = new _CppSideStartTestParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_CppSideStartTestParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_CppSideStartTestParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class _CppSideTestFinishedParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _CppSideTestFinishedParams() : super(kVersions.last.size);

  _CppSideTestFinishedParams.init(
  ) : super(kVersions.last.size);

  static _CppSideTestFinishedParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _CppSideTestFinishedParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _CppSideTestFinishedParams result = new _CppSideTestFinishedParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_CppSideTestFinishedParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_CppSideTestFinishedParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class _CppSidePingResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _CppSidePingResponseParams() : super(kVersions.last.size);

  _CppSidePingResponseParams.init(
  ) : super(kVersions.last.size);

  static _CppSidePingResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _CppSidePingResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _CppSidePingResponseParams result = new _CppSidePingResponseParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_CppSidePingResponseParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_CppSidePingResponseParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class _CppSideEchoResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  EchoArgsList list = null;

  _CppSideEchoResponseParams() : super(kVersions.last.size);

  _CppSideEchoResponseParams.init(
    EchoArgsList this.list
  ) : super(kVersions.last.size);

  static _CppSideEchoResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _CppSideEchoResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _CppSideEchoResponseParams result = new _CppSideEchoResponseParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.list = EchoArgsList.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_CppSideEchoResponseParams";
    String fieldName;
    try {
      fieldName = "list";
      encoder0.encodeStruct(list, 8, false);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_CppSideEchoResponseParams("
           "list: $list" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class _DartSideSetClientParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  CppSideInterface cppSide = null;

  _DartSideSetClientParams() : super(kVersions.last.size);

  _DartSideSetClientParams.init(
    CppSideInterface this.cppSide
  ) : super(kVersions.last.size);

  static _DartSideSetClientParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _DartSideSetClientParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _DartSideSetClientParams result = new _DartSideSetClientParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.cppSide = decoder0.decodeServiceInterface(8, false, CppSideProxy.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_DartSideSetClientParams";
    String fieldName;
    try {
      fieldName = "cppSide";
      encoder0.encodeInterface(cppSide, 8, false);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_DartSideSetClientParams("
           "cppSide: $cppSide" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class _DartSidePingParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _DartSidePingParams() : super(kVersions.last.size);

  _DartSidePingParams.init(
  ) : super(kVersions.last.size);

  static _DartSidePingParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _DartSidePingParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _DartSidePingParams result = new _DartSidePingParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_DartSidePingParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_DartSidePingParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class _DartSideEchoParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  int numIterations = 0;
  EchoArgs arg = null;

  _DartSideEchoParams() : super(kVersions.last.size);

  _DartSideEchoParams.init(
    int this.numIterations, 
    EchoArgs this.arg
  ) : super(kVersions.last.size);

  static _DartSideEchoParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _DartSideEchoParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _DartSideEchoParams result = new _DartSideEchoParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.numIterations = decoder0.decodeInt32(8);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, false);
      result.arg = EchoArgs.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_DartSideEchoParams";
    String fieldName;
    try {
      fieldName = "numIterations";
      encoder0.encodeInt32(numIterations, 8);
      fieldName = "arg";
      encoder0.encodeStruct(arg, 16, false);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_DartSideEchoParams("
           "numIterations: $numIterations" ", "
           "arg: $arg" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}

const int _cppSideMethodStartTestName = 88888888;
const int _cppSideMethodTestFinishedName = 99999999;
const int _cppSideMethodPingResponseName = 100000000;
const int _cppSideMethodEchoResponseName = 100000001;

class _CppSideServiceDescription implements service_describer.ServiceDescription {
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

abstract class CppSide {
  static const String serviceName = null;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _CppSideServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static CppSideProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    CppSideProxy p = new CppSideProxy.unbound();
    String name = serviceName ?? CppSide.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void startTest();
  void testFinished();
  void pingResponse();
  void echoResponse(EchoArgsList list);
}

abstract class CppSideInterface
    implements bindings.MojoInterface<CppSide>,
               CppSide {
  factory CppSideInterface([CppSide impl]) =>
      new CppSideStub.unbound(impl);

  factory CppSideInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [CppSide impl]) =>
      new CppSideStub.fromEndpoint(endpoint, impl);

  factory CppSideInterface.fromMock(
      CppSide mock) =>
      new CppSideProxy.fromMock(mock);
}

abstract class CppSideInterfaceRequest
    implements bindings.MojoInterface<CppSide>,
               CppSide {
  factory CppSideInterfaceRequest() =>
      new CppSideProxy.unbound();
}

class _CppSideProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<CppSide> {
  CppSide impl;

  _CppSideProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _CppSideProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _CppSideProxyControl.unbound() : super.unbound();

  String get serviceName => CppSide.serviceName;

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
    return "_CppSideProxyControl($superString)";
  }
}

class CppSideProxy
    extends bindings.Proxy<CppSide>
    implements CppSide,
               CppSideInterface,
               CppSideInterfaceRequest {
  CppSideProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _CppSideProxyControl.fromEndpoint(endpoint));

  CppSideProxy.fromHandle(core.MojoHandle handle)
      : super(new _CppSideProxyControl.fromHandle(handle));

  CppSideProxy.unbound()
      : super(new _CppSideProxyControl.unbound());

  factory CppSideProxy.fromMock(CppSide mock) {
    CppSideProxy newMockedProxy =
        new CppSideProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static CppSideProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For CppSideProxy"));
    return new CppSideProxy.fromEndpoint(endpoint);
  }


  void startTest() {
    if (impl != null) {
      impl.startTest();
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _CppSideStartTestParams();
    ctrl.sendMessage(params,
        _cppSideMethodStartTestName);
  }
  void testFinished() {
    if (impl != null) {
      impl.testFinished();
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _CppSideTestFinishedParams();
    ctrl.sendMessage(params,
        _cppSideMethodTestFinishedName);
  }
  void pingResponse() {
    if (impl != null) {
      impl.pingResponse();
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _CppSidePingResponseParams();
    ctrl.sendMessage(params,
        _cppSideMethodPingResponseName);
  }
  void echoResponse(EchoArgsList list) {
    if (impl != null) {
      impl.echoResponse(list);
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _CppSideEchoResponseParams();
    params.list = list;
    ctrl.sendMessage(params,
        _cppSideMethodEchoResponseName);
  }
}

class _CppSideStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<CppSide> {
  CppSide _impl;

  _CppSideStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [CppSide impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _CppSideStubControl.fromHandle(
      core.MojoHandle handle, [CppSide impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _CppSideStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => CppSide.serviceName;



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
      case _cppSideMethodStartTestName:
        _impl.startTest();
        break;
      case _cppSideMethodTestFinishedName:
        _impl.testFinished();
        break;
      case _cppSideMethodPingResponseName:
        _impl.pingResponse();
        break;
      case _cppSideMethodEchoResponseName:
        var params = _CppSideEchoResponseParams.deserialize(
            message.payload);
        _impl.echoResponse(params.list);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  CppSide get impl => _impl;
  set impl(CppSide d) {
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
    return "_CppSideStubControl($superString)";
  }

  int get version => 0;
}

class CppSideStub
    extends bindings.Stub<CppSide>
    implements CppSide,
               CppSideInterface,
               CppSideInterfaceRequest {
  CppSideStub.unbound([CppSide impl])
      : super(new _CppSideStubControl.unbound(impl));

  CppSideStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [CppSide impl])
      : super(new _CppSideStubControl.fromEndpoint(endpoint, impl));

  CppSideStub.fromHandle(
      core.MojoHandle handle, [CppSide impl])
      : super(new _CppSideStubControl.fromHandle(handle, impl));

  static CppSideStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For CppSideStub"));
    return new CppSideStub.fromEndpoint(endpoint);
  }


  void startTest() {
    return impl.startTest();
  }
  void testFinished() {
    return impl.testFinished();
  }
  void pingResponse() {
    return impl.pingResponse();
  }
  void echoResponse(EchoArgsList list) {
    return impl.echoResponse(list);
  }
}

const int _dartSideMethodSetClientName = 0;
const int _dartSideMethodPingName = 1;
const int _dartSideMethodEchoName = 2;

class _DartSideServiceDescription implements service_describer.ServiceDescription {
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

abstract class DartSide {
  static const String serviceName = null;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _DartSideServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static DartSideProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    DartSideProxy p = new DartSideProxy.unbound();
    String name = serviceName ?? DartSide.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void setClient(CppSideInterface cppSide);
  void ping();
  void echo(int numIterations, EchoArgs arg);
}

abstract class DartSideInterface
    implements bindings.MojoInterface<DartSide>,
               DartSide {
  factory DartSideInterface([DartSide impl]) =>
      new DartSideStub.unbound(impl);

  factory DartSideInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [DartSide impl]) =>
      new DartSideStub.fromEndpoint(endpoint, impl);

  factory DartSideInterface.fromMock(
      DartSide mock) =>
      new DartSideProxy.fromMock(mock);
}

abstract class DartSideInterfaceRequest
    implements bindings.MojoInterface<DartSide>,
               DartSide {
  factory DartSideInterfaceRequest() =>
      new DartSideProxy.unbound();
}

class _DartSideProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<DartSide> {
  DartSide impl;

  _DartSideProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _DartSideProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _DartSideProxyControl.unbound() : super.unbound();

  String get serviceName => DartSide.serviceName;

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
    return "_DartSideProxyControl($superString)";
  }
}

class DartSideProxy
    extends bindings.Proxy<DartSide>
    implements DartSide,
               DartSideInterface,
               DartSideInterfaceRequest {
  DartSideProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _DartSideProxyControl.fromEndpoint(endpoint));

  DartSideProxy.fromHandle(core.MojoHandle handle)
      : super(new _DartSideProxyControl.fromHandle(handle));

  DartSideProxy.unbound()
      : super(new _DartSideProxyControl.unbound());

  factory DartSideProxy.fromMock(DartSide mock) {
    DartSideProxy newMockedProxy =
        new DartSideProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static DartSideProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For DartSideProxy"));
    return new DartSideProxy.fromEndpoint(endpoint);
  }


  void setClient(CppSideInterface cppSide) {
    if (impl != null) {
      impl.setClient(cppSide);
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _DartSideSetClientParams();
    params.cppSide = cppSide;
    ctrl.sendMessage(params,
        _dartSideMethodSetClientName);
  }
  void ping() {
    if (impl != null) {
      impl.ping();
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _DartSidePingParams();
    ctrl.sendMessage(params,
        _dartSideMethodPingName);
  }
  void echo(int numIterations, EchoArgs arg) {
    if (impl != null) {
      impl.echo(numIterations, arg);
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _DartSideEchoParams();
    params.numIterations = numIterations;
    params.arg = arg;
    ctrl.sendMessage(params,
        _dartSideMethodEchoName);
  }
}

class _DartSideStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<DartSide> {
  DartSide _impl;

  _DartSideStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [DartSide impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _DartSideStubControl.fromHandle(
      core.MojoHandle handle, [DartSide impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _DartSideStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => DartSide.serviceName;



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
      case _dartSideMethodSetClientName:
        var params = _DartSideSetClientParams.deserialize(
            message.payload);
        _impl.setClient(params.cppSide);
        break;
      case _dartSideMethodPingName:
        _impl.ping();
        break;
      case _dartSideMethodEchoName:
        var params = _DartSideEchoParams.deserialize(
            message.payload);
        _impl.echo(params.numIterations, params.arg);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  DartSide get impl => _impl;
  set impl(DartSide d) {
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
    return "_DartSideStubControl($superString)";
  }

  int get version => 0;
}

class DartSideStub
    extends bindings.Stub<DartSide>
    implements DartSide,
               DartSideInterface,
               DartSideInterfaceRequest {
  DartSideStub.unbound([DartSide impl])
      : super(new _DartSideStubControl.unbound(impl));

  DartSideStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [DartSide impl])
      : super(new _DartSideStubControl.fromEndpoint(endpoint, impl));

  DartSideStub.fromHandle(
      core.MojoHandle handle, [DartSide impl])
      : super(new _DartSideStubControl.fromHandle(handle, impl));

  static DartSideStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For DartSideStub"));
    return new DartSideStub.fromEndpoint(endpoint);
  }


  void setClient(CppSideInterface cppSide) {
    return impl.setClient(cppSide);
  }
  void ping() {
    return impl.ping();
  }
  void echo(int numIterations, EchoArgs arg) {
    return impl.echo(numIterations, arg);
  }
}


mojom_types.RuntimeTypeInfo getRuntimeTypeInfo() => _runtimeTypeInfo ??
    _initRuntimeTypeInfo();

Map<String, mojom_types.UserDefinedType> getAllMojomTypeDefinitions() {
  return getRuntimeTypeInfo().typeMap;
}

var _runtimeTypeInfo;
mojom_types.RuntimeTypeInfo  _initRuntimeTypeInfo() {
  // serializedRuntimeTypeInfo contains the bytes of the Mojo serialization of
  // a mojom_types.RuntimeTypeInfo struct describing the Mojom types in this
  // file. The string contains the base64 encoding of the gzip-compressed bytes.
  var serializedRuntimeTypeInfo = "H4sIAAAJbogC/9yaPWzbRhTHSUqyJVmy5a9EbdNUBRLULWrTcYJA6KQideGiGYwmKJIuCi1dJBYSqZJUkXbK2LGjx4wdM3bsmLFjxnTLmCVAtvQufpTP57vTiVCogwg8nBhezHs//u/du4+qcXJVoNyFkv33uMwzJVvvOZRb2LLYanDfgPIBlI+hvILtEra79w/3m9/v3/+q7QRRM/KbrcFg59ZgcMdtI1LvKraPRfW+wb+horTefqvrfx10Qvz8c2yfjqt32w0jaOcB+EP8zGCrU36T++dLp/cmticXz95vbZ9yMSguo8s8e9tgHsffJX7vW7gODP61gm0RW4zwI/x7HZsA77nvSDgWsR1h+wmbPQwDu+e3nJ7d8f1OD9ldv4/s3wPH7vs/+3t2GLTe/bLJG+yh50YRCqPQRv0j1G6joEluUWDTDSD1+3wd1Sh9Ee71H2/n3r54nTP+e50zsbH6OrBOykH2pDxe4PN+xXAif1fGm623K+C9iq2A7U6E/buLRrph/foMm5Ui1xrTjldMOc7vWGd1gd8fgO8jv7cD9MtQ7H98peV/3jjbD9m4ZTDxbJxe3mlQhRuuZ0r0soGtROIPbv23rueGXdTm8fpizvRyCXyn/aYlM296IfFKlZuloJdD1+v8gMKB74WIx2t7TvVC+z3PejEn0EtGQS8klZHpZUcTvQys6eqF9lsnvbA6aTB5HXlOBPDGULtUeNG6Y68S5FE9l89nB5imrQ9DkA/SuqZT9EnzeVl/Nan3ppWvV6At8VQm1rFgmnPuO13TJF/fgPlQjMiinmeo//cUKj3LKY6jE+p9bJ6Ools9F3miPHVPk7j4wJpynh77rVmerltcjOfPLZgj8/SxoUFcrArm+6rrKknj4EtBOFThbiqMRyTf4+ny+oz75UumVO2XKnn9POW1rD6sCXhZCvogQzqP0w1N9PEoM119EH910kcVOI/Gf1Mctw2I3dOM2yJem9jK2Lxh/zvcfCdy8QxAoJNyirwmHc/yCbjI4uoS5F9O0DFE/eaqRuNZnA/Hqbvqur4sXlnUPdtv4wHs3uZ08/m4abx8nmr2ue9RgPE8re9xjG0N25/w/mPg8QQC918Qz57C+vrf0KH/gXX2Z4sn5b8A/kUB8tgiFbiJf2XgvwxcV2D9Hhz/YxXetyaPJwspz49D9+YN3ncqwneeZRyRxddpx5FTHtf3eDyWNOGRlbR/Uh6WEo9rN3k8SprwyAjav5yAR0ZhnAndOnecKacc10Q8ipK4PSmPrII+hoL4sQyxftY8CoL2VxPwyCnx4MePFU145CXry5PyWFDiwY8fFU14LErWSSblsagQP4aC+LGqSTy1BO2vJeCRV1ivfNjznaj5q9MTrNetac7lSgIuBWUurvdQwGVdcy5bCbgUlbl4jifgsqEJF1Pgx24CLksSLmsw5rf94VEPnXYklsumJvFWxKWegEtJncuoI7FcLmjOpZGAS1mdy6gjsVwuasDFlKwjHSTgsqyQr3hOn7sPWU15H7Ii2H+g+VgS4Rwm4LOicO4ijALX6zSdIHB+43GK9+PSXm8zwQd2nUw076E5ZiUcv0zAsSLheAHmRn0Uhk4HNbuO1+6h8xw/BLaz0JuZgNO9BJxWJZzWIWduO5EzgsTRGzn/e3lGnKwx67Ik1nYF67J54PhmzH5Kg1mXPVTYT6GPhNTgnaJjIyzPyymvY7D7LY9Nvc4PeegRd1/qE/g9izj3Ps8PzXo/J+buRqgvOo9T0oB7Wvs5/wcAAP//rWXXIMgyAAA=";

  // Deserialize RuntimeTypeInfo
  var bytes = BASE64.decode(serializedRuntimeTypeInfo);
  var unzippedBytes = new ZLibDecoder().convert(bytes);
  var bdata = new ByteData.view(unzippedBytes.buffer);
  var message = new bindings.Message(bdata, null, unzippedBytes.length, 0);
  _runtimeTypeInfo = mojom_types.RuntimeTypeInfo.deserialize(message);
  return _runtimeTypeInfo;
}