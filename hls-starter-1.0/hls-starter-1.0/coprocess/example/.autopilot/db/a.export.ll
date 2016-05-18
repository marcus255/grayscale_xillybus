; ModuleID = 'C:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0/coprocess/example/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@p_str = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str5 = private unnamed_addr constant [4 x i8] c" g=\00", align 1
@p_str6 = private unnamed_addr constant [4 x i8] c" b=\00", align 1
@debug_ready = common global i8 0, align 1
@debug_out = common global i8 0, align 1
@str = internal constant [17 x i8] c"xillybus_wrapper\00"
@p_str3 = private unnamed_addr constant [16 x i7] [i7 -48, i7 -23, i7 -8, i7 -27, i7 -20, i7 32, i7 -23, i7 -18, i7 -29, i7 -17, i7 -19, i7 -23, i7 -18, i7 -25, i7 10, i7 0]
@p_str4 = private unnamed_addr constant [3 x i7] [i7 -14, i7 61, i7 0]
@p_str7 = private unnamed_addr constant [2 x i4] [i4 -6, i4 0]
@powers10_old = internal unnamed_addr constant [10 x i29] [i29 -73741824, i29 100000000, i29 10000000, i29 1000000, i29 100000, i29 10000, i29 1000, i29 100, i29 10, i29 1]
@powers10 = internal constant [10 x i28] [i28 -73741824, i28 100000000, i28 10000000, i28 1000000, i28 100000, i28 10000, i28 1000, i28 100, i28 10, i28 1]

define void @xillybus_wrapper(i32* %in_r, i32* %out_r) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_r) nounwind, !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_r) nounwind, !map !16
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_r, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_r, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %p_0_rec_i = phi i4 [ 0, %0 ], [ %p_rec_i, %2 ]
  %p_0_rec_i_cast = zext i4 %p_0_rec_i to i32
  %p_str3_addr = getelementptr [16 x i7]* @p_str3, i32 0, i32 %p_0_rec_i_cast
  %p_str3_load = load i7* %p_str3_addr, align 1
  %p_str3_load_cast = zext i7 %p_str3_load to i8
  %tmp_i = icmp eq i4 %p_0_rec_i, -1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 15, i64 15, i64 15) nounwind
  %p_rec_i = add i4 %p_0_rec_i, 1
  br i1 %tmp_i, label %xilly_puts.3.exit, label %.preheader.i

.preheader.i:                                     ; preds = %1, %.preheader.i
  %debug_ready_load = load volatile i8* @debug_ready, align 1
  %tmp = trunc i8 %debug_ready_load to i1
  br i1 %tmp, label %2, label %.preheader.i

; <label>:2                                       ; preds = %.preheader.i
  store volatile i8 %p_str3_load_cast, i8* @debug_out, align 1
  br label %1

xilly_puts.3.exit:                                ; preds = %1
  %in_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %in_r) nounwind
  %b = trunc i32 %in_read to i8
  %r = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %in_read, i32 16, i32 23)
  %r_cast6 = zext i8 %r to i10
  %g = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %in_read, i32 8, i32 15)
  %g_cast5 = zext i8 %g to i9
  %b_cast4 = zext i8 %b to i9
  br label %3

; <label>:3                                       ; preds = %4, %xilly_puts.3.exit
  %p_0_rec_i1 = phi i2 [ 0, %xilly_puts.3.exit ], [ %p_rec_i7, %4 ]
  %p_0_rec_i1_cast = zext i2 %p_0_rec_i1 to i32
  %p_str4_addr = getelementptr [3 x i7]* @p_str4, i32 0, i32 %p_0_rec_i1_cast
  %p_str4_load = load i7* %p_str4_addr, align 1
  %p_str4_load_cast = zext i7 %p_str4_load to i8
  %tmp_i2 = icmp eq i2 %p_0_rec_i1, -2
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %p_rec_i7 = add i2 %p_0_rec_i1, 1
  br i1 %tmp_i2, label %xilly_puts.2.exit, label %.preheader.i6

