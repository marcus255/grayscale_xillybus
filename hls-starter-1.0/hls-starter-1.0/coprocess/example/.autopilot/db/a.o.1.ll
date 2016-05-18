; ModuleID = 'C:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0/coprocess/example/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@debug_ready = common global i8 0, align 1        ; [#uses=0 type=i8*]
@debug_out = common global i8 0, align 1          ; [#uses=0 type=i8*]
@.str = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@str = internal constant [17 x i8] c"xillybus_wrapper\00" ; [#uses=1 type=[17 x i8]*]

; [#uses=0]
define void @xillybus_wrapper(i32* %in, i32* %out) nounwind {
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %in}, i64 0, metadata !40), !dbg !41 ; [debug line = 5:28] [debug variable = in]
  call void @llvm.dbg.value(metadata !{i32* %out}, i64 0, metadata !42), !dbg !43 ; [debug line = 5:37] [debug variable = out]
  call void (...)* @_ssdm_op_SpecInterface(i32* %in, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !44 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %out, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !46 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !47 ; [debug line = 8:1]
  %in.load = load i32* %in, align 4, !dbg !48     ; [#uses=3 type=i32] [debug line = 15:3]
  %tmp = lshr i32 %in.load, 16, !dbg !48          ; [#uses=1 type=i32] [debug line = 15:3]
  %r = and i32 %tmp, 255, !dbg !48                ; [#uses=1 type=i32] [debug line = 15:3]
  call void @llvm.dbg.value(metadata !{i32 %r}, i64 0, metadata !49), !dbg !48 ; [debug line = 15:3] [debug variable = r]
  %tmp.1 = lshr i32 %in.load, 8, !dbg !51         ; [#uses=1 type=i32] [debug line = 16:3]
  %g = and i32 %tmp.1, 255, !dbg !51              ; [#uses=1 type=i32] [debug line = 16:3]
  call void @llvm.dbg.value(metadata !{i32 %g}, i64 0, metadata !52), !dbg !51 ; [debug line = 16:3] [debug variable = g]
  %b = and i32 %in.load, 255, !dbg !53            ; [#uses=1 type=i32] [debug line = 17:3]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !54), !dbg !53 ; [debug line = 17:3] [debug variable = b]
  %tmp.2 = add i32 %r, %b, !dbg !55               ; [#uses=1 type=i32] [debug line = 29:3]
  %tmp.3 = add i32 %tmp.2, %g, !dbg !55           ; [#uses=1 type=i32] [debug line = 29:3]
  %y = udiv i32 %tmp.3, 3, !dbg !55               ; [#uses=1 type=i32] [debug line = 29:3]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !56), !dbg !55 ; [debug line = 29:3] [debug variable = y]
  store i32 %y, i32* %out, align 4, !dbg !57      ; [debug line = 33:3]
  ret void, !dbg !58                              ; [debug line = 34:1]
}

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

!llvm.dbg.cu = !{!0, !32}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0/coprocess/example/.autopilot/db/xilly_debug.pragma.2.c", metadata !"c:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !23} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !14, metadata !22}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"xilly_puts", metadata !"xilly_puts", metadata !"", metadata !6, i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 6} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"coprocess/example/src/xilly_debug.c", metadata !"c:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ]
!11 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{i32 786478, i32 0, metadata !6, metadata !"xilly_hexprint", metadata !"xilly_hexprint", metadata !"", metadata !6, i32 13, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 13} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{null, metadata !17, metadata !20}
!17 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_const_type ]
!18 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !6, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!19 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!20 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_const_type ]
!21 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786478, i32 0, metadata !6, metadata !"xilly_decprint", metadata !"xilly_decprint", metadata !"", metadata !6, i32 30, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 30} ; [ DW_TAG_subprogram ]
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !25, metadata !29, metadata !31}
!25 = metadata !{i32 786484, i32 0, metadata !22, metadata !"powers10", metadata !"powers10", metadata !"", metadata !6, i32 31, metadata !26, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 32, i32 0, i32 0, metadata !17, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!29 = metadata !{i32 786484, i32 0, null, metadata !"debug_out", metadata !"debug_out", metadata !"", metadata !6, i32 3, metadata !30, i32 0, i32 1, i8* @debug_out} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_volatile_type ]
!31 = metadata !{i32 786484, i32 0, null, metadata !"debug_ready", metadata !"debug_ready", metadata !"", metadata !6, i32 4, metadata !30, i32 0, i32 1, i8* @debug_ready} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0/coprocess/example/.autopilot/db/main.pragma.2.c", metadata !"c:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !33, metadata !1} ; [ DW_TAG_compile_unit ]
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786478, i32 0, metadata !36, metadata !"xillybus_wrapper", metadata !"xillybus_wrapper", metadata !"", metadata !36, i32 5, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*)* @xillybus_wrapper, null, null, metadata !12, i32 5} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786473, metadata !"coprocess/example/src/main.c", metadata !"c:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0", null} ; [ DW_TAG_file_type ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{null, metadata !39, metadata !39}
!39 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ]
!40 = metadata !{i32 786689, metadata !35, metadata !"in", metadata !36, i32 16777221, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 5, i32 28, metadata !35, null}
!42 = metadata !{i32 786689, metadata !35, metadata !"out", metadata !36, i32 33554437, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 5, i32 37, metadata !35, null}
!44 = metadata !{i32 6, i32 1, metadata !45, null}
!45 = metadata !{i32 786443, metadata !35, i32 5, i32 42, metadata !36, i32 0} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 7, i32 1, metadata !45, null}
!47 = metadata !{i32 8, i32 1, metadata !45, null}
!48 = metadata !{i32 15, i32 3, metadata !45, null}
!49 = metadata !{i32 786688, metadata !45, metadata !"r", metadata !36, i32 10, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !36, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!51 = metadata !{i32 16, i32 3, metadata !45, null}
!52 = metadata !{i32 786688, metadata !45, metadata !"g", metadata !36, i32 10, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 17, i32 3, metadata !45, null}
!54 = metadata !{i32 786688, metadata !45, metadata !"b", metadata !36, i32 10, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 29, i32 3, metadata !45, null}
!56 = metadata !{i32 786688, metadata !45, metadata !"y", metadata !36, i32 10, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 33, i32 3, metadata !45, null}
!58 = metadata !{i32 34, i32 1, metadata !45, null}
