# Copyright 2019 the V8 project authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can
# be found in the LICENSE file.

# This file is automatically generated by mkgrokdump and should not
# be modified manually.

# List of known V8 instance types.
INSTANCE_TYPES = {
  0: "INTERNALIZED_STRING_TYPE",
  2: "EXTERNAL_INTERNALIZED_STRING_TYPE",
  8: "ONE_BYTE_INTERNALIZED_STRING_TYPE",
  10: "EXTERNAL_ONE_BYTE_INTERNALIZED_STRING_TYPE",
  18: "UNCACHED_EXTERNAL_INTERNALIZED_STRING_TYPE",
  26: "UNCACHED_EXTERNAL_ONE_BYTE_INTERNALIZED_STRING_TYPE",
  32: "STRING_TYPE",
  33: "CONS_STRING_TYPE",
  34: "EXTERNAL_STRING_TYPE",
  35: "SLICED_STRING_TYPE",
  37: "THIN_STRING_TYPE",
  40: "ONE_BYTE_STRING_TYPE",
  41: "CONS_ONE_BYTE_STRING_TYPE",
  42: "EXTERNAL_ONE_BYTE_STRING_TYPE",
  43: "SLICED_ONE_BYTE_STRING_TYPE",
  45: "THIN_ONE_BYTE_STRING_TYPE",
  50: "UNCACHED_EXTERNAL_STRING_TYPE",
  58: "UNCACHED_EXTERNAL_ONE_BYTE_STRING_TYPE",
  64: "SYMBOL_TYPE",
  65: "BIG_INT_BASE_TYPE",
  66: "HEAP_NUMBER_TYPE",
  67: "ODDBALL_TYPE",
  68: "ABSTRACT_INTERNAL_CLASS_SUBCLASS1_TYPE",
  69: "ABSTRACT_INTERNAL_CLASS_SUBCLASS2_TYPE",
  70: "FOREIGN_TYPE",
  71: "WASM_TYPE_INFO_TYPE",
  72: "PROMISE_FULFILL_REACTION_JOB_TASK_TYPE",
  73: "PROMISE_REJECT_REACTION_JOB_TASK_TYPE",
  74: "CALLABLE_TASK_TYPE",
  75: "CALLBACK_TASK_TYPE",
  76: "PROMISE_RESOLVE_THENABLE_JOB_TASK_TYPE",
  77: "LOAD_HANDLER_TYPE",
  78: "STORE_HANDLER_TYPE",
  79: "FUNCTION_TEMPLATE_INFO_TYPE",
  80: "OBJECT_TEMPLATE_INFO_TYPE",
  81: "ACCESS_CHECK_INFO_TYPE",
  82: "ACCESSOR_INFO_TYPE",
  83: "ACCESSOR_PAIR_TYPE",
  84: "ALIASED_ARGUMENTS_ENTRY_TYPE",
  85: "ALLOCATION_MEMENTO_TYPE",
  86: "ALLOCATION_SITE_TYPE",
  87: "ARRAY_BOILERPLATE_DESCRIPTION_TYPE",
  88: "ASM_WASM_DATA_TYPE",
  89: "ASYNC_GENERATOR_REQUEST_TYPE",
  90: "BASELINE_DATA_TYPE",
  91: "BREAK_POINT_TYPE",
  92: "BREAK_POINT_INFO_TYPE",
  93: "CACHED_TEMPLATE_OBJECT_TYPE",
  94: "CALL_HANDLER_INFO_TYPE",
  95: "CLASS_POSITIONS_TYPE",
  96: "DEBUG_INFO_TYPE",
  97: "ENUM_CACHE_TYPE",
  98: "FEEDBACK_CELL_TYPE",
  99: "FUNCTION_TEMPLATE_RARE_DATA_TYPE",
  100: "INTERCEPTOR_INFO_TYPE",
  101: "INTERPRETER_DATA_TYPE",
  102: "MODULE_REQUEST_TYPE",
  103: "PROMISE_CAPABILITY_TYPE",
  104: "PROMISE_REACTION_TYPE",
  105: "PROPERTY_DESCRIPTOR_OBJECT_TYPE",
  106: "PROTOTYPE_INFO_TYPE",
  107: "REG_EXP_BOILERPLATE_DESCRIPTION_TYPE",
  108: "SCRIPT_TYPE",
  109: "SOURCE_TEXT_MODULE_INFO_ENTRY_TYPE",
  110: "STACK_FRAME_INFO_TYPE",
  111: "TEMPLATE_OBJECT_DESCRIPTION_TYPE",
  112: "TUPLE2_TYPE",
  113: "WASM_EXCEPTION_TAG_TYPE",
  114: "WASM_EXPORTED_FUNCTION_DATA_TYPE",
  115: "WASM_INDIRECT_FUNCTION_TABLE_TYPE",
  116: "WASM_JS_FUNCTION_DATA_TYPE",
  117: "FIXED_ARRAY_TYPE",
  118: "HASH_TABLE_TYPE",
  119: "EPHEMERON_HASH_TABLE_TYPE",
  120: "GLOBAL_DICTIONARY_TYPE",
  121: "NAME_DICTIONARY_TYPE",
  122: "NUMBER_DICTIONARY_TYPE",
  123: "ORDERED_HASH_MAP_TYPE",
  124: "ORDERED_HASH_SET_TYPE",
  125: "ORDERED_NAME_DICTIONARY_TYPE",
  126: "SIMPLE_NUMBER_DICTIONARY_TYPE",
  127: "CLOSURE_FEEDBACK_CELL_ARRAY_TYPE",
  128: "OBJECT_BOILERPLATE_DESCRIPTION_TYPE",
  129: "SCRIPT_CONTEXT_TABLE_TYPE",
  130: "BYTE_ARRAY_TYPE",
  131: "BYTECODE_ARRAY_TYPE",
  132: "FIXED_DOUBLE_ARRAY_TYPE",
  133: "INTERNAL_CLASS_WITH_SMI_ELEMENTS_TYPE",
  134: "SCOPE_INFO_TYPE",
  135: "SLOPPY_ARGUMENTS_ELEMENTS_TYPE",
  136: "AWAIT_CONTEXT_TYPE",
  137: "BLOCK_CONTEXT_TYPE",
  138: "CATCH_CONTEXT_TYPE",
  139: "DEBUG_EVALUATE_CONTEXT_TYPE",
  140: "EVAL_CONTEXT_TYPE",
  141: "FUNCTION_CONTEXT_TYPE",
  142: "MODULE_CONTEXT_TYPE",
  143: "NATIVE_CONTEXT_TYPE",
  144: "SCRIPT_CONTEXT_TYPE",
  145: "WITH_CONTEXT_TYPE",
  146: "EXPORTED_SUB_CLASS_BASE_TYPE",
  147: "EXPORTED_SUB_CLASS_TYPE",
  148: "EXPORTED_SUB_CLASS2_TYPE",
  149: "SMALL_ORDERED_HASH_MAP_TYPE",
  150: "SMALL_ORDERED_HASH_SET_TYPE",
  151: "SMALL_ORDERED_NAME_DICTIONARY_TYPE",
  152: "DESCRIPTOR_ARRAY_TYPE",
  153: "STRONG_DESCRIPTOR_ARRAY_TYPE",
  154: "SOURCE_TEXT_MODULE_TYPE",
  155: "SYNTHETIC_MODULE_TYPE",
  156: "UNCOMPILED_DATA_WITH_PREPARSE_DATA_TYPE",
  157: "UNCOMPILED_DATA_WITHOUT_PREPARSE_DATA_TYPE",
  158: "WEAK_FIXED_ARRAY_TYPE",
  159: "TRANSITION_ARRAY_TYPE",
  160: "CELL_TYPE",
  161: "CODE_TYPE",
  162: "CODE_DATA_CONTAINER_TYPE",
  163: "COVERAGE_INFO_TYPE",
  164: "EMBEDDER_DATA_ARRAY_TYPE",
  165: "FEEDBACK_METADATA_TYPE",
  166: "FEEDBACK_VECTOR_TYPE",
  167: "FILLER_TYPE",
  168: "FREE_SPACE_TYPE",
  169: "INTERNAL_CLASS_TYPE",
  170: "INTERNAL_CLASS_WITH_STRUCT_ELEMENTS_TYPE",
  171: "MAP_TYPE",
  172: "ON_HEAP_BASIC_BLOCK_PROFILER_DATA_TYPE",
  173: "PREPARSE_DATA_TYPE",
  174: "PROPERTY_ARRAY_TYPE",
  175: "PROPERTY_CELL_TYPE",
  176: "SHARED_FUNCTION_INFO_TYPE",
  177: "SMI_BOX_TYPE",
  178: "SMI_PAIR_TYPE",
  179: "SORT_STATE_TYPE",
  180: "SWISS_NAME_DICTIONARY_TYPE",
  181: "WASM_ARRAY_TYPE",
  182: "WASM_CAPI_FUNCTION_DATA_TYPE",
  183: "WASM_STRUCT_TYPE",
  184: "WEAK_ARRAY_LIST_TYPE",
  185: "WEAK_CELL_TYPE",
  186: "JS_PROXY_TYPE",
  1057: "JS_OBJECT_TYPE",
  187: "JS_GLOBAL_OBJECT_TYPE",
  188: "JS_GLOBAL_PROXY_TYPE",
  189: "JS_MODULE_NAMESPACE_TYPE",
  1040: "JS_SPECIAL_API_OBJECT_TYPE",
  1041: "JS_PRIMITIVE_WRAPPER_TYPE",
  1042: "JS_ARRAY_ITERATOR_PROTOTYPE_TYPE",
  1043: "JS_ITERATOR_PROTOTYPE_TYPE",
  1044: "JS_MAP_ITERATOR_PROTOTYPE_TYPE",
  1045: "JS_OBJECT_PROTOTYPE_TYPE",
  1046: "JS_PROMISE_PROTOTYPE_TYPE",
  1047: "JS_REG_EXP_PROTOTYPE_TYPE",
  1048: "JS_SET_ITERATOR_PROTOTYPE_TYPE",
  1049: "JS_SET_PROTOTYPE_TYPE",
  1050: "JS_STRING_ITERATOR_PROTOTYPE_TYPE",
  1051: "JS_TYPED_ARRAY_PROTOTYPE_TYPE",
  1052: "JS_GENERATOR_OBJECT_TYPE",
  1053: "JS_ASYNC_FUNCTION_OBJECT_TYPE",
  1054: "JS_ASYNC_GENERATOR_OBJECT_TYPE",
  1055: "JS_ARGUMENTS_OBJECT_TYPE",
  1056: "JS_API_OBJECT_TYPE",
  1058: "JS_BOUND_FUNCTION_TYPE",
  1059: "JS_FUNCTION_TYPE",
  1060: "BIGINT64_TYPED_ARRAY_CONSTRUCTOR_TYPE",
  1061: "BIGUINT64_TYPED_ARRAY_CONSTRUCTOR_TYPE",
  1062: "FLOAT32_TYPED_ARRAY_CONSTRUCTOR_TYPE",
  1063: "FLOAT64_TYPED_ARRAY_CONSTRUCTOR_TYPE",
  1064: "INT16_TYPED_ARRAY_CONSTRUCTOR_TYPE",
  1065: "INT32_TYPED_ARRAY_CONSTRUCTOR_TYPE",
  1066: "INT8_TYPED_ARRAY_CONSTRUCTOR_TYPE",
  1067: "UINT16_TYPED_ARRAY_CONSTRUCTOR_TYPE",
  1068: "UINT32_TYPED_ARRAY_CONSTRUCTOR_TYPE",
  1069: "UINT8_CLAMPED_TYPED_ARRAY_CONSTRUCTOR_TYPE",
  1070: "UINT8_TYPED_ARRAY_CONSTRUCTOR_TYPE",
  1071: "JS_ARRAY_CONSTRUCTOR_TYPE",
  1072: "JS_PROMISE_CONSTRUCTOR_TYPE",
  1073: "JS_REG_EXP_CONSTRUCTOR_TYPE",
  1074: "JS_MAP_KEY_ITERATOR_TYPE",
  1075: "JS_MAP_KEY_VALUE_ITERATOR_TYPE",
  1076: "JS_MAP_VALUE_ITERATOR_TYPE",
  1077: "JS_SET_KEY_VALUE_ITERATOR_TYPE",
  1078: "JS_SET_VALUE_ITERATOR_TYPE",
  1079: "JS_DATA_VIEW_TYPE",
  1080: "JS_TYPED_ARRAY_TYPE",
  1081: "JS_MAP_TYPE",
  1082: "JS_SET_TYPE",
  1083: "JS_WEAK_MAP_TYPE",
  1084: "JS_WEAK_SET_TYPE",
  1085: "JS_ARRAY_TYPE",
  1086: "JS_ARRAY_BUFFER_TYPE",
  1087: "JS_ARRAY_ITERATOR_TYPE",
  1088: "JS_ASYNC_FROM_SYNC_ITERATOR_TYPE",
  1089: "JS_COLLATOR_TYPE",
  1090: "JS_CONTEXT_EXTENSION_OBJECT_TYPE",
  1091: "JS_DATE_TYPE",
  1092: "JS_DATE_TIME_FORMAT_TYPE",
  1093: "JS_DISPLAY_NAMES_TYPE",
  1094: "JS_ERROR_TYPE",
  1095: "JS_FINALIZATION_REGISTRY_TYPE",
  1096: "JS_LIST_FORMAT_TYPE",
  1097: "JS_LOCALE_TYPE",
  1098: "JS_MESSAGE_OBJECT_TYPE",
  1099: "JS_NUMBER_FORMAT_TYPE",
  1100: "JS_PLURAL_RULES_TYPE",
  1101: "JS_PROMISE_TYPE",
  1102: "JS_REG_EXP_TYPE",
  1103: "JS_REG_EXP_STRING_ITERATOR_TYPE",
  1104: "JS_RELATIVE_TIME_FORMAT_TYPE",
  1105: "JS_SEGMENT_ITERATOR_TYPE",
  1106: "JS_SEGMENTER_TYPE",
  1107: "JS_SEGMENTS_TYPE",
  1108: "JS_STRING_ITERATOR_TYPE",
  1109: "JS_V8_BREAK_ITERATOR_TYPE",
  1110: "JS_WEAK_REF_TYPE",
  1111: "WASM_EXCEPTION_OBJECT_TYPE",
  1112: "WASM_GLOBAL_OBJECT_TYPE",
  1113: "WASM_INSTANCE_OBJECT_TYPE",
  1114: "WASM_MEMORY_OBJECT_TYPE",
  1115: "WASM_MODULE_OBJECT_TYPE",
  1116: "WASM_TABLE_OBJECT_TYPE",
  1117: "WASM_VALUE_OBJECT_TYPE",
}