.preheader.i6:                                    ; preds = %3, %.preheader.i6
  %debug_ready_load_1 = load volatile i8* @debug_ready, align 1
  %tmp_1 = trunc i8 %debug_ready_load_1 to i1
  br i1 %tmp_1, label %4, label %.preheader.i6

; <label>:4                                       ; preds = %.preheader.i6
  store volatile i8 %p_str4_load_cast, i8* @debug_out, align 1
  br label %3

xilly_puts.2.exit:                                ; preds = %3
  call fastcc void @xillybus_wrapper_xilly_decprint(i8 %r) nounwind
  call fastcc void @xillybus_wrapper_xilly_puts.1([4 x i8]* @p_str5) nounwind
  call fastcc void @xillybus_wrapper_xilly_decprint(i8 %g) nounwind
  call fastcc void @xillybus_wrapper_xilly_puts.1([4 x i8]* @p_str6) nounwind
  call fastcc void @xillybus_wrapper_xilly_decprint(i8 %b) nounwind
  br label %5

; <label>:5                                       ; preds = %6, %xilly_puts.2.exit
  %p_0_rec_i8 = phi i1 [ false, %xilly_puts.2.exit ], [ true, %6 ]
  %p_0_rec_i8_cast = zext i1 %p_0_rec_i8 to i32
  %p_str7_addr = getelementptr [2 x i4]* @p_str7, i32 0, i32 %p_0_rec_i8_cast
  %p_str7_load = load i4* %p_str7_addr, align 1
  %p_str7_load_cast = zext i4 %p_str7_load to i8
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1) nounwind
  br i1 %p_0_rec_i8, label %xilly_puts.exit, label %.preheader.i13

.preheader.i13:                                   ; preds = %5, %.preheader.i13
  %debug_ready_load_2 = load volatile i8* @debug_ready, align 1
  %tmp_2 = trunc i8 %debug_ready_load_2 to i1
  br i1 %tmp_2, label %6, label %.preheader.i13

; <label>:6                                       ; preds = %.preheader.i13
  store volatile i8 %p_str7_load_cast, i8* @debug_out, align 1
  br label %5

