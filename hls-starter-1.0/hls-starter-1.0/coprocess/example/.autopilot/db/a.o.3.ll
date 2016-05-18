; ModuleID = 'C:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0/coprocess/example/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@p_str = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=2 type=[8 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=9 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@debug_ready = common global i8 0, align 1        ; [#uses=1 type=i8*]
@debug_out = common global i8 0, align 1          ; [#uses=1 type=i8*]
@str = internal constant [17 x i8] c"xillybus_wrapper\00" ; [#uses=1 type=[17 x i8]*]
@p_str3 = private unnamed_addr constant [17 x i7] [i7 -48, i7 -23, i7 -8, i7 -27, i7 -20, i7 -13, i7 32, i7 -23, i7 -18, i7 -29, i7 -17, i7 -19, i7 -23, i7 -18, i7 -25, i7 10, i7 0] ; [#uses=1 type=[17 x i7]*]

; [#uses=0]
define void @xillybus_wrapper(i32* %in, i32* %out) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in) nounwind, !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out) nounwind, !map !16
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %in}, i64 0, metadata !20), !dbg !29 ; [debug line = 5:28] [debug variable = in]
  call void @llvm.dbg.value(metadata !{i32* %out}, i64 0, metadata !30), !dbg !31 ; [debug line = 5:37] [debug variable = out]
  call void (...)* @_ssdm_op_SpecInterface(i32* %in, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !32 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %out, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !34 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !35 ; [debug line = 8:1]
  br label %1, !dbg !36                           ; [debug line = 7:3@12:3]

; <label>:1                                       ; preds = %2, %0
  %p_0_rec_i = phi i5 [ 0, %0 ], [ %p_rec_i, %2 ] ; [#uses=3 type=i5]
  %p_0_rec_i_cast = zext i5 %p_0_rec_i to i32     ; [#uses=1 type=i32]
  %p_str3_addr = getelementptr [17 x i7]* @p_str3, i32 0, i32 %p_0_rec_i_cast ; [#uses=1 type=i7*]
  %p_str3_load = load i7* %p_str3_addr, align 1, !dbg !36 ; [#uses=1 type=i7] [debug line = 7:3@12:3]
  %p_str3_load_cast = zext i7 %p_str3_load to i8, !dbg !36 ; [#uses=1 type=i8] [debug line = 7:3@12:3]
  %tmp_i = icmp eq i5 %p_0_rec_i, -16, !dbg !36   ; [#uses=1 type=i1] [debug line = 7:3@12:3]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  %p_rec_i = add i5 %p_0_rec_i, 1, !dbg !46       ; [#uses=1 type=i5] [debug line = 9:5@12:3]
  br i1 %tmp_i, label %xilly_puts.exit, label %.preheader.i, !dbg !36 ; [debug line = 7:3@12:3]

.preheader.i:                                     ; preds = %.preheader.i, %1
  %debug_ready_load = load volatile i8* @debug_ready, align 1, !dbg !48 ; [#uses=1 type=i8] [debug line = 8:5@12:3]
  %tmp = trunc i8 %debug_ready_load to i1, !dbg !48 ; [#uses=1 type=i1] [debug line = 8:5@12:3]
  br i1 %tmp, label %2, label %.preheader.i, !dbg !48 ; [debug line = 8:5@12:3]

; <label>:2                                       ; preds = %.preheader.i
  store volatile i8 %p_str3_load_cast, i8* @debug_out, align 1, !dbg !46 ; [debug line = 9:5@12:3]
  br label %1, !dbg !49                           ; [debug line = 10:3@12:3]

xilly_puts.exit:                                  ; preds = %1
  %in_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %in) nounwind, !dbg !50 ; [#uses=3 type=i32] [debug line = 15:3]
  %b = trunc i32 %in_read to i8, !dbg !50         ; [#uses=1 type=i8] [debug line = 15:3]
  %r = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %in_read, i32 16, i32 23), !dbg !50 ; [#uses=1 type=i8] [debug line = 15:3]
  %r_cast = zext i8 %r to i10, !dbg !50           ; [#uses=1 type=i10] [debug line = 15:3]
  call void @llvm.dbg.value(metadata !{i8 %r}, i64 0, metadata !51), !dbg !50 ; [debug line = 15:3] [debug variable = r]
  %g = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %in_read, i32 8, i32 15), !dbg !54 ; [#uses=1 type=i8] [debug line = 16:3]
  %g_cast = zext i8 %g to i9, !dbg !54            ; [#uses=1 type=i9] [debug line = 16:3]
  call void @llvm.dbg.value(metadata !{i8 %g}, i64 0, metadata !55), !dbg !54 ; [debug line = 16:3] [debug variable = g]
  %b_cast = zext i8 %b to i9, !dbg !56            ; [#uses=1 type=i9] [debug line = 17:3]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !57), !dbg !56 ; [debug line = 17:3] [debug variable = b]
  %tmp1 = add i9 %b_cast, %g_cast, !dbg !58       ; [#uses=1 type=i9] [debug line = 29:3]
  %tmp1_cast = zext i9 %tmp1 to i10, !dbg !58     ; [#uses=1 type=i10] [debug line = 29:3]
  %tmp_3 = add i10 %tmp1_cast, %r_cast, !dbg !58  ; [#uses=1 type=i10] [debug line = 29:3]
  %zext_cast = zext i10 %tmp_3 to i22, !dbg !58   ; [#uses=1 type=i22] [debug line = 29:3]
  %mul = mul i22 %zext_cast, 1366, !dbg !58       ; [#uses=1 type=i22] [debug line = 29:3]
  %y = call i10 @_ssdm_op_PartSelect.i10.i22.i32.i32(i22 %mul, i32 12, i32 21), !dbg !58 ; [#uses=1 type=i10] [debug line = 29:3]
  %y_cast = zext i10 %y to i32, !dbg !58          ; [#uses=1 type=i32] [debug line = 29:3]
  call void @llvm.dbg.value(metadata !{i10 %y}, i64 0, metadata !59), !dbg !58 ; [debug line = 29:3] [debug variable = y]
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %out, i32 %y_cast) nounwind, !dbg !60 ; [debug line = 33:3]
  ret void, !dbg !61                              ; [debug line = 34:1]
}

; [#uses=3]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_7 = trunc i32 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_7
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_fifo.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0) ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_fifo.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1) ; [#uses=0 type=i32]
  ret void
}

; [#uses=1]
define weak i10 @_ssdm_op_PartSelect.i10.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2) ; [#uses=1 type=i22]
  %empty_8 = trunc i22 %empty to i10              ; [#uses=1 type=i10]
  ret i10 %empty_8
}

; [#uses=1]
declare i32 @_autotb_FifoRead_i32(i32*)

; [#uses=1]
declare i32 @_autotb_FifoWrite_i32(i32*, i32)

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

!llvm.map.gv = !{!0, !7}

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
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 31, metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !"in", metadata !5, metadata !"int", i32 0, i32 31}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 31, metadata !18}
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !"out", metadata !5, metadata !"int", i32 0, i32 31}
!20 = metadata !{i32 786689, metadata !21, metadata !"in", metadata !22, i32 16777221, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!21 = metadata !{i32 786478, i32 0, metadata !22, metadata !"xillybus_wrapper", metadata !"xillybus_wrapper", metadata !"", metadata !22, i32 5, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*)* @xillybus_wrapper, null, null, metadata !27, i32 5} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786473, metadata !"coprocess/example/src/main.c", metadata !"c:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0", null} ; [ DW_TAG_file_type ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{null, metadata !25, metadata !25}
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ]
!26 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!29 = metadata !{i32 5, i32 28, metadata !21, null}
!30 = metadata !{i32 786689, metadata !21, metadata !"out", metadata !22, i32 33554437, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 5, i32 37, metadata !21, null}
!32 = metadata !{i32 6, i32 1, metadata !33, null}
!33 = metadata !{i32 786443, metadata !21, i32 5, i32 42, metadata !22, i32 0} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 7, i32 1, metadata !33, null}
!35 = metadata !{i32 8, i32 1, metadata !33, null}
!36 = metadata !{i32 7, i32 3, metadata !37, metadata !45}
!37 = metadata !{i32 786443, metadata !38, i32 6, i32 34, metadata !39, i32 0} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 786478, i32 0, metadata !39, metadata !"xilly_puts", metadata !"xilly_puts", metadata !"", metadata !39, i32 6, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 6} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 786473, metadata !"coprocess/example/src/xilly_debug.c", metadata !"c:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0", null} ; [ DW_TAG_file_type ]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{null, metadata !42}
!42 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ]
!43 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_const_type ]
!44 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!45 = metadata !{i32 12, i32 3, metadata !33, null}
!46 = metadata !{i32 9, i32 5, metadata !47, metadata !45}
!47 = metadata !{i32 786443, metadata !37, i32 7, i32 16, metadata !39, i32 1} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 8, i32 5, metadata !47, metadata !45}
!49 = metadata !{i32 10, i32 3, metadata !47, metadata !45}
!50 = metadata !{i32 15, i32 3, metadata !33, null}
!51 = metadata !{i32 786688, metadata !33, metadata !"r", metadata !22, i32 10, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!52 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !22, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ]
!53 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!54 = metadata !{i32 16, i32 3, metadata !33, null}
!55 = metadata !{i32 786688, metadata !33, metadata !"g", metadata !22, i32 10, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!56 = metadata !{i32 17, i32 3, metadata !33, null}
!57 = metadata !{i32 786688, metadata !33, metadata !"b", metadata !22, i32 10, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 29, i32 3, metadata !33, null}
!59 = metadata !{i32 786688, metadata !33, metadata !"y", metadata !22, i32 10, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 33, i32 3, metadata !33, null}
!61 = metadata !{i32 34, i32 1, metadata !33, null}