# List of known V8 maps.
KNOWN_MAPS = {
  ("read_only_space", 0x02119): (171, "MetaMap"),
  ("read_only_space", 0x02141): (67, "NullMap"),
  ("read_only_space", 0x02169): (153, "StrongDescriptorArrayMap"),
  ("read_only_space", 0x02191): (158, "WeakFixedArrayMap"),
  ("read_only_space", 0x021d1): (97, "EnumCacheMap"),
  ("read_only_space", 0x02205): (117, "FixedArrayMap"),
  ("read_only_space", 0x02251): (8, "OneByteInternalizedStringMap"),
  ("read_only_space", 0x0229d): (168, "FreeSpaceMap"),
  ("read_only_space", 0x022c5): (167, "OnePointerFillerMap"),
  ("read_only_space", 0x022ed): (167, "TwoPointerFillerMap"),
  ("read_only_space", 0x02315): (67, "UninitializedMap"),
  ("read_only_space", 0x0238d): (67, "UndefinedMap"),
  ("read_only_space", 0x023d1): (66, "HeapNumberMap"),
  ("read_only_space", 0x02405): (67, "TheHoleMap"),
  ("read_only_space", 0x02465): (67, "BooleanMap"),
  ("read_only_space", 0x02509): (130, "ByteArrayMap"),
  ("read_only_space", 0x02531): (117, "FixedCOWArrayMap"),
  ("read_only_space", 0x02559): (118, "HashTableMap"),
  ("read_only_space", 0x02581): (64, "SymbolMap"),
  ("read_only_space", 0x025a9): (40, "OneByteStringMap"),
  ("read_only_space", 0x025d1): (134, "ScopeInfoMap"),
  ("read_only_space", 0x025f9): (176, "SharedFunctionInfoMap"),
  ("read_only_space", 0x02621): (161, "CodeMap"),
  ("read_only_space", 0x02649): (160, "CellMap"),
  ("read_only_space", 0x02671): (175, "GlobalPropertyCellMap"),
  ("read_only_space", 0x02699): (70, "ForeignMap"),
  ("read_only_space", 0x026c1): (159, "TransitionArrayMap"),
  ("read_only_space", 0x026e9): (45, "ThinOneByteStringMap"),
  ("read_only_space", 0x02711): (166, "FeedbackVectorMap"),
  ("read_only_space", 0x0274d): (67, "ArgumentsMarkerMap"),
  ("read_only_space", 0x027ad): (67, "ExceptionMap"),
  ("read_only_space", 0x02809): (67, "TerminationExceptionMap"),
  ("read_only_space", 0x02871): (67, "OptimizedOutMap"),
  ("read_only_space", 0x028d1): (67, "StaleRegisterMap"),
  ("read_only_space", 0x02931): (129, "ScriptContextTableMap"),
  ("read_only_space", 0x02959): (127, "ClosureFeedbackCellArrayMap"),
  ("read_only_space", 0x02981): (165, "FeedbackMetadataArrayMap"),
  ("read_only_space", 0x029a9): (117, "ArrayListMap"),
  ("read_only_space", 0x029d1): (65, "BigIntMap"),
  ("read_only_space", 0x029f9): (128, "ObjectBoilerplateDescriptionMap"),
  ("read_only_space", 0x02a21): (131, "BytecodeArrayMap"),
  ("read_only_space", 0x02a49): (162, "CodeDataContainerMap"),
  ("read_only_space", 0x02a71): (163, "CoverageInfoMap"),
  ("read_only_space", 0x02a99): (132, "FixedDoubleArrayMap"),
  ("read_only_space", 0x02ac1): (120, "GlobalDictionaryMap"),
  ("read_only_space", 0x02ae9): (98, "ManyClosuresCellMap"),
  ("read_only_space", 0x02b11): (117, "ModuleInfoMap"),
  ("read_only_space", 0x02b39): (121, "NameDictionaryMap"),
  ("read_only_space", 0x02b61): (98, "NoClosuresCellMap"),
  ("read_only_space", 0x02b89): (122, "NumberDictionaryMap"),
  ("read_only_space", 0x02bb1): (98, "OneClosureCellMap"),
  ("read_only_space", 0x02bd9): (123, "OrderedHashMapMap"),
  ("read_only_space", 0x02c01): (124, "OrderedHashSetMap"),
  ("read_only_space", 0x02c29): (125, "OrderedNameDictionaryMap"),
  ("read_only_space", 0x02c51): (173, "PreparseDataMap"),
  ("read_only_space", 0x02c79): (174, "PropertyArrayMap"),
  ("read_only_space", 0x02ca1): (94, "SideEffectCallHandlerInfoMap"),
  ("read_only_space", 0x02cc9): (94, "SideEffectFreeCallHandlerInfoMap"),
  ("read_only_space", 0x02cf1): (94, "NextCallSideEffectFreeCallHandlerInfoMap"),
  ("read_only_space", 0x02d19): (126, "SimpleNumberDictionaryMap"),
  ("read_only_space", 0x02d41): (149, "SmallOrderedHashMapMap"),
  ("read_only_space", 0x02d69): (150, "SmallOrderedHashSetMap"),
  ("read_only_space", 0x02d91): (151, "SmallOrderedNameDictionaryMap"),
  ("read_only_space", 0x02db9): (154, "SourceTextModuleMap"),
  ("read_only_space", 0x02de1): (180, "SwissNameDictionaryMap"),
  ("read_only_space", 0x02e09): (155, "SyntheticModuleMap"),
  ("read_only_space", 0x02e31): (71, "WasmTypeInfoMap"),
  ("read_only_space", 0x02e59): (184, "WeakArrayListMap"),
  ("read_only_space", 0x02e81): (119, "EphemeronHashTableMap"),
  ("read_only_space", 0x02ea9): (164, "EmbedderDataArrayMap"),
  ("read_only_space", 0x02ed1): (185, "WeakCellMap"),
  ("read_only_space", 0x02ef9): (32, "StringMap"),
  ("read_only_space", 0x02f21): (41, "ConsOneByteStringMap"),
  ("read_only_space", 0x02f49): (33, "ConsStringMap"),
  ("read_only_space", 0x02f71): (37, "ThinStringMap"),
  ("read_only_space", 0x02f99): (35, "SlicedStringMap"),
  ("read_only_space", 0x02fc1): (43, "SlicedOneByteStringMap"),
  ("read_only_space", 0x02fe9): (34, "ExternalStringMap"),
  ("read_only_space", 0x03011): (42, "ExternalOneByteStringMap"),
  ("read_only_space", 0x03039): (50, "UncachedExternalStringMap"),
  ("read_only_space", 0x03061): (0, "InternalizedStringMap"),
  ("read_only_space", 0x03089): (2, "ExternalInternalizedStringMap"),
  ("read_only_space", 0x030b1): (10, "ExternalOneByteInternalizedStringMap"),
  ("read_only_space", 0x030d9): (18, "UncachedExternalInternalizedStringMap"),
  ("read_only_space", 0x03101): (26, "UncachedExternalOneByteInternalizedStringMap"),
  ("read_only_space", 0x03129): (58, "UncachedExternalOneByteStringMap"),
  ("read_only_space", 0x03151): (67, "SelfReferenceMarkerMap"),
  ("read_only_space", 0x03179): (67, "BasicBlockCountersMarkerMap"),
  ("read_only_space", 0x031bd): (87, "ArrayBoilerplateDescriptionMap"),
  ("read_only_space", 0x032bd): (100, "InterceptorInfoMap"),
  ("read_only_space", 0x05411): (72, "PromiseFulfillReactionJobTaskMap"),
  ("read_only_space", 0x05439): (73, "PromiseRejectReactionJobTaskMap"),
  ("read_only_space", 0x05461): (74, "CallableTaskMap"),
  ("read_only_space", 0x05489): (75, "CallbackTaskMap"),
  ("read_only_space", 0x054b1): (76, "PromiseResolveThenableJobTaskMap"),
  ("read_only_space", 0x054d9): (79, "FunctionTemplateInfoMap"),
  ("read_only_space", 0x05501): (80, "ObjectTemplateInfoMap"),
  ("read_only_space", 0x05529): (81, "AccessCheckInfoMap"),
  ("read_only_space", 0x05551): (82, "AccessorInfoMap"),
  ("read_only_space", 0x05579): (83, "AccessorPairMap"),
  ("read_only_space", 0x055a1): (84, "AliasedArgumentsEntryMap"),
  ("read_only_space", 0x055c9): (85, "AllocationMementoMap"),
  ("read_only_space", 0x055f1): (88, "AsmWasmDataMap"),
  ("read_only_space", 0x05619): (89, "AsyncGeneratorRequestMap"),
  ("read_only_space", 0x05641): (90, "BaselineDataMap"),
  ("read_only_space", 0x05669): (91, "BreakPointMap"),
  ("read_only_space", 0x05691): (92, "BreakPointInfoMap"),
  ("read_only_space", 0x056b9): (93, "CachedTemplateObjectMap"),
  ("read_only_space", 0x056e1): (95, "ClassPositionsMap"),
  ("read_only_space", 0x05709): (96, "DebugInfoMap"),
  ("read_only_space", 0x05731): (99, "FunctionTemplateRareDataMap"),
  ("read_only_space", 0x05759): (101, "InterpreterDataMap"),
  ("read_only_space", 0x05781): (102, "ModuleRequestMap"),
  ("read_only_space", 0x057a9): (103, "PromiseCapabilityMap"),
  ("read_only_space", 0x057d1): (104, "PromiseReactionMap"),
  ("read_only_space", 0x057f9): (105, "PropertyDescriptorObjectMap"),
  ("read_only_space", 0x05821): (106, "PrototypeInfoMap"),
  ("read_only_space", 0x05849): (107, "RegExpBoilerplateDescriptionMap"),
  ("read_only_space", 0x05871): (108, "ScriptMap"),
  ("read_only_space", 0x05899): (109, "SourceTextModuleInfoEntryMap"),
  ("read_only_space", 0x058c1): (110, "StackFrameInfoMap"),
  ("read_only_space", 0x058e9): (111, "TemplateObjectDescriptionMap"),
  ("read_only_space", 0x05911): (112, "Tuple2Map"),
  ("read_only_space", 0x05939): (113, "WasmExceptionTagMap"),
  ("read_only_space", 0x05961): (114, "WasmExportedFunctionDataMap"),
  ("read_only_space", 0x05989): (115, "WasmIndirectFunctionTableMap"),
  ("read_only_space", 0x059b1): (116, "WasmJSFunctionDataMap"),
  ("read_only_space", 0x059d9): (135, "SloppyArgumentsElementsMap"),
  ("read_only_space", 0x05a01): (152, "DescriptorArrayMap"),
  ("read_only_space", 0x05a29): (157, "UncompiledDataWithoutPreparseDataMap"),
  ("read_only_space", 0x05a51): (156, "UncompiledDataWithPreparseDataMap"),
  ("read_only_space", 0x05a79): (172, "OnHeapBasicBlockProfilerDataMap"),
  ("read_only_space", 0x05aa1): (182, "WasmCapiFunctionDataMap"),
  ("read_only_space", 0x05ac9): (169, "InternalClassMap"),
  ("read_only_space", 0x05af1): (178, "SmiPairMap"),
  ("read_only_space", 0x05b19): (177, "SmiBoxMap"),
  ("read_only_space", 0x05b41): (146, "ExportedSubClassBaseMap"),
  ("read_only_space", 0x05b69): (147, "ExportedSubClassMap"),
  ("read_only_space", 0x05b91): (68, "AbstractInternalClassSubclass1Map"),
  ("read_only_space", 0x05bb9): (69, "AbstractInternalClassSubclass2Map"),
  ("read_only_space", 0x05be1): (133, "InternalClassWithSmiElementsMap"),
  ("read_only_space", 0x05c09): (170, "InternalClassWithStructElementsMap"),
  ("read_only_space", 0x05c31): (148, "ExportedSubClass2Map"),
  ("read_only_space", 0x05c59): (179, "SortStateMap"),
  ("read_only_space", 0x05c81): (86, "AllocationSiteWithWeakNextMap"),
  ("read_only_space", 0x05ca9): (86, "AllocationSiteWithoutWeakNextMap"),
  ("read_only_space", 0x05cd1): (77, "LoadHandler1Map"),
  ("read_only_space", 0x05cf9): (77, "LoadHandler2Map"),
  ("read_only_space", 0x05d21): (77, "LoadHandler3Map"),
  ("read_only_space", 0x05d49): (78, "StoreHandler0Map"),
  ("read_only_space", 0x05d71): (78, "StoreHandler1Map"),
  ("read_only_space", 0x05d99): (78, "StoreHandler2Map"),
  ("read_only_space", 0x05dc1): (78, "StoreHandler3Map"),
  ("map_space", 0x02119): (1057, "ExternalMap"),
  ("map_space", 0x02141): (1098, "JSMessageObjectMap"),
}

