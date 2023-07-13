/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Media type in your schema. */
@immutable
class Media extends Model {
  static const classType = const _MediaModelType();
  final String id;
  final String? _description;
  final String? _tags;
  final String? _imageUrl;
  final String? _imageKey;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  MediaModelIdentifier get modelIdentifier {
      return MediaModelIdentifier(
        id: id
      );
  }
  
  String get description {
    try {
      return _description!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get tags {
    try {
      return _tags!;
    } catch(e) {
      throw new DataStoreException(
          DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get imageUrl {
    return _imageUrl;
  }
  
  String? get imageKey {
    return _imageKey;
  }
  
  const Media._internal({required this.id, required description, required tags, imageUrl, imageKey}): _description = description, _tags = tags, _imageUrl = imageUrl, _imageKey = imageKey;
  
  factory Media({String? id, required String description, required String tags, String? imageUrl, String? imageKey}) {
    return Media._internal(
      id: id == null ? UUID.getUUID() : id,
      description: description,
      tags: tags,
      imageUrl: imageUrl,
      imageKey: imageKey);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Media &&
      id == other.id &&
      _description == other._description &&
      _tags == other._tags &&
      _imageUrl == other._imageUrl &&
      _imageKey == other._imageKey;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Media {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("tags=" + "$_tags" + ", ");
    buffer.write("imageUrl=" + "$_imageUrl" + ", ");
    buffer.write("imageKey=" + "$_imageKey");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Media copyWith({String? description, String? tags, String? imageUrl, String? imageKey}) {
    return Media(
      id: id,
      description: description ?? this.description,
      tags: tags ?? this.tags,
      imageUrl: imageUrl ?? this.imageUrl,
      imageKey: imageKey ?? this.imageKey);
  }
  
  Media.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _description = json['description'],
      _tags = json['tags'],
      _imageUrl = json['imageUrl'],
      _imageKey = json['imageKey'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'description': _description, 'tags': _tags, 'imageUrl': _imageUrl, 'imageKey': _imageKey
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'description': _description, 'tags': _tags, 'imageUrl': _imageUrl, 'imageKey': _imageKey
  };

  static final QueryModelIdentifier<MediaModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<MediaModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField TAGS = QueryField(fieldName: "tags");
  static final QueryField IMAGEURL = QueryField(fieldName: "imageUrl");
  static final QueryField IMAGEKEY = QueryField(fieldName: "imageKey");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Media";
    modelSchemaDefinition.pluralName = "Media";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ]),
      AuthRule(
        authStrategy: AuthStrategy.GROUPS,
        groupClaim: "cognito:groups",
        groups: [ "MediaBuyers" ],
        operations: [
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Media.DESCRIPTION,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Media.TAGS,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Media.IMAGEURL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Media.IMAGEKEY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _MediaModelType extends ModelType<Media> {
  const _MediaModelType();
  
  @override
  Media fromJson(Map<String, dynamic> jsonData) {
    return Media.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Media';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Media] in your schema.
 */
@immutable
class MediaModelIdentifier implements ModelIdentifier<Media> {
  final String id;

  /** Create an instance of MediaModelIdentifier using [id] the primary key. */
  const MediaModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'MediaModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is MediaModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}