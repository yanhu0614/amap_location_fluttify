// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class AMapLocationManager extends NSObject  {
  //region constants
  static const String name__ = 'AMapLocationManager';

  
  //endregion

  //region creators
  static Future<AMapLocationManager> create__() async {
    final int refId = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('ObjectFactory::createAMapLocationManager');
    final object = AMapLocationManager()..refId = refId..tag__ = 'amap_location_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<AMapLocationManager>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('ObjectFactory::create_batchAMapLocationManager', {'length': length});
  
    final List<AMapLocationManager> typedResult = resultBatch.map((result) => AMapLocationManager()..refId = result..tag__ = 'amap_location_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<double> get_distanceFilter() async {
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_distanceFilter", {'refId': refId});
  
    return __result__;
  }
  
  Future<double> get_desiredAccuracy() async {
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_desiredAccuracy", {'refId': refId});
  
    return __result__;
  }
  
  Future<bool> get_pausesLocationUpdatesAutomatically() async {
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_pausesLocationUpdatesAutomatically", {'refId': refId});
  
    return __result__;
  }
  
  Future<bool> get_allowsBackgroundLocationUpdates() async {
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_allowsBackgroundLocationUpdates", {'refId': refId});
  
    return __result__;
  }
  
  Future<int> get_locationTimeout() async {
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_locationTimeout", {'refId': refId});
  
    return __result__;
  }
  
  Future<int> get_reGeocodeTimeout() async {
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_reGeocodeTimeout", {'refId': refId});
  
    return __result__;
  }
  
  Future<bool> get_locatingWithReGeocode() async {
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_locatingWithReGeocode", {'refId': refId});
  
    return __result__;
  }
  
  Future<AMapLocationReGeocodeLanguage> get_reGeocodeLanguage() async {
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_reGeocodeLanguage", {'refId': refId});
  
    return AMapLocationReGeocodeLanguage.values[__result__];
  }
  
  Future<bool> get_detectRiskOfFakeLocation() async {
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_detectRiskOfFakeLocation", {'refId': refId});
  
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_delegate(AMapLocationManagerDelegate delegate) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_delegate', {'refId': refId, "delegate": delegate.refId});
  
    MethodChannel('AMapLocationManagerDelegate::Callback')
      .setMethodCallHandler((methodCall) async {
        final args = methodCall.arguments as Map;
        // final refId = args['callerRefId'] as int;
        // if (refId != this.refId) return;
  
        switch (methodCall.method) {
          case 'Callback::AMapLocationManagerDelegate::amapLocationManager_doRequireLocationAuth':
            // print log
            if (fluttifyLogEnabled) {
              debugPrint('fluttify-dart-callback: amapLocationManager_doRequireLocationAuth([])');
            }
        
            // handle the native call
            delegate?.amapLocationManager_doRequireLocationAuth((AMapLocationManager()..refId = (args['manager'])..tag__ = 'amap_location_fluttify'), (CLLocationManager()..refId = (args['locationManager'])..tag__ = 'amap_location_fluttify'));
            break;
          case 'Callback::AMapLocationManagerDelegate::amapLocationManager_didFailWithError':
            // print log
            if (fluttifyLogEnabled) {
              debugPrint('fluttify-dart-callback: amapLocationManager_didFailWithError([])');
            }
        
            // handle the native call
            delegate?.amapLocationManager_didFailWithError((AMapLocationManager()..refId = (args['manager'])..tag__ = 'amap_location_fluttify'), (NSError()..refId = (args['error'])..tag__ = 'amap_location_fluttify'));
            break;
          case 'Callback::AMapLocationManagerDelegate::amapLocationManager_didUpdateLocation':
            // print log
            if (fluttifyLogEnabled) {
              debugPrint('fluttify-dart-callback: amapLocationManager_didUpdateLocation([])');
            }
        
            // handle the native call
            delegate?.amapLocationManager_didUpdateLocation((AMapLocationManager()..refId = (args['manager'])..tag__ = 'amap_location_fluttify'), (CLLocation()..refId = (args['location'])..tag__ = 'amap_location_fluttify'));
            break;
          case 'Callback::AMapLocationManagerDelegate::amapLocationManager_didUpdateLocation_reGeocode':
            // print log
            if (fluttifyLogEnabled) {
              debugPrint('fluttify-dart-callback: amapLocationManager_didUpdateLocation_reGeocode([])');
            }
        
            // handle the native call
            delegate?.amapLocationManager_didUpdateLocation_reGeocode((AMapLocationManager()..refId = (args['manager'])..tag__ = 'amap_location_fluttify'), (CLLocation()..refId = (args['location'])..tag__ = 'amap_location_fluttify'), (AMapLocationReGeocode()..refId = (args['reGeocode'])..tag__ = 'amap_location_fluttify'));
            break;
          case 'Callback::AMapLocationManagerDelegate::amapLocationManager_didChangeAuthorizationStatus':
            // print log
            if (fluttifyLogEnabled) {
              debugPrint('fluttify-dart-callback: amapLocationManager_didChangeAuthorizationStatus([])');
            }
        
            // handle the native call
            delegate?.amapLocationManager_didChangeAuthorizationStatus((AMapLocationManager()..refId = (args['manager'])..tag__ = 'amap_location_fluttify'), CLAuthorizationStatus.values[(args['status'])]);
            break;
          case 'Callback::AMapLocationManagerDelegate::amapLocationManagerShouldDisplayHeadingCalibration':
            // print log
            if (fluttifyLogEnabled) {
              debugPrint('fluttify-dart-callback: amapLocationManagerShouldDisplayHeadingCalibration([])');
            }
        
            // handle the native call
            delegate?.amapLocationManagerShouldDisplayHeadingCalibration((AMapLocationManager()..refId = (args['manager'])..tag__ = 'amap_location_fluttify'));
            break;
          case 'Callback::AMapLocationManagerDelegate::amapLocationManager_didUpdateHeading':
            // print log
            if (fluttifyLogEnabled) {
              debugPrint('fluttify-dart-callback: amapLocationManager_didUpdateHeading([])');
            }
        
            // handle the native call
            delegate?.amapLocationManager_didUpdateHeading((AMapLocationManager()..refId = (args['manager'])..tag__ = 'amap_location_fluttify'), (CLHeading()..refId = (args['newHeading'])..tag__ = 'amap_location_fluttify'));
            break;
          case 'Callback::AMapLocationManagerDelegate::amapLocationManager_didStartMonitoringForRegion':
            // print log
            if (fluttifyLogEnabled) {
              debugPrint('fluttify-dart-callback: amapLocationManager_didStartMonitoringForRegion([])');
            }
        
            // handle the native call
            delegate?.amapLocationManager_didStartMonitoringForRegion((AMapLocationManager()..refId = (args['manager'])..tag__ = 'amap_location_fluttify'), (AMapLocationCircleRegion()..refId = (args['region'])..tag__ = 'amap_location_fluttify'));
            break;
          case 'Callback::AMapLocationManagerDelegate::amapLocationManager_didEnterRegion':
            // print log
            if (fluttifyLogEnabled) {
              debugPrint('fluttify-dart-callback: amapLocationManager_didEnterRegion([])');
            }
        
            // handle the native call
            delegate?.amapLocationManager_didEnterRegion((AMapLocationManager()..refId = (args['manager'])..tag__ = 'amap_location_fluttify'), (AMapLocationCircleRegion()..refId = (args['region'])..tag__ = 'amap_location_fluttify'));
            break;
          case 'Callback::AMapLocationManagerDelegate::amapLocationManager_didExitRegion':
            // print log
            if (fluttifyLogEnabled) {
              debugPrint('fluttify-dart-callback: amapLocationManager_didExitRegion([])');
            }
        
            // handle the native call
            delegate?.amapLocationManager_didExitRegion((AMapLocationManager()..refId = (args['manager'])..tag__ = 'amap_location_fluttify'), (AMapLocationCircleRegion()..refId = (args['region'])..tag__ = 'amap_location_fluttify'));
            break;
          case 'Callback::AMapLocationManagerDelegate::amapLocationManager_didDetermineState_forRegion':
            // print log
            if (fluttifyLogEnabled) {
              debugPrint('fluttify-dart-callback: amapLocationManager_didDetermineState_forRegion([])');
            }
        
            // handle the native call
            delegate?.amapLocationManager_didDetermineState_forRegion((AMapLocationManager()..refId = (args['manager'])..tag__ = 'amap_location_fluttify'), AMapLocationRegionState.values[(args['state'])], (AMapLocationCircleRegion()..refId = (args['region'])..tag__ = 'amap_location_fluttify'));
            break;
          case 'Callback::AMapLocationManagerDelegate::amapLocationManager_monitoringDidFailForRegion_withError':
            // print log
            if (fluttifyLogEnabled) {
              debugPrint('fluttify-dart-callback: amapLocationManager_monitoringDidFailForRegion_withError([])');
            }
        
            // handle the native call
            delegate?.amapLocationManager_monitoringDidFailForRegion_withError((AMapLocationManager()..refId = (args['manager'])..tag__ = 'amap_location_fluttify'), (AMapLocationCircleRegion()..refId = (args['region'])..tag__ = 'amap_location_fluttify'), (NSError()..refId = (args['error'])..tag__ = 'amap_location_fluttify'));
            break;
          default:
            break;
        }
      });
  }
  
  Future<void> set_distanceFilter(double distanceFilter) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_distanceFilter', {'refId': refId, "distanceFilter": distanceFilter});
  
  
  }
  
  Future<void> set_desiredAccuracy(double desiredAccuracy) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_desiredAccuracy', {'refId': refId, "desiredAccuracy": desiredAccuracy});
  
  
  }
  
  Future<void> set_pausesLocationUpdatesAutomatically(bool pausesLocationUpdatesAutomatically) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_pausesLocationUpdatesAutomatically', {'refId': refId, "pausesLocationUpdatesAutomatically": pausesLocationUpdatesAutomatically});
  
  
  }
  
  Future<void> set_allowsBackgroundLocationUpdates(bool allowsBackgroundLocationUpdates) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_allowsBackgroundLocationUpdates', {'refId': refId, "allowsBackgroundLocationUpdates": allowsBackgroundLocationUpdates});
  
  
  }
  
  Future<void> set_locationTimeout(int locationTimeout) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_locationTimeout', {'refId': refId, "locationTimeout": locationTimeout});
  
  
  }
  
  Future<void> set_reGeocodeTimeout(int reGeocodeTimeout) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_reGeocodeTimeout', {'refId': refId, "reGeocodeTimeout": reGeocodeTimeout});
  
  
  }
  
  Future<void> set_locatingWithReGeocode(bool locatingWithReGeocode) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_locatingWithReGeocode', {'refId': refId, "locatingWithReGeocode": locatingWithReGeocode});
  
  
  }
  
  Future<void> set_reGeocodeLanguage(AMapLocationReGeocodeLanguage reGeocodeLanguage) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_reGeocodeLanguage', {'refId': refId, "reGeocodeLanguage": reGeocodeLanguage.index});
  
  
  }
  
  Future<void> set_detectRiskOfFakeLocation(bool detectRiskOfFakeLocation) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_detectRiskOfFakeLocation', {'refId': refId, "detectRiskOfFakeLocation": detectRiskOfFakeLocation});
  
  
  }
  
  //endregion

  //region methods
  
  static Future<bool> headingAvailable() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager::headingAvailable([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::headingAvailable', );
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> startUpdatingHeading() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager@$refId::startUpdatingHeading([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::startUpdatingHeading', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> stopUpdatingHeading() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager@$refId::stopUpdatingHeading([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::stopUpdatingHeading', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> dismissHeadingCalibrationDisplay() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager@$refId::dismissHeadingCalibrationDisplay([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::dismissHeadingCalibrationDisplay', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> requestLocationWithReGeocode_completionBlock(bool withReGeocode, void completionBlock(CLLocation location, AMapLocationReGeocode regeocode, NSError error)) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager@$refId::requestLocationWithReGeocode([\'withReGeocode\':$withReGeocode])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::requestLocationWithReGeocode_completionBlock', {"withReGeocode": withReGeocode, "refId": refId});
  
  
    // handle native call
    MethodChannel('AMapLocationManager::requestLocationWithReGeocode_completionBlock::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::AMapLocatingCompletionBlock::AMapLocatingCompletionBlock':
              // print log
              if (fluttifyLogEnabled) {
        
              }
        
              // handle the native call
              completionBlock((CLLocation()..refId = (args['location'])..tag__ = 'amap_location_fluttify'), (AMapLocationReGeocode()..refId = (args['regeocode'])..tag__ = 'amap_location_fluttify'), (NSError()..refId = (args['error'])..tag__ = 'amap_location_fluttify'));
              break;
            default:
              break;
          }
        });
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> startUpdatingLocation() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager@$refId::startUpdatingLocation([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::startUpdatingLocation', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> stopUpdatingLocation() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager@$refId::stopUpdatingLocation([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::stopUpdatingLocation', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  @deprecated
  Future<void> startMonitoringForRegion(AMapLocationRegion region) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager@$refId::startMonitoringForRegion([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::startMonitoringForRegion', {"region": region.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  @deprecated
  Future<void> stopMonitoringForRegion(AMapLocationRegion region) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager@$refId::stopMonitoringForRegion([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::stopMonitoringForRegion', {"region": region.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  @deprecated
  Future<void> requestStateForRegion(AMapLocationRegion region) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager@$refId::requestStateForRegion([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::requestStateForRegion', {"region": region.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  //endregion
}

extension AMapLocationManager_Batch on List<AMapLocationManager> {
  //region getters
  Future<List<double>> get_distanceFilter_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_distanceFilter_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<double>> get_desiredAccuracy_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_desiredAccuracy_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<bool>> get_pausesLocationUpdatesAutomatically_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_pausesLocationUpdatesAutomatically_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<bool>> get_allowsBackgroundLocationUpdates_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_allowsBackgroundLocationUpdates_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<int>> get_locationTimeout_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_locationTimeout_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<int>> get_reGeocodeTimeout_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_reGeocodeTimeout_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<bool>> get_locatingWithReGeocode_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_locatingWithReGeocode_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<AMapLocationReGeocodeLanguage>> get_reGeocodeLanguage_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_reGeocodeLanguage_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => AMapLocationReGeocodeLanguage.values[__result__]).toList();
  
    return typedResult;
  }
  
  Future<List<bool>> get_detectRiskOfFakeLocation_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationManager::get_detectRiskOfFakeLocation_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_distanceFilter_batch(List<double> distanceFilter) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_distanceFilter_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "distanceFilter": distanceFilter[__i__]}]);
  
  
  }
  
  Future<void> set_desiredAccuracy_batch(List<double> desiredAccuracy) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_desiredAccuracy_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "desiredAccuracy": desiredAccuracy[__i__]}]);
  
  
  }
  
  Future<void> set_pausesLocationUpdatesAutomatically_batch(List<bool> pausesLocationUpdatesAutomatically) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_pausesLocationUpdatesAutomatically_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "pausesLocationUpdatesAutomatically": pausesLocationUpdatesAutomatically[__i__]}]);
  
  
  }
  
  Future<void> set_allowsBackgroundLocationUpdates_batch(List<bool> allowsBackgroundLocationUpdates) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_allowsBackgroundLocationUpdates_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "allowsBackgroundLocationUpdates": allowsBackgroundLocationUpdates[__i__]}]);
  
  
  }
  
  Future<void> set_locationTimeout_batch(List<int> locationTimeout) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_locationTimeout_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "locationTimeout": locationTimeout[__i__]}]);
  
  
  }
  
  Future<void> set_reGeocodeTimeout_batch(List<int> reGeocodeTimeout) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_reGeocodeTimeout_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "reGeocodeTimeout": reGeocodeTimeout[__i__]}]);
  
  
  }
  
  Future<void> set_locatingWithReGeocode_batch(List<bool> locatingWithReGeocode) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_locatingWithReGeocode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "locatingWithReGeocode": locatingWithReGeocode[__i__]}]);
  
  
  }
  
  Future<void> set_reGeocodeLanguage_batch(List<AMapLocationReGeocodeLanguage> reGeocodeLanguage) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_reGeocodeLanguage_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "reGeocodeLanguage": reGeocodeLanguage[__i__].index}]);
  
  
  }
  
  Future<void> set_detectRiskOfFakeLocation_batch(List<bool> detectRiskOfFakeLocation) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::set_detectRiskOfFakeLocation_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "detectRiskOfFakeLocation": detectRiskOfFakeLocation[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  static Future<List<bool>> headingAvailable_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::headingAvailable_batch', );
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<void>> startUpdatingHeading_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::startUpdatingHeading_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<void>> stopUpdatingHeading_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::stopUpdatingHeading_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<void>> dismissHeadingCalibrationDisplay_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::dismissHeadingCalibrationDisplay_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<void>> startUpdatingLocation_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::startUpdatingLocation_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<void>> stopUpdatingLocation_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::stopUpdatingLocation_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  @deprecated
  Future<List<void>> startMonitoringForRegion_batch(List<AMapLocationRegion> region) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::startMonitoringForRegion_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"region": region[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  @deprecated
  Future<List<void>> stopMonitoringForRegion_batch(List<AMapLocationRegion> region) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::stopMonitoringForRegion_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"region": region[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  @deprecated
  Future<List<void>> requestStateForRegion_batch(List<AMapLocationRegion> region) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationManager::requestStateForRegion_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"region": region[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  //endregion
}