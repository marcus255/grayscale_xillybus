; ModuleID = 'C:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0/coprocess/example/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@p_str = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@debug_ready = common global i8 0, align 1
@debug_out = common global i8 0, align 1
@str = internal constant [17 x i8] c"xillybus_wrapper\00"
@p_str3 = private unnamed_addr constant [17 x i7] [i7 -48, i7 -23, i7 -8, i7 -27, i7 -20, i7 -13, i7 32, i7 -23, i7 -18, i7 -29, i7 -17, i7 -19, i7 -23, i7 -18, i7 -25, i7 10, i7 0]

define void @xillybus_wrapper(i32* %in_r, i32* %out_r) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_r) nounwind, !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_r) nounwind, !map !16
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_r, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_r, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %p_0_rec_i = phi i5 [ 0, %0 ], [ %p_rec_i, %2 ]
  %p_0_rec_i_cast = zext i5 %p_0_rec_i to i32
  %p_str3_addr = getelementptr [17 x i7]* @p_str3, i32 0, i32 %p_0_rec_i_cast
  %p_str3_load = load i7* %p_str3_addr, align 1
  %p_str3_load_cast = zext i7 %p_str3_load to i8
  %tmp_i = icmp eq i5 %p_0_rec_i, -16
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %p_rec_i = add i5 %p_0_rec_i, 1
  br i1 %tmp_i, label %xilly_puts.exit, label %.preheader.i

.preheader.i:                                     ; preds = %1, %.preheader.i
  %debug_ready_load = load volatile i8* @debug_ready, align 1
  %tmp = trunc i8 %debug_ready_load to i1
  br i1 %tmp, label %2, label %.preheader.i

; <label>:2                                       ; preds = %.preheader.i
  store volatile i8 %p_str3_load_cast, i8* @debug_out, align 1
  br label %1

xilly_puts.exit:                                  ; preds = %1
  %in_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %in_r) nounwind
  %b = trunc i32 %in_read to i8
  %r = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %in_read, i32 16, i32 23)
  %r_cast = zext i8 %r to i10
  %g = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %in_read, i32 8, i32 15)
  %g_cast = zext i8 %g to i9
  %b_cast = zext i8 %b to i9
  %tmp1 = add i9 %b_cast, %g_cast
  %tmp1_cast = zext i9 %tmp1 to i10
  %tmp_3 = add i10 %tmp1_cast, %r_cast
  %zext_cast = zext i10 %tmp_3 to i22
  %mul = mul i22 %zext_cast, 1366
  %y = call i10 @_ssdm_op_PartSelect.i10.i22.i32.i32(i22 %mul, i32 12, i32 21)
  %y_cast = zext i10 %y to i32
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %out_r, i32 %y_cast) nounwind
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_7 = trunc i32 %empty to i8
  ret i8 %empty_7
}

define weak i32 @_ssdm_op_Read.ap_fifo.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak void @_ssdm_op_Write.ap_fifo.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak i10 @_ssdm_op_PartSelect.i10.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_8 = trunc i22 %empty to i10
  ret i10 %empty_8
}

declare i32 @_autotb_FifoRead_i32(i32*)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

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
