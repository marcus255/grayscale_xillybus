; ModuleID = 'C:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0/coprocess/example/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@debug_ready = common global i8 0, align 1        ; [#uses=0 type=i8*]
@debug_out = common global i8 0, align 1          ; [#uses=0 type=i8*]
@.str = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=2 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=9 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@str = internal constant [17 x i8] c"xillybus_wrapper\00" ; [#uses=1 type=[17 x i8]*]

; [#uses=0]
define void @xillybus_wrapper(i32* %in, i32* %out) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in) nounwind, !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out) nounwind, !map !38
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %in}, i64 0, metadata !42), !dbg !48 ; [debug line = 5:28] [debug variable = in]
  call void @llvm.dbg.value(metadata !{i32* %out}, i64 0, metadata !49), !dbg !50 ; [debug line = 5:37] [debug variable = out]
  call void (...)* @_ssdm_op_SpecInterface(i32* %in, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !51 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %out, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !53 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !54 ; [debug line = 8:1]
  %in.load = load i32* %in, align 4, !dbg !55     ; [#uses=3 type=i32] [debug line = 15:3]
  %in.load.cast5 = trunc i32 %in.load to i16, !dbg !55 ; [#uses=1 type=i16] [debug line = 15:3]
  %in.load.cast4 = trunc i32 %in.load to i24, !dbg !55 ; [#uses=1 type=i24] [debug line = 15:3]
  %b = trunc i32 %in.load to i8, !dbg !55         ; [#uses=1 type=i8] [debug line = 15:3]
  %tmp = lshr i24 %in.load.cast4, 16, !dbg !55    ; [#uses=1 type=i24] [debug line = 15:3]
  %r = trunc i24 %tmp to i8, !dbg !55             ; [#uses=1 type=i8] [debug line = 15:3]
  %r.cast = zext i8 %r to i10, !dbg !55           ; [#uses=1 type=i10] [debug line = 15:3]
  call void @llvm.dbg.value(metadata !{i8 %r}, i64 0, metadata !56), !dbg !55 ; [debug line = 15:3] [debug variable = r]
  %tmp.1 = lshr i16 %in.load.cast5, 8, !dbg !58   ; [#uses=1 type=i16] [debug line = 16:3]
  %g = trunc i16 %tmp.1 to i8, !dbg !58           ; [#uses=1 type=i8] [debug line = 16:3]
  %g.cast = zext i8 %g to i9, !dbg !58            ; [#uses=1 type=i9] [debug line = 16:3]
  call void @llvm.dbg.value(metadata !{i8 %g}, i64 0, metadata !59), !dbg !58 ; [debug line = 16:3] [debug variable = g]
  %b.cast = zext i8 %b to i9, !dbg !60            ; [#uses=1 type=i9] [debug line = 17:3]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !61), !dbg !60 ; [debug line = 17:3] [debug variable = b]
  %tmp1 = add i9 %b.cast, %g.cast, !dbg !62       ; [#uses=1 type=i9] [debug line = 29:3]
  %tmp1.cast = zext i9 %tmp1 to i10, !dbg !62     ; [#uses=1 type=i10] [debug line = 29:3]
  %tmp.3 = add i10 %tmp1.cast, %r.cast, !dbg !62  ; [#uses=1 type=i10] [debug line = 29:3]
  %y = udiv i10 %tmp.3, 3, !dbg !62               ; [#uses=1 type=i10] [debug line = 29:3]
  %y.cast = zext i10 %y to i32, !dbg !62          ; [#uses=1 type=i32] [debug line = 29:3]
  call void @llvm.dbg.value(metadata !{i10 %y}, i64 0, metadata !63), !dbg !62 ; [debug line = 29:3] [debug variable = y]
  store i32 %y.cast, i32* %out, align 4, !dbg !64 ; [debug line = 33:3]
  ret void, !dbg !65                              ; [debug line = 34:1]
}

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.map.gv = !{!0, !7}
!llvm.dbg.cu = !{!12}

!0 = metadata !{metadata !1, i8* @debug_ready}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 7, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"debug_ready", metadata !5, metadata !"char", i32 0, i32 7}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8, i8* @debug_out}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 7, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"debug_out", metadata !5, metadata !"char", i32 0, i32 7}
!12 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0/coprocess/example/.autopilot/db/xilly_debug.pragma.2.c", metadata !"c:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !13} ; [ DW_TAG_compile_unit ]
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !15, metadata !19, metadata !20}
!15 = metadata !{i32 786484, i32 0, null, metadata !"debug_out", metadata !"debug_out", metadata !"", metadata !16, i32 3, metadata !17, i32 0, i32 1, i8* @debug_out} ; [ DW_TAG_variable ]
!16 = metadata !{i32 786473, metadata !"coprocess/example/src/xilly_debug.c", metadata !"c:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_volatile_type ]
!18 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!19 = metadata !{i32 786484, i32 0, null, metadata !"debug_ready", metadata !"debug_ready", metadata !"", metadata !16, i32 4, metadata !17, i32 0, i32 1, i8* @debug_ready} ; [ DW_TAG_variable ]
!20 = metadata !{i32 786484, i32 0, metadata !21, metadata !"powers10", metadata !"powers10", metadata !"", metadata !16, i32 31, metadata !31, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786478, i32 0, metadata !16, metadata !"xilly_decprint", metadata !"xilly_decprint", metadata !"", metadata !16, i32 30, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !29, i32 30} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !24, metadata !27}
!24 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_const_type ]
!25 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !16, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ]
!26 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!27 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_const_type ]
!28 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!31 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 32, i32 0, i32 0, metadata !24, metadata !32, i32 0, i32 0} ; [ DW_TAG_array_type ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 31, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"in", metadata !5, metadata !"int", i32 0, i32 31}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 31, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"out", metadata !5, metadata !"int", i32 0, i32 31}
!42 = metadata !{i32 786689, metadata !43, metadata !"in", metadata !44, i32 16777221, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 786478, i32 0, metadata !44, metadata !"xillybus_wrapper", metadata !"xillybus_wrapper", metadata !"", metadata !44, i32 5, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*)* @xillybus_wrapper, null, null, metadata !29, i32 5} ; [ DW_TAG_subprogram ]
!44 = metadata !{i32 786473, metadata !"coprocess/example/src/main.c", metadata !"c:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0", null} ; [ DW_TAG_file_type ]
!45 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!46 = metadata !{null, metadata !47, metadata !47}
!47 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ]
!48 = metadata !{i32 5, i32 28, metadata !43, null}
!49 = metadata !{i32 786689, metadata !43, metadata !"out", metadata !44, i32 33554437, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 5, i32 37, metadata !43, null}
!51 = metadata !{i32 6, i32 1, metadata !52, null}
!52 = metadata !{i32 786443, metadata !43, i32 5, i32 42, metadata !44, i32 0} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 7, i32 1, metadata !52, null}
!54 = metadata !{i32 8, i32 1, metadata !52, null}
!55 = metadata !{i32 15, i32 3, metadata !52, null}
!56 = metadata !{i32 786688, metadata !52, metadata !"r", metadata !44, i32 10, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !44, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ]
!58 = metadata !{i32 16, i32 3, metadata !52, null}
!59 = metadata !{i32 786688, metadata !52, metadata !"g", metadata !44, i32 10, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 17, i32 3, metadata !52, null}
!61 = metadata !{i32 786688, metadata !52, metadata !"b", metadata !44, i32 10, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 29, i32 3, metadata !52, null}
!63 = metadata !{i32 786688, metadata !52, metadata !"y", metadata !44, i32 10, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 33, i32 3, metadata !52, null}
!65 = metadata !{i32 34, i32 1, metadata !52, null}