# List of known V8 objects.
KNOWN_OBJECTS = {
  ("read_only_space", 0x021b9): "EmptyWeakFixedArray",
  ("read_only_space", 0x021c1): "EmptyDescriptorArray",
  ("read_only_space", 0x021f9): "EmptyEnumCache",
  ("read_only_space", 0x0222d): "EmptyFixedArray",
  ("read_only_space", 0x02235): "NullValue",
  ("read_only_space", 0x0233d): "UninitializedValue",
  ("read_only_space", 0x023b5): "UndefinedValue",
  ("read_only_space", 0x023f9): "NanValue",
  ("read_only_space", 0x0242d): "TheHoleValue",
  ("read_only_space", 0x02459): "HoleNanValue",
  ("read_only_space", 0x0248d): "TrueValue",
  ("read_only_space", 0x024cd): "FalseValue",
  ("read_only_space", 0x024fd): "empty_string",
  ("read_only_space", 0x02739): "EmptyScopeInfo",
  ("read_only_space", 0x02775): "ArgumentsMarker",
  ("read_only_space", 0x027d5): "Exception",
  ("read_only_space", 0x02831): "TerminationException",
  ("read_only_space", 0x02899): "OptimizedOut",
  ("read_only_space", 0x028f9): "StaleRegister",
  ("read_only_space", 0x031a1): "EmptyPropertyArray",
  ("read_only_space", 0x031a9): "EmptyByteArray",
  ("read_only_space", 0x031b1): "EmptyObjectBoilerplateDescription",
  ("read_only_space", 0x031e5): "EmptyArrayBoilerplateDescription",
  ("read_only_space", 0x031f1): "EmptyClosureFeedbackCellArray",
  ("read_only_space", 0x031f9): "EmptySlowElementDictionary",
  ("read_only_space", 0x0321d): "EmptyOrderedHashMap",
  ("read_only_space", 0x03231): "EmptyOrderedHashSet",
  ("read_only_space", 0x03245): "EmptyFeedbackMetadata",
  ("read_only_space", 0x03251): "EmptyPropertyDictionary",
  ("read_only_space", 0x03279): "EmptyOrderedPropertyDictionary",
  ("read_only_space", 0x03291): "EmptySwissPropertyDictionary",
  ("read_only_space", 0x032e5): "NoOpInterceptorInfo",
  ("read_only_space", 0x0330d): "EmptyWeakArrayList",
  ("read_only_space", 0x03319): "InfinityValue",
  ("read_only_space", 0x03325): "MinusZeroValue",
  ("read_only_space", 0x03331): "MinusInfinityValue",
  ("read_only_space", 0x0333d): "SelfReferenceMarker",
  ("read_only_space", 0x0337d): "BasicBlockCountersMarker",
  ("read_only_space", 0x033c1): "OffHeapTrampolineRelocationInfo",
  ("read_only_space", 0x033cd): "TrampolineTrivialCodeDataContainer",
  ("read_only_space", 0x033d9): "TrampolinePromiseRejectionCodeDataContainer",
  ("read_only_space", 0x033e5): "GlobalThisBindingScopeInfo",
  ("read_only_space", 0x0341d): "EmptyFunctionScopeInfo",
  ("read_only_space", 0x03445): "NativeScopeInfo",
  ("read_only_space", 0x03461): "HashSeed",
  ("old_space", 0x02119): "ArgumentsIteratorAccessor",
  ("old_space", 0x0215d): "ArrayLengthAccessor",
  ("old_space", 0x021a1): "BoundFunctionLengthAccessor",
  ("old_space", 0x021e5): "BoundFunctionNameAccessor",
  ("old_space", 0x02229): "ErrorStackAccessor",
  ("old_space", 0x0226d): "FunctionArgumentsAccessor",
  ("old_space", 0x022b1): "FunctionCallerAccessor",
  ("old_space", 0x022f5): "FunctionNameAccessor",
  ("old_space", 0x02339): "FunctionLengthAccessor",
  ("old_space", 0x0237d): "FunctionPrototypeAccessor",
  ("old_space", 0x023c1): "StringLengthAccessor",
  ("old_space", 0x02405): "InvalidPrototypeValidityCell",
  ("old_space", 0x0240d): "EmptyScript",
  ("old_space", 0x0244d): "ManyClosuresCell",
  ("old_space", 0x02459): "ArrayConstructorProtector",
  ("old_space", 0x0246d): "NoElementsProtector",
  ("old_space", 0x02481): "IsConcatSpreadableProtector",
  ("old_space", 0x02495): "ArraySpeciesProtector",
  ("old_space", 0x024a9): "TypedArraySpeciesProtector",
  ("old_space", 0x024bd): "PromiseSpeciesProtector",
  ("old_space", 0x024d1): "RegExpSpeciesProtector",
  ("old_space", 0x024e5): "StringLengthProtector",
  ("old_space", 0x024f9): "ArrayIteratorProtector",
  ("old_space", 0x0250d): "ArrayBufferDetachingProtector",
  ("old_space", 0x02521): "PromiseHookProtector",
  ("old_space", 0x02535): "PromiseResolveProtector",
  ("old_space", 0x02549): "MapIteratorProtector",
  ("old_space", 0x0255d): "PromiseThenProtector",
  ("old_space", 0x02571): "SetIteratorProtector",
  ("old_space", 0x02585): "StringIteratorProtector",
  ("old_space", 0x02599): "SingleCharacterStringCache",
  ("old_space", 0x029a1): "StringSplitCache",
  ("old_space", 0x02da9): "RegExpMultipleCache",
  ("old_space", 0x031b1): "BuiltinsConstantsTable",
  ("old_space", 0x035b1): "AsyncFunctionAwaitRejectSharedFun",
  ("old_space", 0x035d5): "AsyncFunctionAwaitResolveSharedFun",
  ("old_space", 0x035f9): "AsyncGeneratorAwaitRejectSharedFun",
  ("old_space", 0x0361d): "AsyncGeneratorAwaitResolveSharedFun",
  ("old_space", 0x03641): "AsyncGeneratorYieldResolveSharedFun",
  ("old_space", 0x03665): "AsyncGeneratorReturnResolveSharedFun",
  ("old_space", 0x03689): "AsyncGeneratorReturnClosedRejectSharedFun",
  ("old_space", 0x036ad): "AsyncGeneratorReturnClosedResolveSharedFun",
  ("old_space", 0x036d1): "AsyncIteratorValueUnwrapSharedFun",
  ("old_space", 0x036f5): "PromiseAllResolveElementSharedFun",
  ("old_space", 0x03719): "PromiseAllSettledResolveElementSharedFun",
  ("old_space", 0x0373d): "PromiseAllSettledRejectElementSharedFun",
  ("old_space", 0x03761): "PromiseAnyRejectElementSharedFun",
  ("old_space", 0x03785): "PromiseCapabilityDefaultRejectSharedFun",
  ("old_space", 0x037a9): "PromiseCapabilityDefaultResolveSharedFun",
  ("old_space", 0x037cd): "PromiseCatchFinallySharedFun",
  ("old_space", 0x037f1): "PromiseGetCapabilitiesExecutorSharedFun",
  ("old_space", 0x03815): "PromiseThenFinallySharedFun",
  ("old_space", 0x03839): "PromiseThrowerFinallySharedFun",
  ("old_space", 0x0385d): "PromiseValueThunkFinallySharedFun",
  ("old_space", 0x03881): "ProxyRevokeSharedFun",
}

# Lower 32 bits of first page addresses for various heap spaces.
HEAP_FIRST_PAGES = {
  0x08100000: "old_space",
  0x08140000: "map_space",
  0x08040000: "read_only_space",
}

# List of known V8 Frame Markers.
FRAME_MARKERS = (
  "ENTRY",
  "CONSTRUCT_ENTRY",
  "EXIT",
  "WASM",
  "WASM_TO_JS",
  "JS_TO_WASM",
  "WASM_DEBUG_BREAK",
  "C_WASM_ENTRY",
  "WASM_EXIT",
  "WASM_COMPILE_LAZY",
  "INTERPRETED",
  "BASELINE",
  "OPTIMIZED",
  "STUB",
  "BUILTIN_CONTINUATION",
  "JAVA_SCRIPT_BUILTIN_CONTINUATION",
  "JAVA_SCRIPT_BUILTIN_CONTINUATION_WITH_CATCH",
  "INTERNAL",
  "CONSTRUCT",
  "BUILTIN",
  "BUILTIN_EXIT",
  "NATIVE",
)

# This set of constants is generated from a shipping build.