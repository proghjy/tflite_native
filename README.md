[![Build Status](https://travis-ci.org/dart-lang/tflite_native.svg?branch=master)](https://travis-ci.org/dart-lang/tflite_native)

## What is it?

A Dart interface to [TensorFlow Lite (tflite)](https://www.tensorflow.org/lite)
through Dart's
[foreign function interface (FFI)](https://dart.dev/server/c-interop).
This library wraps the experimental tflite
[C API](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/lite/experimental/c/c_api.h).

## What Dart platforms does this package support?

This package supports desktop use cases (Linux, OSX, Windows, etc). 

## What if I want TensorFlow Lite support for Flutter apps?

Flutter developers should instead
consider using the Flutter plugin [flutter_tflite](https://github.com/shaqian/flutter_tflite)
(among the issues using this package with Flutter, we locate the tflite dynamic library through
`Isolate.resolvePackageUri`, which doesn't translate perfectly in the Flutter context (see
https://github.com/flutter/flutter/issues/14815).

## 왜 이걸 사용할 수 밖에 없을까요?
 학습된 모델을 모바일에 추론하여 서버 비용을 최적화 할수 있습니다. 대규모 추론을 해야하는 서비스에서는 필수입니다. PyTorch, Tensorflow 모두 C++ API를 제공하고 있으며 FFI를 통하여 해당 API를 어떤 플랫폼에서든 Dart언어(다양한 플렛폼을 하나의 언어로 통합, 서버비용 절감 + 클라이언트 개발비용 절감)를 통해 사용 가능합니다. 머신러닝 딥러닝을 모르더라도 학습된 모델을 쉽게 로드하고 추론결과가 어떤 의미를 제공하는지만 알면 사용자에게 깊은 인사이트를 제공하여 서비스 품질을 향상 할 수 있습니다. 오픈소스 커뮤니티에서 서비스에 필요한 딥러닝 모델을 찾기만 하면 됩니다.