xilly_puts.exit:                                  ; preds = %5
  %tmp1 = add i9 %b_cast4, %g_cast5
  %tmp1_cast = zext i9 %tmp1 to i10
  %tmp_3 = add i10 %tmp1_cast, %r_cast6
  %zext_cast = zext i10 %tmp_3 to i22
  %mul = mul i22 %zext_cast, 1366
  %y = call i10 @_ssdm_op_PartSelect.i10.i22.i32.i32(i22 %mul, i32 12, i32 21)
  %y_cast = zext i10 %y to i32
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %out_r, i32 %y_cast) nounwind
  ret void
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define internal fastcc void @xillybus_wrapper_xilly_puts.1([4 x i8]* nocapture %str) {
  br label %1

; <label>:1                                       ; preds = %2, %0
  %p_0_rec = phi i32 [ 0, %0 ], [ %p_rec, %2 ]
  %str_addr = getelementptr [4 x i8]* %str, i32 0, i32 %p_0_rec
  %str_load = load i8* %str_addr, align 1
  %tmp = icmp eq i8 %str_load, 0
  %p_rec = add i32 %p_0_rec, 1
  br i1 %tmp, label %3, label %.preheader

.preheader:                                       ; preds = %1, %.preheader
  %debug_ready_load = load volatile i8* @debug_ready, align 1
  %tmp_3 = trunc i8 %debug_ready_load to i1
  br i1 %tmp_3, label %2, label %.preheader

; <label>:2                                       ; preds = %.preheader
  store volatile i8 %str_load, i8* @debug_out, align 1
  br label %1

; <label>:3                                       ; preds = %1
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

define internal fastcc void @xillybus_wrapper_xilly_decprint(i8 %val_r) {
  %v = alloca i32, align 4
  %val_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %val_r)
  %v_1 = zext i8 %val_read to i32
  %out = alloca [11 x i8], align 1
  store i32 %v_1, i32* %v, align 4
  br label %1

; <label>:1                                       ; preds = %3, %0
  %first = phi i32 [ 9, %0 ], [ %first_1, %3 ]
  %first_2 = phi i4 [ 0, %0 ], [ %i, %3 ]
  %first_2_cast1 = zext i4 %first_2 to i32
  %exitcond = icmp eq i4 %first_2, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  %i = add i4 %first_2, 1
  br i1 %exitcond, label %4, label %.preheader.preheader

.preheader.preheader:                             ; preds = %1
  %powers10_addr = getelementptr [10 x i28]* @powers10, i32 0, i32 %first_2_cast1
  %powers10_load = load i28* %powers10_addr, align 4
  %powers10_load_cast2 = sext i28 %powers10_load to i30
  %powers10_load_cast = zext i30 %powers10_load_cast2 to i32
  br label %.preheader

.preheader:                                       ; preds = %2, %.preheader.preheader
  %x = phi i8 [ %x_1, %2 ], [ 0, %.preheader.preheader ]
  %v_load = load i32* %v, align 4
  %tmp = icmp ult i32 %v_load, %powers10_load_cast
  %x_1 = add i8 %x, 1
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %.preheader
  %v_2 = sub i32 %v_load, %powers10_load_cast
  store i32 %v_2, i32* %v, align 4
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
  %tmp_6 = or i8 %x, 48
  %out_addr_1 = getelementptr inbounds [11 x i8]* %out, i32 0, i32 %first_2_cast1
  store i8 %tmp_6, i8* %out_addr_1, align 1
  %tmp_7 = icmp ne i8 %x, 0
  %tmp_8 = icmp sgt i32 %first, %first_2_cast1
  %or_cond = and i1 %tmp_7, %tmp_8
  %first_1 = select i1 %or_cond, i32 %first_2_cast1, i32 %first
  br label %1

; <label>:4                                       ; preds = %1
  %tmp_4 = trunc i32 %first to i5
  %out_addr = getelementptr inbounds [11 x i8]* %out, i32 0, i32 10
  store i8 0, i8* %out_addr, align 1
  br label %5

; <label>:5                                       ; preds = %6, %4
  %p_0_rec_i = phi i32 [ 0, %4 ], [ %p_rec_i, %6 ]
  %tmp_5 = trunc i32 %p_0_rec_i to i5
  %sum_i = add i5 %tmp_5, %tmp_4
  %sum_i_cast = zext i5 %sum_i to i32
  %out_addr_2 = getelementptr [11 x i8]* %out, i32 0, i32 %sum_i_cast
  %out_load = load i8* %out_addr_2, align 1
  %tmp_i = icmp eq i8 %out_load, 0
  %p_rec_i = add i32 %p_0_rec_i, 1
  br i1 %tmp_i, label %xilly_puts.4.exit, label %.preheader.i

.preheader.i:                                     ; preds = %5, %.preheader.i
  %debug_ready_load = load volatile i8* @debug_ready, align 1
  %tmp_9 = trunc i8 %debug_ready_load to i1
  br i1 %tmp_9, label %6, label %.preheader.i

; <label>:6                                       ; preds = %.preheader.i
  store volatile i8 %out_load, i8* @debug_out, align 1
  br label %5

xilly_puts.4.exit:                                ; preds = %5
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_10 = trunc i32 %empty to i8
  ret i8 %empty_10
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

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i10 @_ssdm_op_PartSelect.i10.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_11 = trunc i22 %empty to i10
  ret i10 %empty_11
}

declare i32 @_autotb_FifoRead_i32(i32*)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32, i32, i32) nounwind readnone

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
