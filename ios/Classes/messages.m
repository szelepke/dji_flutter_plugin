// Autogenerated from Pigeon (v1.0.19), do not edit directly.
// See also: https://pub.dev/packages/pigeon
#import "messages.h"
#import <Flutter/Flutter.h>

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSDictionary<NSString *, id> *wrapResult(id result, FlutterError *error) {
  NSDictionary *errorDict = (NSDictionary *)[NSNull null];
  if (error) {
    errorDict = @{
        @"code": (error.code ? error.code : [NSNull null]),
        @"message": (error.message ? error.message : [NSNull null]),
        @"details": (error.details ? error.details : [NSNull null]),
        };
  }
  return @{
      @"result": (result ? result : [NSNull null]),
      @"error": errorDict,
      };
}
static id GetNullableObject(NSDictionary* dict, id key) {
  id result = dict[key];
  return (result == [NSNull null]) ? nil : result;
}


@interface FLTVersion ()
+ (FLTVersion *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTBattery ()
+ (FLTBattery *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTDrone ()
+ (FLTDrone *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTMedia ()
+ (FLTMedia *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end

@implementation FLTVersion
+ (instancetype)makeWithString:(nullable NSString *)string {
  FLTVersion* pigeonResult = [[FLTVersion alloc] init];
  pigeonResult.string = string;
  return pigeonResult;
}
+ (FLTVersion *)fromMap:(NSDictionary *)dict {
  FLTVersion *pigeonResult = [[FLTVersion alloc] init];
  pigeonResult.string = GetNullableObject(dict, @"string");
  return pigeonResult;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.string ? self.string : [NSNull null]), @"string", nil];
}
@end

@implementation FLTBattery
+ (instancetype)makeWithLevel:(nullable NSNumber *)level {
  FLTBattery* pigeonResult = [[FLTBattery alloc] init];
  pigeonResult.level = level;
  return pigeonResult;
}
+ (FLTBattery *)fromMap:(NSDictionary *)dict {
  FLTBattery *pigeonResult = [[FLTBattery alloc] init];
  pigeonResult.level = GetNullableObject(dict, @"level");
  return pigeonResult;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.level ? self.level : [NSNull null]), @"level", nil];
}
@end

@implementation FLTDrone
+ (instancetype)makeWithStatus:(nullable NSString *)status
    batteryPercent:(nullable NSNumber *)batteryPercent
    altitude:(nullable NSNumber *)altitude
    latitude:(nullable NSNumber *)latitude
    longitude:(nullable NSNumber *)longitude
    speed:(nullable NSNumber *)speed
    roll:(nullable NSNumber *)roll
    pitch:(nullable NSNumber *)pitch
    yaw:(nullable NSNumber *)yaw {
  FLTDrone* pigeonResult = [[FLTDrone alloc] init];
  pigeonResult.status = status;
  pigeonResult.batteryPercent = batteryPercent;
  pigeonResult.altitude = altitude;
  pigeonResult.latitude = latitude;
  pigeonResult.longitude = longitude;
  pigeonResult.speed = speed;
  pigeonResult.roll = roll;
  pigeonResult.pitch = pitch;
  pigeonResult.yaw = yaw;
  return pigeonResult;
}
+ (FLTDrone *)fromMap:(NSDictionary *)dict {
  FLTDrone *pigeonResult = [[FLTDrone alloc] init];
  pigeonResult.status = GetNullableObject(dict, @"status");
  pigeonResult.batteryPercent = GetNullableObject(dict, @"batteryPercent");
  pigeonResult.altitude = GetNullableObject(dict, @"altitude");
  pigeonResult.latitude = GetNullableObject(dict, @"latitude");
  pigeonResult.longitude = GetNullableObject(dict, @"longitude");
  pigeonResult.speed = GetNullableObject(dict, @"speed");
  pigeonResult.roll = GetNullableObject(dict, @"roll");
  pigeonResult.pitch = GetNullableObject(dict, @"pitch");
  pigeonResult.yaw = GetNullableObject(dict, @"yaw");
  return pigeonResult;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.status ? self.status : [NSNull null]), @"status", (self.batteryPercent ? self.batteryPercent : [NSNull null]), @"batteryPercent", (self.altitude ? self.altitude : [NSNull null]), @"altitude", (self.latitude ? self.latitude : [NSNull null]), @"latitude", (self.longitude ? self.longitude : [NSNull null]), @"longitude", (self.speed ? self.speed : [NSNull null]), @"speed", (self.roll ? self.roll : [NSNull null]), @"roll", (self.pitch ? self.pitch : [NSNull null]), @"pitch", (self.yaw ? self.yaw : [NSNull null]), @"yaw", nil];
}
@end

