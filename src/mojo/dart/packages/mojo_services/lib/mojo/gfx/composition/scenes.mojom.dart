// WARNING: DO NOT EDIT. This file was generated by a program.
// See $MOJO_SDK/tools/bindings/mojom_bindings_generator.py.

library scenes_mojom;
import 'dart:async';
import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojo/mojo/bindings/types/service_describer.mojom.dart' as service_describer;
import 'package:mojo_services/mojo/gfx/composition/nodes.mojom.dart' as nodes_mojom;
import 'package:mojo_services/mojo/gfx/composition/resources.mojom.dart' as resources_mojom;
import 'package:mojo_services/mojo/gfx/composition/scheduling.mojom.dart' as scheduling_mojom;
const int kSceneRootNodeId = 0;
const int kSceneVersionNone = 0;



class SceneUpdate extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(32, 0)
  ];
  bool clearResources = false;
  bool clearNodes = false;
  Map<int, resources_mojom.Resource> resources = null;
  Map<int, nodes_mojom.Node> nodes = null;

  SceneUpdate() : super(kVersions.last.size);

  SceneUpdate.init(
    bool this.clearResources, 
    bool this.clearNodes, 
    Map<int, resources_mojom.Resource> this.resources, 
    Map<int, nodes_mojom.Node> this.nodes
  ) : super(kVersions.last.size);

  static SceneUpdate deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static SceneUpdate decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    SceneUpdate result = new SceneUpdate();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.clearResources = decoder0.decodeBool(8, 0);
    }
    if (mainDataHeader.version >= 0) {
      
      result.clearNodes = decoder0.decodeBool(8, 1);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, true);
      if (decoder1 == null) {
        result.resources = null;
      } else {
        decoder1.decodeDataHeaderForMap();
        List<int> keys0;
        List<resources_mojom.Resource> values0;
        {
          
          keys0 = decoder1.decodeUint32Array(bindings.ArrayDataHeader.kHeaderSize, bindings.kNothingNullable, bindings.kUnspecifiedArrayLength);
        }
        {
          
          var decoder2 = decoder1.decodePointer(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize, false);
          {
            var si2 = decoder2.decodeDataHeaderForUnionArray(keys0.length);
            values0 = new List<resources_mojom.Resource>(si2.numElements);
            for (int i2 = 0; i2 < si2.numElements; ++i2) {
              
                values0[i2] = resources_mojom.Resource.decode(decoder2, bindings.ArrayDataHeader.kHeaderSize + bindings.kUnionSize * i2);
            }
          }
        }
        result.resources = new Map<int, resources_mojom.Resource>.fromIterables(
            keys0, values0);
      }
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(24, true);
      if (decoder1 == null) {
        result.nodes = null;
      } else {
        decoder1.decodeDataHeaderForMap();
        List<int> keys0;
        List<nodes_mojom.Node> values0;
        {
          
          keys0 = decoder1.decodeUint32Array(bindings.ArrayDataHeader.kHeaderSize, bindings.kNothingNullable, bindings.kUnspecifiedArrayLength);
        }
        {
          
          var decoder2 = decoder1.decodePointer(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize, false);
          {
            var si2 = decoder2.decodeDataHeaderForPointerArray(keys0.length);
            values0 = new List<nodes_mojom.Node>(si2.numElements);
            for (int i2 = 0; i2 < si2.numElements; ++i2) {
              
              var decoder3 = decoder2.decodePointer(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i2, true);
              values0[i2] = nodes_mojom.Node.decode(decoder3);
            }
          }
        }
        result.nodes = new Map<int, nodes_mojom.Node>.fromIterables(
            keys0, values0);
      }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "SceneUpdate";
    String fieldName;
    try {
      fieldName = "clearResources";
      encoder0.encodeBool(clearResources, 8, 0);
      fieldName = "clearNodes";
      encoder0.encodeBool(clearNodes, 8, 1);
      fieldName = "resources";
      if (resources == null) {
        encoder0.encodeNullPointer(16, true);
      } else {
        var encoder1 = encoder0.encoderForMap(16);
        var keys0 = resources.keys.toList();
        var values0 = resources.values.toList();
        encoder1.encodeUint32Array(keys0, bindings.ArrayDataHeader.kHeaderSize, bindings.kNothingNullable, bindings.kUnspecifiedArrayLength);
        
        {
          var encoder2 = encoder1.encodeUnionArray(values0.length, bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize, bindings.kUnspecifiedArrayLength);
          for (int i1 = 0; i1 < values0.length; ++i1) {
            encoder2.encodeUnion(values0[i1], bindings.ArrayDataHeader.kHeaderSize + bindings.kUnionSize * i1, true);
          }
        }
      }
      fieldName = "nodes";
      if (nodes == null) {
        encoder0.encodeNullPointer(24, true);
      } else {
        var encoder1 = encoder0.encoderForMap(24);
        var keys0 = nodes.keys.toList();
        var values0 = nodes.values.toList();
        encoder1.encodeUint32Array(keys0, bindings.ArrayDataHeader.kHeaderSize, bindings.kNothingNullable, bindings.kUnspecifiedArrayLength);
        
        {
          var encoder2 = encoder1.encodePointerArray(values0.length, bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize, bindings.kUnspecifiedArrayLength);
          for (int i1 = 0; i1 < values0.length; ++i1) {
            encoder2.encodeStruct(values0[i1], bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i1, true);
          }
        }
      }
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "SceneUpdate("
           "clearResources: $clearResources" ", "
           "clearNodes: $clearNodes" ", "
           "resources: $resources" ", "
           "nodes: $nodes" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class SceneMetadata extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  int version = 0;
  int presentationTime = 0;

  SceneMetadata() : super(kVersions.last.size);

  SceneMetadata.init(
    int this.version, 
    int this.presentationTime
  ) : super(kVersions.last.size);

  static SceneMetadata deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static SceneMetadata decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    SceneMetadata result = new SceneMetadata();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.version = decoder0.decodeUint32(8);
    }
    if (mainDataHeader.version >= 0) {
      
      result.presentationTime = decoder0.decodeInt64(16);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "SceneMetadata";
    String fieldName;
    try {
      fieldName = "version";
      encoder0.encodeUint32(version, 8);
      fieldName = "presentationTime";
      encoder0.encodeInt64(presentationTime, 16);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "SceneMetadata("
           "version: $version" ", "
           "presentationTime: $presentationTime" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["version"] = version;
    map["presentationTime"] = presentationTime;
    return map;
  }
}


