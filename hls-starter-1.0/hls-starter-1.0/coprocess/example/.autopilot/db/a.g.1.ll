; ModuleID = 'C:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0/coprocess/example/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@.str = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str3 = private unnamed_addr constant [17 x i8] c"Pixels incoming\0A\00", align 1 ; [#uses=1 type=[17 x i8]*]
@debug_ready = common global i8 0, align 1        ; [#uses=1 type=i8*]
@debug_out = common global i8 0, align 1          ; [#uses=1 type=i8*]
@str = internal constant [17 x i8] c"xillybus_wrapper\00" ; [#uses=1 type=[17 x i8]*]

; [#uses=0]
define void @xillybus_wrapper(i32* %in, i32* %out) nounwind {
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %in}, i64 0, metadata !40), !dbg !41 ; [debug line = 5:28] [debug variable = in]
  call void @llvm.dbg.value(metadata !{i32* %out}, i64 0, metadata !42), !dbg !43 ; [debug line = 5:37] [debug variable = out]
  call void (...)* @_ssdm_op_SpecInterface(i32* %in, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !44 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %out, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !46 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !47 ; [debug line = 8:1]
  call fastcc void @xilly_puts(), !dbg !48        ; [debug line = 12:3]
  %in.load = load i32* %in, align 4, !dbg !49     ; [#uses=3 type=i32] [debug line = 15:3]
  %tmp = lshr i32 %in.load, 16, !dbg !49          ; [#uses=1 type=i32] [debug line = 15:3]
  %r = and i32 %tmp, 255, !dbg !49                ; [#uses=1 type=i32] [debug line = 15:3]
  call void @llvm.dbg.value(metadata !{i32 %r}, i64 0, metadata !50), !dbg !49 ; [debug line = 15:3] [debug variable = r]
  %tmp.1 = lshr i32 %in.load, 8, !dbg !52         ; [#uses=1 type=i32] [debug line = 16:3]
  %g = and i32 %tmp.1, 255, !dbg !52              ; [#uses=1 type=i32] [debug line = 16:3]
  call void @llvm.dbg.value(metadata !{i32 %g}, i64 0, metadata !53), !dbg !52 ; [debug line = 16:3] [debug variable = g]
  %b = and i32 %in.load, 255, !dbg !54            ; [#uses=1 type=i32] [debug line = 17:3]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !55), !dbg !54 ; [debug line = 17:3] [debug variable = b]
  %tmp.2 = add i32 %r, %b, !dbg !56               ; [#uses=1 type=i32] [debug line = 29:3]
  %tmp.3 = add i32 %tmp.2, %g, !dbg !56           ; [#uses=1 type=i32] [debug line = 29:3]
  %y = udiv i32 %tmp.3, 3, !dbg !56               ; [#uses=1 type=i32] [debug line = 29:3]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !57), !dbg !56 ; [debug line = 29:3] [debug variable = y]
  store i32 %y, i32* %out, align 4, !dbg !58      ; [debug line = 33:3]
  ret void, !dbg !59                              ; [debug line = 34:1]
}

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
define internal fastcc void @xilly_puts() nounwind {
  br label %1, !dbg !60                           ; [debug line = 7:3]

; <label>:1                                       ; preds = %3, %0
  %.0.rec = phi i32 [ 0, %0 ], [ %.rec, %3 ]      ; [#uses=2 type=i32]
  %.addr = getelementptr i8* getelementptr inbounds ([17 x i8]* @.str3, i32 0, i32 0), i32 %.0.rec ; [#uses=1 type=i8*]
  %2 = load i8* %.addr, align 1, !dbg !60         ; [#uses=2 type=i8] [debug line = 7:3]
  %tmp = icmp eq i8 %2, 0, !dbg !60               ; [#uses=1 type=i1] [debug line = 7:3]
  br i1 %tmp, label %4, label %.preheader.preheader, !dbg !60 ; [debug line = 7:3]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !62                  ; [debug line = 8:5]

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %debug_ready.load = load volatile i8* @debug_ready, align 1, !dbg !62 ; [#uses=1 type=i8] [debug line = 8:5]
  %tmp.4 = and i8 %debug_ready.load, 1, !dbg !62  ; [#uses=1 type=i8] [debug line = 8:5]
  %tmp.5 = icmp eq i8 %tmp.4, 0, !dbg !62         ; [#uses=1 type=i1] [debug line = 8:5]
  br i1 %tmp.5, label %.preheader, label %3, !dbg !62 ; [debug line = 8:5]

; <label>:3                                       ; preds = %.preheader
  %.rec = add i32 %.0.rec, 1, !dbg !64            ; [#uses=1 type=i32] [debug line = 9:5]
  store volatile i8 %2, i8* @debug_out, align 1, !dbg !64 ; [debug line = 9:5]
  br label %1, !dbg !65                           ; [debug line = 10:3]

; <label>:4                                       ; preds = %1
  ret void, !dbg !66                              ; [debug line = 11:1]
}

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

!llvm.dbg.cu = !{!0, !13}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0/coprocess/example/.autopilot/db/main.pragma.2.c", metadata !"c:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"xillybus_wrapper", metadata !"xillybus_wrapper", metadata !"", metadata !6, i32 5, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*)* @xillybus_wrapper, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"coprocess/example/src/main.c", metadata !"c:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0/coprocess/example/.autopilot/db/xilly_debug.pragma.2.c", metadata !"c:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !14, metadata !31} ; [ DW_TAG_compile_unit ]
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !16, metadata !23, metadata !30}
!16 = metadata !{i32 786478, i32 0, metadata !17, metadata !"xilly_puts", metadata !"xilly_puts", metadata !"", metadata !17, i32 6, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 6} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786473, metadata !"coprocess/example/src/xilly_debug.c", metadata !"c:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0", null} ; [ DW_TAG_file_type ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !20}
!20 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ]
!21 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_const_type ]
!22 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!23 = metadata !{i32 786478, i32 0, metadata !17, metadata !"xilly_hexprint", metadata !"xilly_hexprint", metadata !"", metadata !17, i32 13, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 13} ; [ DW_TAG_subprogram ]
!24 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{null, metadata !26, metadata !29}
!26 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_const_type ]
!27 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !17, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ]
!28 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!29 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!30 = metadata !{i32 786478, i32 0, metadata !17, metadata !"xilly_decprint", metadata !"xilly_decprint", metadata !"", metadata !17, i32 30, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 30} ; [ DW_TAG_subprogram ]
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !33, metadata !37, metadata !39}
!33 = metadata !{i32 786484, i32 0, metadata !30, metadata !"powers10", metadata !"powers10", metadata !"", metadata !17, i32 31, metadata !34, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 32, i32 0, i32 0, metadata !26, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!37 = metadata !{i32 786484, i32 0, null, metadata !"debug_out", metadata !"debug_out", metadata !"", metadata !17, i32 3, metadata !38, i32 0, i32 1, i8* @debug_out} ; [ DW_TAG_variable ]
!38 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_volatile_type ]
!39 = metadata !{i32 786484, i32 0, null, metadata !"debug_ready", metadata !"debug_ready", metadata !"", metadata !17, i32 4, metadata !38, i32 0, i32 1, i8* @debug_ready} ; [ DW_TAG_variable ]
!40 = metadata !{i32 786689, metadata !5, metadata !"in", metadata !6, i32 16777221, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 5, i32 28, metadata !5, null}
!42 = metadata !{i32 786689, metadata !5, metadata !"out", metadata !6, i32 33554437, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 5, i32 37, metadata !5, null}
!44 = metadata !{i32 6, i32 1, metadata !45, null}
!45 = metadata !{i32 786443, metadata !5, i32 5, i32 42, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 7, i32 1, metadata !45, null}
!47 = metadata !{i32 8, i32 1, metadata !45, null}
!48 = metadata !{i32 12, i32 3, metadata !45, null}
!49 = metadata !{i32 15, i32 3, metadata !45, null}
!50 = metadata !{i32 786688, metadata !45, metadata !"r", metadata !6, i32 10, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !6, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ]
!52 = metadata !{i32 16, i32 3, metadata !45, null}
!53 = metadata !{i32 786688, metadata !45, metadata !"g", metadata !6, i32 10, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 17, i32 3, metadata !45, null}
!55 = metadata !{i32 786688, metadata !45, metadata !"b", metadata !6, i32 10, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!56 = metadata !{i32 29, i32 3, metadata !45, null}
!57 = metadata !{i32 786688, metadata !45, metadata !"y", metadata !6, i32 10, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 33, i32 3, metadata !45, null}
!59 = metadata !{i32 34, i32 1, metadata !45, null}
!60 = metadata !{i32 7, i32 3, metadata !61, null}
!61 = metadata !{i32 786443, metadata !16, i32 6, i32 34, metadata !17, i32 0} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 8, i32 5, metadata !63, null}
!63 = metadata !{i32 786443, metadata !61, i32 7, i32 16, metadata !17, i32 1} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 9, i32 5, metadata !63, null}
!65 = metadata !{i32 10, i32 3, metadata !63, null}
!66 = metadata !{i32 11, i32 1, metadata !61, null}