@implementation FLTMedia
+ (instancetype)makeWithFileName:(nullable NSString *)fileName
    fileUrl:(nullable NSString *)fileUrl
    fileIndex:(nullable NSNumber *)fileIndex {
  FLTMedia* pigeonResult = [[FLTMedia alloc] init];
  pigeonResult.fileName = fileName;
  pigeonResult.fileUrl = fileUrl;
  pigeonResult.fileIndex = fileIndex;
  return pigeonResult;
}
+ (FLTMedia *)fromMap:(NSDictionary *)dict {
  FLTMedia *pigeonResult = [[FLTMedia alloc] init];
  pigeonResult.fileName = GetNullableObject(dict, @"fileName");
  pigeonResult.fileUrl = GetNullableObject(dict, @"fileUrl");
  pigeonResult.fileIndex = GetNullableObject(dict, @"fileIndex");
  return pigeonResult;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.fileName ? self.fileName : [NSNull null]), @"fileName", (self.fileUrl ? self.fileUrl : [NSNull null]), @"fileUrl", (self.fileIndex ? self.fileIndex : [NSNull null]), @"fileIndex", nil];
}
@end

@interface FLTDjiHostApiCodecReader : FlutterStandardReader
@end
@implementation FLTDjiHostApiCodecReader
- (nullable id)readValueOfType:(UInt8)type 
{
  switch (type) {
    case 128:     
      return [FLTBattery fromMap:[self readValue]];
    
    case 129:     
      return [FLTMedia fromMap:[self readValue]];
    
    case 130:     
      return [FLTVersion fromMap:[self readValue]];
    
    default:    
      return [super readValueOfType:type];
    
  }
}
@end

@interface FLTDjiHostApiCodecWriter : FlutterStandardWriter
@end
@implementation FLTDjiHostApiCodecWriter
- (void)writeValue:(id)value 
{
  if ([value isKindOfClass:[FLTBattery class]]) {
    [self writeByte:128];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTMedia class]]) {
    [self writeByte:129];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTVersion class]]) {
    [self writeByte:130];
    [self writeValue:[value toMap]];
  } else 
{
    [super writeValue:value];
  }
}
@end