class _SceneSetListenerParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  SceneListenerInterface listener = null;

  _SceneSetListenerParams() : super(kVersions.last.size);

  _SceneSetListenerParams.init(
    SceneListenerInterface this.listener
  ) : super(kVersions.last.size);

  static _SceneSetListenerParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _SceneSetListenerParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _SceneSetListenerParams result = new _SceneSetListenerParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.listener = decoder0.decodeServiceInterface(8, true, SceneListenerProxy.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_SceneSetListenerParams";
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
    return "_SceneSetListenerParams("
           "listener: $listener" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class _SceneUpdateParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  SceneUpdate update = null;

  _SceneUpdateParams() : super(kVersions.last.size);

  _SceneUpdateParams.init(
    SceneUpdate this.update
  ) : super(kVersions.last.size);

  static _SceneUpdateParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _SceneUpdateParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _SceneUpdateParams result = new _SceneUpdateParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.update = SceneUpdate.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_SceneUpdateParams";
    String fieldName;
    try {
      fieldName = "update";
      encoder0.encodeStruct(update, 8, false);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_SceneUpdateParams("
           "update: $update" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class _ScenePublishParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  SceneMetadata metadata = null;

  _ScenePublishParams() : super(kVersions.last.size);

  _ScenePublishParams.init(
    SceneMetadata this.metadata
  ) : super(kVersions.last.size);

  static _ScenePublishParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _ScenePublishParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _ScenePublishParams result = new _ScenePublishParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, true);
      result.metadata = SceneMetadata.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_ScenePublishParams";
    String fieldName;
    try {
      fieldName = "metadata";
      encoder0.encodeStruct(metadata, 8, true);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_ScenePublishParams("
           "metadata: $metadata" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["metadata"] = metadata;
    return map;
  }
}


class _SceneGetSchedulerParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  scheduling_mojom.FrameSchedulerInterfaceRequest scheduler = null;

  _SceneGetSchedulerParams() : super(kVersions.last.size);

  _SceneGetSchedulerParams.init(
    scheduling_mojom.FrameSchedulerInterfaceRequest this.scheduler
  ) : super(kVersions.last.size);

  static _SceneGetSchedulerParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _SceneGetSchedulerParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _SceneGetSchedulerParams result = new _SceneGetSchedulerParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.scheduler = decoder0.decodeInterfaceRequest(8, false, scheduling_mojom.FrameSchedulerStub.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_SceneGetSchedulerParams";
    String fieldName;
    try {
      fieldName = "scheduler";
      encoder0.encodeInterfaceRequest(scheduler, 8, false);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_SceneGetSchedulerParams("
           "scheduler: $scheduler" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class _SceneListenerOnResourceUnavailableParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  int resourceId = 0;

  _SceneListenerOnResourceUnavailableParams() : super(kVersions.last.size);

  _SceneListenerOnResourceUnavailableParams.init(
    int this.resourceId
  ) : super(kVersions.last.size);

  static _SceneListenerOnResourceUnavailableParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _SceneListenerOnResourceUnavailableParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _SceneListenerOnResourceUnavailableParams result = new _SceneListenerOnResourceUnavailableParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.resourceId = decoder0.decodeUint32(8);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_SceneListenerOnResourceUnavailableParams";
    String fieldName;
    try {
      fieldName = "resourceId";
      encoder0.encodeUint32(resourceId, 8);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_SceneListenerOnResourceUnavailableParams("
           "resourceId: $resourceId" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["resourceId"] = resourceId;
    return map;
  }
}


class SceneListenerOnResourceUnavailableResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  SceneListenerOnResourceUnavailableResponseParams() : super(kVersions.last.size);

  SceneListenerOnResourceUnavailableResponseParams.init(
  ) : super(kVersions.last.size);

  static SceneListenerOnResourceUnavailableResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static SceneListenerOnResourceUnavailableResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    SceneListenerOnResourceUnavailableResponseParams result = new SceneListenerOnResourceUnavailableResponseParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "SceneListenerOnResourceUnavailableResponseParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "SceneListenerOnResourceUnavailableResponseParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}

const int _sceneMethodSetListenerName = 0;
const int _sceneMethodUpdateName = 1;
const int _sceneMethodPublishName = 2;
const int _sceneMethodGetSchedulerName = 3;

class _SceneServiceDescription implements service_describer.ServiceDescription {
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

abstract class Scene {
  static const String serviceName = null;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _SceneServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static SceneProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    SceneProxy p = new SceneProxy.unbound();
    String name = serviceName ?? Scene.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void setListener(SceneListenerInterface listener);
  void update(SceneUpdate update);
  void publish(SceneMetadata metadata);
  void getScheduler(scheduling_mojom.FrameSchedulerInterfaceRequest scheduler);
}

abstract class SceneInterface
    implements bindings.MojoInterface<Scene>,
               Scene {
  factory SceneInterface([Scene impl]) =>
      new SceneStub.unbound(impl);

  factory SceneInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [Scene impl]) =>
      new SceneStub.fromEndpoint(endpoint, impl);

  factory SceneInterface.fromMock(
      Scene mock) =>
      new SceneProxy.fromMock(mock);
}

abstract class SceneInterfaceRequest
    implements bindings.MojoInterface<Scene>,
               Scene {
  factory SceneInterfaceRequest() =>
      new SceneProxy.unbound();
}

class _SceneProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<Scene> {
  Scene impl;

  _SceneProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _SceneProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _SceneProxyControl.unbound() : super.unbound();

  String get serviceName => Scene.serviceName;

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
    return "_SceneProxyControl($superString)";
  }
}

class SceneProxy
    extends bindings.Proxy<Scene>
    implements Scene,
               SceneInterface,
               SceneInterfaceRequest {
  SceneProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _SceneProxyControl.fromEndpoint(endpoint));

  SceneProxy.fromHandle(core.MojoHandle handle)
      : super(new _SceneProxyControl.fromHandle(handle));

  SceneProxy.unbound()
      : super(new _SceneProxyControl.unbound());

  factory SceneProxy.fromMock(Scene mock) {
    SceneProxy newMockedProxy =
        new SceneProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static SceneProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For SceneProxy"));
    return new SceneProxy.fromEndpoint(endpoint);
  }


  void setListener(SceneListenerInterface listener) {
    if (impl != null) {
      impl.setListener(listener);
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _SceneSetListenerParams();
    params.listener = listener;
    ctrl.sendMessage(params,
        _sceneMethodSetListenerName);
  }
  void update(SceneUpdate update) {
    if (impl != null) {
      impl.update(update);
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _SceneUpdateParams();
    params.update = update;
    ctrl.sendMessage(params,
        _sceneMethodUpdateName);
  }
  void publish(SceneMetadata metadata) {
    if (impl != null) {
      impl.publish(metadata);
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _ScenePublishParams();
    params.metadata = metadata;
    ctrl.sendMessage(params,
        _sceneMethodPublishName);
  }
  void getScheduler(scheduling_mojom.FrameSchedulerInterfaceRequest scheduler) {
    if (impl != null) {
      impl.getScheduler(scheduler);
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _SceneGetSchedulerParams();
    params.scheduler = scheduler;
    ctrl.sendMessage(params,
        _sceneMethodGetSchedulerName);
  }
}

class _SceneStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<Scene> {
  Scene _impl;

  _SceneStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [Scene impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _SceneStubControl.fromHandle(
      core.MojoHandle handle, [Scene impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _SceneStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => Scene.serviceName;



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
      case _sceneMethodSetListenerName:
        var params = _SceneSetListenerParams.deserialize(
            message.payload);
        _impl.setListener(params.listener);
        break;
      case _sceneMethodUpdateName:
        var params = _SceneUpdateParams.deserialize(
            message.payload);
        _impl.update(params.update);
        break;
      case _sceneMethodPublishName:
        var params = _ScenePublishParams.deserialize(
            message.payload);
        _impl.publish(params.metadata);
        break;
      case _sceneMethodGetSchedulerName:
        var params = _SceneGetSchedulerParams.deserialize(
            message.payload);
        _impl.getScheduler(params.scheduler);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  Scene get impl => _impl;
  set impl(Scene d) {
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
    return "_SceneStubControl($superString)";
  }

  int get version => 0;
}

class SceneStub
    extends bindings.Stub<Scene>
    implements Scene,
               SceneInterface,
               SceneInterfaceRequest {
  SceneStub.unbound([Scene impl])
      : super(new _SceneStubControl.unbound(impl));

  SceneStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [Scene impl])
      : super(new _SceneStubControl.fromEndpoint(endpoint, impl));

  SceneStub.fromHandle(
      core.MojoHandle handle, [Scene impl])
      : super(new _SceneStubControl.fromHandle(handle, impl));

  static SceneStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For SceneStub"));
    return new SceneStub.fromEndpoint(endpoint);
  }


  void setListener(SceneListenerInterface listener) {
    return impl.setListener(listener);
  }
  void update(SceneUpdate update) {
    return impl.update(update);
  }
  void publish(SceneMetadata metadata) {
    return impl.publish(metadata);
  }
  void getScheduler(scheduling_mojom.FrameSchedulerInterfaceRequest scheduler) {
    return impl.getScheduler(scheduler);
  }
}

const int _sceneListenerMethodOnResourceUnavailableName = 0;

class _SceneListenerServiceDescription implements service_describer.ServiceDescription {
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

abstract class SceneListener {
  static const String serviceName = null;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _SceneListenerServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static SceneListenerProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    SceneListenerProxy p = new SceneListenerProxy.unbound();
    String name = serviceName ?? SceneListener.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void onResourceUnavailable(int resourceId,void callback());
}

abstract class SceneListenerInterface
    implements bindings.MojoInterface<SceneListener>,
               SceneListener {
  factory SceneListenerInterface([SceneListener impl]) =>
      new SceneListenerStub.unbound(impl);

  factory SceneListenerInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [SceneListener impl]) =>
      new SceneListenerStub.fromEndpoint(endpoint, impl);

  factory SceneListenerInterface.fromMock(
      SceneListener mock) =>
      new SceneListenerProxy.fromMock(mock);
}

abstract class SceneListenerInterfaceRequest
    implements bindings.MojoInterface<SceneListener>,
               SceneListener {
  factory SceneListenerInterfaceRequest() =>
      new SceneListenerProxy.unbound();
}

class _SceneListenerProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<SceneListener> {
  SceneListener impl;

  _SceneListenerProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _SceneListenerProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _SceneListenerProxyControl.unbound() : super.unbound();

  String get serviceName => SceneListener.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case _sceneListenerMethodOnResourceUnavailableName:
        var r = SceneListenerOnResourceUnavailableResponseParams.deserialize(
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
        callback();
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
    return "_SceneListenerProxyControl($superString)";
  }
}

class SceneListenerProxy
    extends bindings.Proxy<SceneListener>
    implements SceneListener,
               SceneListenerInterface,
               SceneListenerInterfaceRequest {
  SceneListenerProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _SceneListenerProxyControl.fromEndpoint(endpoint));

  SceneListenerProxy.fromHandle(core.MojoHandle handle)
      : super(new _SceneListenerProxyControl.fromHandle(handle));

  SceneListenerProxy.unbound()
      : super(new _SceneListenerProxyControl.unbound());

  factory SceneListenerProxy.fromMock(SceneListener mock) {
    SceneListenerProxy newMockedProxy =
        new SceneListenerProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static SceneListenerProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For SceneListenerProxy"));
    return new SceneListenerProxy.fromEndpoint(endpoint);
  }


  void onResourceUnavailable(int resourceId,void callback()) {
    if (impl != null) {
      impl.onResourceUnavailable(resourceId,callback);
      return;
    }
    var params = new _SceneListenerOnResourceUnavailableParams();
    params.resourceId = resourceId;
    Function zonedCallback;
    if (identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = (() {
        z.bindCallback(() {
          callback();
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _sceneListenerMethodOnResourceUnavailableName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
}

class _SceneListenerStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<SceneListener> {
  SceneListener _impl;

  _SceneListenerStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [SceneListener impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _SceneListenerStubControl.fromHandle(
      core.MojoHandle handle, [SceneListener impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _SceneListenerStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => SceneListener.serviceName;


  Function _sceneListenerOnResourceUnavailableResponseParamsResponder(
      int requestId) {
  return () {
      var result = new SceneListenerOnResourceUnavailableResponseParams();
      sendResponse(buildResponseWithId(
          result,
          _sceneListenerMethodOnResourceUnavailableName,
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
      case _sceneListenerMethodOnResourceUnavailableName:
        var params = _SceneListenerOnResourceUnavailableParams.deserialize(
            message.payload);
        _impl.onResourceUnavailable(params.resourceId, _sceneListenerOnResourceUnavailableResponseParamsResponder(message.header.requestId));
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  SceneListener get impl => _impl;
  set impl(SceneListener d) {
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
    return "_SceneListenerStubControl($superString)";
  }

  int get version => 0;
}

class SceneListenerStub
    extends bindings.Stub<SceneListener>
    implements SceneListener,
               SceneListenerInterface,
               SceneListenerInterfaceRequest {
  SceneListenerStub.unbound([SceneListener impl])
      : super(new _SceneListenerStubControl.unbound(impl));

  SceneListenerStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [SceneListener impl])
      : super(new _SceneListenerStubControl.fromEndpoint(endpoint, impl));

  SceneListenerStub.fromHandle(
      core.MojoHandle handle, [SceneListener impl])
      : super(new _SceneListenerStubControl.fromHandle(handle, impl));

  static SceneListenerStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For SceneListenerStub"));
    return new SceneListenerStub.fromEndpoint(endpoint);
  }


  void onResourceUnavailable(int resourceId,void callback()) {
    return impl.onResourceUnavailable(resourceId,callback);
  }
}


