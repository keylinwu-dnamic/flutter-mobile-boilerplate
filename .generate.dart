// **************************************************************************
// Generator: Flutter boilerplate
// Made by DNAMIC
// **************************************************************************

import 'dart:io';
import 'package:yaml/yaml.dart';

const source = 'lib/';
const screen = 'screens/';

Future<void> main(List<String> args) async {
  if (args.isNotEmpty && args.length >= 2) {
    final String name = args[0];
    final String className = name.capitalizedOnlyFirst();
    final List<String> services = args.skip(1).toList();

    try {
      for (var template in Templates.values) {
        final file = await _createFile(template, name, className);

        if (file != null) {
          await _writeFile(template, name, className, services);
        }
      }
      return print(_successfulyTemplate());
    } catch (err) {
      return Future.error('$err');
    }
  } else {
    return Future.error('Invalid arguments class name or service name');
  }
}

Future<File?> _createFile(
    Templates template, String name, String className) async {
  File? file;
  final String fileName = _getFileName(name);
  final String path = '$source$screen$fileName/';

  switch (template) {
    case Templates.states:
      file = await File('$path${template.name}/${fileName}_state.dart')
          .create(recursive: true);
      break;
    case Templates.page:
    case Templates.provider:
    case Templates.viewmodel:
      file = await File('$path${fileName}_${template.name}.dart')
          .create(recursive: true);
      break;
  }

  return file;
}

Future<File?> _writeFile(Templates template, String name, String className,
    List<String> services) async {
  File? file;
  final String fileName = _getFileName(name);
  String path = '$source$screen$fileName/';
  String package = await _getConfigValue('name');

  switch (template) {
    case Templates.states:
      path += '${template.name}/${fileName}_state.dart';
      file =
          await File(path).writeAsString(_stateTemplate(fileName, className));
      break;
    case Templates.page:
      path += '${fileName}_${template.name}.dart';
      file = await File(path).writeAsString(_pageTemplate(className));
      break;
    case Templates.provider:
      path += '${fileName}_${template.name}.dart';
      file = await File(path).writeAsString(
          _providerTemplate(name, className, fileName, package, services));
      break;
    case Templates.viewmodel:
      path += '${fileName}_${template.name}.dart';
      file = await File(path).writeAsString(
          _viewModelTemplate(name, className, fileName, package, services));
      break;
  }

  return file;
}

String _pageTemplate(String className) {
  return '''
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ${className}Page extends ConsumerStatefulWidget {
  const ${className}Page({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _${className}PageState();
}

class _${className}PageState extends ConsumerState<${className}Page> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('$className Screen')),
    );
  }
}
  ''';
}

String _providerTemplate(String name, String className, String fileName,
    String package, List<String> services) {
  return '''
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:${package}/providers/providers.dart';

import 'package:${package}/$screen$fileName/${fileName}_viewmodel.dart';
import 'package:${package}/$screen$fileName/${Templates.states.name}/${fileName}_state.dart';

final ${name}ViewModelProvider =
    StateNotifierProvider<${className}ViewModel, ${className}State>((ref) {
${_buildServicesTemplate(contentClassType: ContentClass.providers, services: services)}
  return ${className}ViewModel(const ${className}State.loading(), ${_buildServicesTemplate(contentClassType: ContentClass.parameters, services: services)});
});
  ''';
}

String _stateTemplate(String fileName, String className) {
  return '''
import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

part '${fileName}_state.freezed.dart';

@freezed
class ${className}State with _\$${className}State {
  const factory ${className}State.loading() = _${className}StateLoading;
  const factory ${className}State.success() = _${className}StateSuccess;
  const factory ${className}State.failure(String error) = _${className}StateFailure;
}  
  ''';
}

String _viewModelTemplate(String name, String className, String fileName,
    String package, List<String> services) {
  return '''
import 'package:flutter_riverpod/flutter_riverpod.dart';

${_buildServicesTemplate(contentClassType: ContentClass.imports, services: services, package: package)}
import 'package:${package}/$screen$fileName/${Templates.states.name}/${fileName}_state.dart';

class ${className}ViewModel extends StateNotifier<${className}State> {
${_buildServicesTemplate(contentClassType: ContentClass.variables, services: services)}
  ${className}ViewModel(super.state, {${_buildServicesTemplate(contentClassType: ContentClass.constructor, services: services)}});
}
  ''';
}

String _buildServicesTemplate(
    {required ContentClass contentClassType,
    required List<String> services,
    String? package}) {
  String template = '';

  for (var i = 0; i < services.length; i++) {
    switch (contentClassType) {
      case ContentClass.constructor:
        template += 'required this.${services[i]}, ';
        break;
      case ContentClass.imports:
        String fileName = _getFileName(services[i]);
        template +=
            'import \'package:${package}/services/${fileName}.dart\';\n';
        break;
      case ContentClass.parameters:
        template += '${services[i]}: ${services[i]}, ';
        break;
      case ContentClass.providers:
        template +=
            '\tfinal ${services[i]} = ref.read(${services[i]}Provider);\n';
        break;
      case ContentClass.variables:
        template +=
            '\tfinal ${services[i].capitalizedOnlyFirst()}Interface ${services[i]};\n';
        break;
    }
  }

  return template;
}

String _successfulyTemplate() {
  return '''
    >> Successfully generated classes
    >> Remember to run the command to build the dependency files for the generated classes: 
        slidy run build 
        
       or: 
       
        flutter pub run build_runner build --delete-conflicting-outputs  
  ''';
}

String _getFileName(String value) {
  String name = '';

  for (var i = 0; i < value.length; i++) {
    if (value[i].toUpperCase() == value[i]) {
      name += '_${value[i].toLowerCase()}';
    } else {
      name += value[i];
    }
  }

  return name;
}

Future<String> _getConfigValue(String key) {
  File file = new File('pubspec.yaml');

  return file.readAsString().then((String content) {
    Map yaml = loadYaml(content);
    return yaml['$key'];
  });
}

extension Capitalized on String {
  String capitalized() =>
      substring(0, 1).toUpperCase() + substring(1).toLowerCase();

  String capitalizedOnlyFirst() => substring(0, 1).toUpperCase() + substring(1);
}

enum Templates {
  page,
  provider,
  states,
  viewmodel,
}

enum ContentClass { imports, constructor, parameters, providers, variables }