@interface FLTDjiHostApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation FLTDjiHostApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[FLTDjiHostApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[FLTDjiHostApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *FLTDjiHostApiGetCodec() {
  static dispatch_once_t sPred = 0;
  static FlutterStandardMessageCodec *sSharedObject = nil;
  dispatch_once(&sPred, ^{
    FLTDjiHostApiCodecReaderWriter *readerWriter = [[FLTDjiHostApiCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}


void FLTDjiHostApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<FLTDjiHostApi> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DjiHostApi.getPlatformVersion"
        binaryMessenger:binaryMessenger
        codec:FLTDjiHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getPlatformVersionWithError:)], @"FLTDjiHostApi api (%@) doesn't respond to @selector(getPlatformVersionWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        FLTVersion *output = [api getPlatformVersionWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DjiHostApi.getBatteryLevel"
        binaryMessenger:binaryMessenger
        codec:FLTDjiHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getBatteryLevelWithError:)], @"FLTDjiHostApi api (%@) doesn't respond to @selector(getBatteryLevelWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        FLTBattery *output = [api getBatteryLevelWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DjiHostApi.registerApp"
        binaryMessenger:binaryMessenger
        codec:FLTDjiHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(registerAppWithError:)], @"FLTDjiHostApi api (%@) doesn't respond to @selector(registerAppWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api registerAppWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DjiHostApi.connectDrone"
        binaryMessenger:binaryMessenger
        codec:FLTDjiHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(connectDroneWithError:)], @"FLTDjiHostApi api (%@) doesn't respond to @selector(connectDroneWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api connectDroneWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DjiHostApi.disconnectDrone"
        binaryMessenger:binaryMessenger
        codec:FLTDjiHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(disconnectDroneWithError:)], @"FLTDjiHostApi api (%@) doesn't respond to @selector(disconnectDroneWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api disconnectDroneWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DjiHostApi.delegateDrone"
        binaryMessenger:binaryMessenger
        codec:FLTDjiHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(delegateDroneWithError:)], @"FLTDjiHostApi api (%@) doesn't respond to @selector(delegateDroneWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api delegateDroneWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DjiHostApi.takeOff"
        binaryMessenger:binaryMessenger
        codec:FLTDjiHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(takeOffWithError:)], @"FLTDjiHostApi api (%@) doesn't respond to @selector(takeOffWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api takeOffWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DjiHostApi.land"
        binaryMessenger:binaryMessenger
        codec:FLTDjiHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(landWithError:)], @"FLTDjiHostApi api (%@) doesn't respond to @selector(landWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api landWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DjiHostApi.timeline"
        binaryMessenger:binaryMessenger
        codec:FLTDjiHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(timelineWithError:)], @"FLTDjiHostApi api (%@) doesn't respond to @selector(timelineWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api timelineWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DjiHostApi.start"
        binaryMessenger:binaryMessenger
        codec:FLTDjiHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(startFlightJson:error:)], @"FLTDjiHostApi api (%@) doesn't respond to @selector(startFlightJson:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_flightJson = args[0];
        FlutterError *error;
        [api startFlightJson:arg_flightJson error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DjiHostApi.downloadAllMedia"
        binaryMessenger:binaryMessenger
        codec:FLTDjiHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(downloadAllMediaWithError:)], @"FLTDjiHostApi api (%@) doesn't respond to @selector(downloadAllMediaWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api downloadAllMediaWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DjiHostApi.deleteAllMedia"
        binaryMessenger:binaryMessenger
        codec:FLTDjiHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(deleteAllMediaWithError:)], @"FLTDjiHostApi api (%@) doesn't respond to @selector(deleteAllMediaWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api deleteAllMediaWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DjiHostApi.getMediaList"
        binaryMessenger:binaryMessenger
        codec:FLTDjiHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getMediaListWithError:)], @"FLTDjiHostApi api (%@) doesn't respond to @selector(getMediaListWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSArray<FLTMedia *> *output = [api getMediaListWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DjiHostApi.downloadMedia"
        binaryMessenger:binaryMessenger
        codec:FLTDjiHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(downloadMediaFileIndex:error:)], @"FLTDjiHostApi api (%@) doesn't respond to @selector(downloadMediaFileIndex:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_fileIndex = args[0];
        FlutterError *error;
        NSString *output = [api downloadMediaFileIndex:arg_fileIndex error:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DjiHostApi.deleteMedia"
        binaryMessenger:binaryMessenger
        codec:FLTDjiHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(deleteMediaFileIndex:error:)], @"FLTDjiHostApi api (%@) doesn't respond to @selector(deleteMediaFileIndex:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_fileIndex = args[0];
        FlutterError *error;
        NSNumber *output = [api deleteMediaFileIndex:arg_fileIndex error:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
}
@interface FLTDjiFlutterApiCodecReader : FlutterStandardReader
@end
@implementation FLTDjiFlutterApiCodecReader
- (nullable id)readValueOfType:(UInt8)type 
{
  switch (type) {
    case 128:     
      return [FLTDrone fromMap:[self readValue]];
    
    default:    
      return [super readValueOfType:type];
    
  }
}
@end

@interface FLTDjiFlutterApiCodecWriter : FlutterStandardWriter
@end
@implementation FLTDjiFlutterApiCodecWriter
- (void)writeValue:(id)value 
{
  if ([value isKindOfClass:[FLTDrone class]]) {
    [self writeByte:128];
    [self writeValue:[value toMap]];
  } else 
{
    [super writeValue:value];
  }
}
@end

@interface FLTDjiFlutterApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation FLTDjiFlutterApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[FLTDjiFlutterApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[FLTDjiFlutterApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *FLTDjiFlutterApiGetCodec() {
  static dispatch_once_t sPred = 0;
  static FlutterStandardMessageCodec *sSharedObject = nil;
  dispatch_once(&sPred, ^{
    FLTDjiFlutterApiCodecReaderWriter *readerWriter = [[FLTDjiFlutterApiCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}


@interface FLTDjiFlutterApi ()
@property (nonatomic, strong) NSObject<FlutterBinaryMessenger> *binaryMessenger;
@end

@implementation FLTDjiFlutterApi

- (instancetype)initWithBinaryMessenger:(NSObject<FlutterBinaryMessenger> *)binaryMessenger {
  self = [super init];
  if (self) {
    _binaryMessenger = binaryMessenger;
  }
  return self;
}
- (void)setStatusDrone:(FLTDrone *)arg_drone completion:(void(^)(NSError *_Nullable))completion {
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:@"dev.flutter.pigeon.DjiFlutterApi.setStatus"
      binaryMessenger:self.binaryMessenger
      codec:FLTDjiFlutterApiGetCodec()];
  [channel sendMessage:@[arg_drone] reply:^(id reply) {
    completion(nil);
  }];
}
@end
