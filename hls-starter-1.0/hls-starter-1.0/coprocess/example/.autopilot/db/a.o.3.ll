; ModuleID = 'C:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0/coprocess/example/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@p_str = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=2 type=[8 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=9 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str5 = private unnamed_addr constant [4 x i8] c" g=\00", align 1 ; [#uses=1 type=[4 x i8]*]
@p_str6 = private unnamed_addr constant [4 x i8] c" b=\00", align 1 ; [#uses=1 type=[4 x i8]*]
@debug_ready = common global i8 0, align 1        ; [#uses=5 type=i8*]
@debug_out = common global i8 0, align 1          ; [#uses=5 type=i8*]
@str = internal constant [17 x i8] c"xillybus_wrapper\00" ; [#uses=1 type=[17 x i8]*]
@p_str3 = private unnamed_addr constant [16 x i7] [i7 -48, i7 -23, i7 -8, i7 -27, i7 -20, i7 32, i7 -23, i7 -18, i7 -29, i7 -17, i7 -19, i7 -23, i7 -18, i7 -25, i7 10, i7 0] ; [#uses=1 type=[16 x i7]*]
@p_str4 = private unnamed_addr constant [3 x i7] [i7 -14, i7 61, i7 0] ; [#uses=1 type=[3 x i7]*]
@p_str7 = private unnamed_addr constant [2 x i4] [i4 -6, i4 0] ; [#uses=1 type=[2 x i4]*]
@powers10_old = internal unnamed_addr constant [10 x i29] [i29 -73741824, i29 100000000, i29 10000000, i29 1000000, i29 100000, i29 10000, i29 1000, i29 100, i29 10, i29 1] ; [#uses=0 type=[10 x i29]*]
@powers10 = internal constant [10 x i28] [i28 -73741824, i28 100000000, i28 10000000, i28 1000000, i28 100000, i28 10000, i28 1000, i28 100, i28 10, i28 1] ; [#uses=1 type=[10 x i28]*]

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
  %p_0_rec_i = phi i4 [ 0, %0 ], [ %p_rec_i, %2 ] ; [#uses=3 type=i4]
  %p_0_rec_i_cast = zext i4 %p_0_rec_i to i32     ; [#uses=1 type=i32]
  %p_str3_addr = getelementptr [16 x i7]* @p_str3, i32 0, i32 %p_0_rec_i_cast ; [#uses=1 type=i7*]
  %p_str3_load = load i7* %p_str3_addr, align 1, !dbg !36 ; [#uses=1 type=i7] [debug line = 7:3@12:3]
  %p_str3_load_cast = zext i7 %p_str3_load to i8, !dbg !36 ; [#uses=1 type=i8] [debug line = 7:3@12:3]
  %tmp_i = icmp eq i4 %p_0_rec_i, -1, !dbg !36    ; [#uses=1 type=i1] [debug line = 7:3@12:3]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 15, i64 15, i64 15) nounwind ; [#uses=0 type=i32]
  %p_rec_i = add i4 %p_0_rec_i, 1, !dbg !46       ; [#uses=1 type=i4] [debug line = 9:5@12:3]
  br i1 %tmp_i, label %xilly_puts.3.exit, label %.preheader.i, !dbg !36 ; [debug line = 7:3@12:3]

.preheader.i:                                     ; preds = %.preheader.i, %1
  %debug_ready_load = load volatile i8* @debug_ready, align 1, !dbg !48 ; [#uses=1 type=i8] [debug line = 8:5@12:3]
  %tmp = trunc i8 %debug_ready_load to i1, !dbg !48 ; [#uses=1 type=i1] [debug line = 8:5@12:3]
  br i1 %tmp, label %2, label %.preheader.i, !dbg !48 ; [debug line = 8:5@12:3]

; <label>:2                                       ; preds = %.preheader.i
  store volatile i8 %p_str3_load_cast, i8* @debug_out, align 1, !dbg !46 ; [debug line = 9:5@12:3]
  br label %1, !dbg !49                           ; [debug line = 10:3@12:3]

xilly_puts.3.exit:                                ; preds = %1
  %in_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %in) nounwind, !dbg !50 ; [#uses=3 type=i32] [debug line = 15:3]
  %b = trunc i32 %in_read to i8, !dbg !50         ; [#uses=2 type=i8] [debug line = 15:3]
  %r = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %in_read, i32 16, i32 23), !dbg !50 ; [#uses=2 type=i8] [debug line = 15:3]
  %r_cast6 = zext i8 %r to i10, !dbg !50          ; [#uses=1 type=i10] [debug line = 15:3]
  call void @llvm.dbg.value(metadata !{i8 %r}, i64 0, metadata !51), !dbg !50 ; [debug line = 15:3] [debug variable = r]
  %g = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %in_read, i32 8, i32 15), !dbg !54 ; [#uses=2 type=i8] [debug line = 16:3]
  %g_cast5 = zext i8 %g to i9, !dbg !54           ; [#uses=1 type=i9] [debug line = 16:3]
  call void @llvm.dbg.value(metadata !{i8 %g}, i64 0, metadata !55), !dbg !54 ; [debug line = 16:3] [debug variable = g]
  %b_cast4 = zext i8 %b to i9, !dbg !56           ; [#uses=1 type=i9] [debug line = 17:3]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !57), !dbg !56 ; [debug line = 17:3] [debug variable = b]
  br label %3, !dbg !58                           ; [debug line = 7:3@20:3]

; <label>:3                                       ; preds = %4, %xilly_puts.3.exit
  %p_0_rec_i1 = phi i2 [ 0, %xilly_puts.3.exit ], [ %p_rec_i7, %4 ] ; [#uses=3 type=i2]
  %p_0_rec_i1_cast = zext i2 %p_0_rec_i1 to i32   ; [#uses=1 type=i32]
  %p_str4_addr = getelementptr [3 x i7]* @p_str4, i32 0, i32 %p_0_rec_i1_cast ; [#uses=1 type=i7*]
  %p_str4_load = load i7* %p_str4_addr, align 1, !dbg !58 ; [#uses=1 type=i7] [debug line = 7:3@20:3]
  %p_str4_load_cast = zext i7 %p_str4_load to i8, !dbg !58 ; [#uses=1 type=i8] [debug line = 7:3@20:3]
  %tmp_i2 = icmp eq i2 %p_0_rec_i1, -2, !dbg !58  ; [#uses=1 type=i1] [debug line = 7:3@20:3]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  %p_rec_i7 = add i2 %p_0_rec_i1, 1, !dbg !60     ; [#uses=1 type=i2] [debug line = 9:5@20:3]
  br i1 %tmp_i2, label %xilly_puts.2.exit, label %.preheader.i6, !dbg !58 ; [debug line = 7:3@20:3]

.preheader.i6:                                    ; preds = %.preheader.i6, %3
  %debug_ready_load_1 = load volatile i8* @debug_ready, align 1, !dbg !61 ; [#uses=1 type=i8] [debug line = 8:5@20:3]
  %tmp_1 = trunc i8 %debug_ready_load_1 to i1, !dbg !61 ; [#uses=1 type=i1] [debug line = 8:5@20:3]
  br i1 %tmp_1, label %4, label %.preheader.i6, !dbg !61 ; [debug line = 8:5@20:3]

; <label>:4                                       ; preds = %.preheader.i6
  store volatile i8 %p_str4_load_cast, i8* @debug_out, align 1, !dbg !60 ; [debug line = 9:5@20:3]
  br label %3, !dbg !62                           ; [debug line = 10:3@20:3]

xilly_puts.2.exit:                                ; preds = %3
  call fastcc void @xillybus_wrapper_xilly_decprint(i8 %r) nounwind, !dbg !63 ; [debug line = 21:3]
  call fastcc void @xillybus_wrapper_xilly_puts.1([4 x i8]* @p_str5) nounwind, !dbg !64 ; [debug line = 22:3]
  call fastcc void @xillybus_wrapper_xilly_decprint(i8 %g) nounwind, !dbg !65 ; [debug line = 23:3]
  call fastcc void @xillybus_wrapper_xilly_puts.1([4 x i8]* @p_str6) nounwind, !dbg !66 ; [debug line = 24:3]
  call fastcc void @xillybus_wrapper_xilly_decprint(i8 %b) nounwind, !dbg !67 ; [debug line = 25:3]
  br label %5, !dbg !68                           ; [debug line = 7:3@26:3]

; <label>:5                                       ; preds = %6, %xilly_puts.2.exit
  %p_0_rec_i8 = phi i1 [ false, %xilly_puts.2.exit ], [ true, %6 ] ; [#uses=2 type=i1]
  %p_0_rec_i8_cast = zext i1 %p_0_rec_i8 to i32   ; [#uses=1 type=i32]
  %p_str7_addr = getelementptr [2 x i4]* @p_str7, i32 0, i32 %p_0_rec_i8_cast ; [#uses=1 type=i4*]
  %p_str7_load = load i4* %p_str7_addr, align 1, !dbg !68 ; [#uses=1 type=i4] [debug line = 7:3@26:3]
  %p_str7_load_cast = zext i4 %p_str7_load to i8, !dbg !68 ; [#uses=1 type=i8] [debug line = 7:3@26:3]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1) nounwind ; [#uses=0 type=i32]
  br i1 %p_0_rec_i8, label %xilly_puts.exit, label %.preheader.i13, !dbg !68 ; [debug line = 7:3@26:3]

.preheader.i13:                                   ; preds = %.preheader.i13, %5
  %debug_ready_load_2 = load volatile i8* @debug_ready, align 1, !dbg !70 ; [#uses=1 type=i8] [debug line = 8:5@26:3]
  %tmp_2 = trunc i8 %debug_ready_load_2 to i1, !dbg !70 ; [#uses=1 type=i1] [debug line = 8:5@26:3]
  br i1 %tmp_2, label %6, label %.preheader.i13, !dbg !70 ; [debug line = 8:5@26:3]

; <label>:6                                       ; preds = %.preheader.i13
  store volatile i8 %p_str7_load_cast, i8* @debug_out, align 1, !dbg !71 ; [debug line = 9:5@26:3]
  br label %5, !dbg !72                           ; [debug line = 10:3@26:3]

xilly_puts.exit:                                  ; preds = %5
  %tmp1 = add i9 %b_cast4, %g_cast5, !dbg !73     ; [#uses=1 type=i9] [debug line = 29:3]
  %tmp1_cast = zext i9 %tmp1 to i10, !dbg !73     ; [#uses=1 type=i10] [debug line = 29:3]
  %tmp_3 = add i10 %tmp1_cast, %r_cast6, !dbg !73 ; [#uses=1 type=i10] [debug line = 29:3]
  %zext_cast = zext i10 %tmp_3 to i22, !dbg !73   ; [#uses=1 type=i22] [debug line = 29:3]
  %mul = mul i22 %zext_cast, 1366, !dbg !73       ; [#uses=1 type=i22] [debug line = 29:3]
  %y = call i10 @_ssdm_op_PartSelect.i10.i22.i32.i32(i22 %mul, i32 12, i32 21), !dbg !73 ; [#uses=1 type=i10] [debug line = 29:3]
  %y_cast = zext i10 %y to i32, !dbg !73          ; [#uses=1 type=i32] [debug line = 29:3]
  call void @llvm.dbg.value(metadata !{i10 %y}, i64 0, metadata !74), !dbg !73 ; [debug line = 29:3] [debug variable = y]
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %out, i32 %y_cast) nounwind, !dbg !75 ; [debug line = 33:3]
  ret void, !dbg !76                              ; [debug line = 34:1]
}

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=16]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define internal fastcc void @xillybus_wrapper_xilly_puts.1([4 x i8]* nocapture %str) {
  br label %1, !dbg !77                           ; [debug line = 7:3]

; <label>:1                                       ; preds = %2, %0
  %p_0_rec = phi i32 [ 0, %0 ], [ %p_rec, %2 ]    ; [#uses=2 type=i32]
  %str_addr = getelementptr [4 x i8]* %str, i32 0, i32 %p_0_rec ; [#uses=1 type=i8*]
  %str_load = load i8* %str_addr, align 1, !dbg !77 ; [#uses=2 type=i8] [debug line = 7:3]
  %tmp = icmp eq i8 %str_load, 0, !dbg !77        ; [#uses=1 type=i1] [debug line = 7:3]
  %p_rec = add i32 %p_0_rec, 1, !dbg !78          ; [#uses=1 type=i32] [debug line = 9:5]
  br i1 %tmp, label %3, label %.preheader, !dbg !77 ; [debug line = 7:3]

.preheader:                                       ; preds = %.preheader, %1
  %debug_ready_load = load volatile i8* @debug_ready, align 1, !dbg !79 ; [#uses=1 type=i8] [debug line = 8:5]
  %tmp_3 = trunc i8 %debug_ready_load to i1, !dbg !79 ; [#uses=1 type=i1] [debug line = 8:5]
  br i1 %tmp_3, label %2, label %.preheader, !dbg !79 ; [debug line = 8:5]

; <label>:2                                       ; preds = %.preheader
  store volatile i8 %str_load, i8* @debug_out, align 1, !dbg !78 ; [debug line = 9:5]
  br label %1, !dbg !80                           ; [debug line = 10:3]

; <label>:3                                       ; preds = %1
  ret void, !dbg !81                              ; [debug line = 11:1]
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=4]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=3]
define internal fastcc void @xillybus_wrapper_xilly_decprint(i8 %val) {
  %v = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %val_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %val) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %val_read}, i64 0, metadata !82), !dbg !89 ; [debug line = 30:36] [debug variable = val]
  %v_1 = zext i8 %val_read to i32                 ; [#uses=1 type=i32]
  %out = alloca [11 x i8], align 1                ; [#uses=3 type=[11 x i8]*]
  call void @llvm.dbg.value(metadata !{i8 %val}, i64 0, metadata !82), !dbg !89 ; [debug line = 30:36] [debug variable = val]
  call void @llvm.dbg.declare(metadata !{[11 x i8]* %out}, metadata !90), !dbg !95 ; [debug line = 33:8] [debug variable = out]
  call void @llvm.dbg.value(metadata !{i8 %val}, i64 0, metadata !96), !dbg !97 ; [debug line = 36:19] [debug variable = v]
  call void @llvm.dbg.value(metadata !{i32 %v_1}, i64 0, metadata !96) ; [debug variable = v]
  store i32 %v_1, i32* %v, align 4
  br label %1, !dbg !98                           ; [debug line = 38:8]

; <label>:1                                       ; preds = %3, %0
  %first = phi i32 [ 9, %0 ], [ %first_1, %3 ]    ; [#uses=3 type=i32]
  %first_2 = phi i4 [ 0, %0 ], [ %i, %3 ]         ; [#uses=3 type=i4]
  %first_2_cast1 = zext i4 %first_2 to i32, !dbg !98 ; [#uses=4 type=i32] [debug line = 38:8]
  %exitcond = icmp eq i4 %first_2, -6, !dbg !98   ; [#uses=1 type=i1] [debug line = 38:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  %i = add i4 %first_2, 1, !dbg !100              ; [#uses=1 type=i4] [debug line = 38:19]
  br i1 %exitcond, label %4, label %.preheader.preheader, !dbg !98 ; [debug line = 38:8]

.preheader.preheader:                             ; preds = %1
  %powers10_addr = getelementptr [10 x i28]* @powers10, i32 0, i32 %first_2_cast1, !dbg !101 ; [#uses=1 type=i28*] [debug line = 40:5]
  %powers10_load = load i28* %powers10_addr, align 4, !dbg !101 ; [#uses=1 type=i28] [debug line = 40:5]
  %powers10_load_cast2 = sext i28 %powers10_load to i30, !dbg !101 ; [#uses=1 type=i30] [debug line = 40:5]
  %powers10_load_cast = zext i30 %powers10_load_cast2 to i32, !dbg !101 ; [#uses=2 type=i32] [debug line = 40:5]
  br label %.preheader, !dbg !101                 ; [debug line = 40:5]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %x = phi i8 [ %x_1, %2 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i8]
  call void @llvm.dbg.value(metadata !{i32* %v}, i64 0, metadata !96) ; [debug variable = v]
  %v_load = load i32* %v, align 4                 ; [#uses=2 type=i32]
  %tmp = icmp ult i32 %v_load, %powers10_load_cast, !dbg !101 ; [#uses=1 type=i1] [debug line = 40:5]
  %x_1 = add i8 %x, 1, !dbg !103                  ; [#uses=1 type=i8] [debug line = 42:7]
  br i1 %tmp, label %3, label %2, !dbg !101       ; [debug line = 40:5]

; <label>:2                                       ; preds = %.preheader
  %v_2 = sub i32 %v_load, %powers10_load_cast, !dbg !105 ; [#uses=1 type=i32] [debug line = 41:7]
  call void @llvm.dbg.value(metadata !{i32 %v_2}, i64 0, metadata !96), !dbg !105 ; [debug line = 41:7] [debug variable = v]
  call void @llvm.dbg.value(metadata !{i8 %x_1}, i64 0, metadata !106), !dbg !103 ; [debug line = 42:7] [debug variable = x]
  store i32 %v_2, i32* %v, align 4, !dbg !105     ; [debug line = 41:7]
  br label %.preheader, !dbg !107                 ; [debug line = 43:5]

; <label>:3                                       ; preds = %.preheader
  %tmp_6 = or i8 %x, 48, !dbg !108                ; [#uses=1 type=i8] [debug line = 45:5]
  %out_addr_1 = getelementptr inbounds [11 x i8]* %out, i32 0, i32 %first_2_cast1, !dbg !108 ; [#uses=1 type=i8*] [debug line = 45:5]
  store i8 %tmp_6, i8* %out_addr_1, align 1, !dbg !108 ; [debug line = 45:5]
  %tmp_7 = icmp ne i8 %x, 0, !dbg !109            ; [#uses=1 type=i1] [debug line = 47:5]
  %tmp_8 = icmp sgt i32 %first, %first_2_cast1, !dbg !109 ; [#uses=1 type=i1] [debug line = 47:5]
  %or_cond = and i1 %tmp_7, %tmp_8, !dbg !109     ; [#uses=1 type=i1] [debug line = 47:5]
  call void @llvm.dbg.value(metadata !{i4 %first_2}, i64 0, metadata !110), !dbg !111 ; [debug line = 48:7] [debug variable = first]
  %first_1 = select i1 %or_cond, i32 %first_2_cast1, i32 %first, !dbg !109 ; [#uses=1 type=i32] [debug line = 47:5]
  call void @llvm.dbg.value(metadata !{i32 %first_1}, i64 0, metadata !110), !dbg !109 ; [debug line = 47:5] [debug variable = first]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !112), !dbg !100 ; [debug line = 38:19] [debug variable = i]
  br label %1, !dbg !100                          ; [debug line = 38:19]

; <label>:4                                       ; preds = %1
  %tmp_4 = trunc i32 %first to i5, !dbg !98       ; [#uses=1 type=i5] [debug line = 38:8]
  %out_addr = getelementptr inbounds [11 x i8]* %out, i32 0, i32 10, !dbg !113 ; [#uses=1 type=i8*] [debug line = 51:3]
  store i8 0, i8* %out_addr, align 1, !dbg !113   ; [debug line = 51:3]
  br label %5, !dbg !114                          ; [debug line = 7:3@53:3]

; <label>:5                                       ; preds = %6, %4
  %p_0_rec_i = phi i32 [ 0, %4 ], [ %p_rec_i, %6 ] ; [#uses=2 type=i32]
  %tmp_5 = trunc i32 %p_0_rec_i to i5             ; [#uses=1 type=i5]
  %sum_i = add i5 %tmp_5, %tmp_4                  ; [#uses=1 type=i5]
  %sum_i_cast = zext i5 %sum_i to i32             ; [#uses=1 type=i32]
  %out_addr_2 = getelementptr [11 x i8]* %out, i32 0, i32 %sum_i_cast ; [#uses=1 type=i8*]
  %out_load = load i8* %out_addr_2, align 1, !dbg !114 ; [#uses=2 type=i8] [debug line = 7:3@53:3]
  %tmp_i = icmp eq i8 %out_load, 0, !dbg !114     ; [#uses=1 type=i1] [debug line = 7:3@53:3]
  %p_rec_i = add i32 %p_0_rec_i, 1, !dbg !116     ; [#uses=1 type=i32] [debug line = 9:5@53:3]
  br i1 %tmp_i, label %xilly_puts.4.exit, label %.preheader.i, !dbg !114 ; [debug line = 7:3@53:3]

.preheader.i:                                     ; preds = %.preheader.i, %5
  %debug_ready_load = load volatile i8* @debug_ready, align 1, !dbg !117 ; [#uses=1 type=i8] [debug line = 8:5@53:3]
  %tmp_9 = trunc i8 %debug_ready_load to i1, !dbg !117 ; [#uses=1 type=i1] [debug line = 8:5@53:3]
  br i1 %tmp_9, label %6, label %.preheader.i, !dbg !117 ; [debug line = 8:5@53:3]

; <label>:6                                       ; preds = %.preheader.i
  store volatile i8 %out_load, i8* @debug_out, align 1, !dbg !116 ; [debug line = 9:5@53:3]
  br label %5, !dbg !118                          ; [debug line = 10:3@53:3]

xilly_puts.4.exit:                                ; preds = %5
  ret void, !dbg !119                             ; [debug line = 54:1]
}

; [#uses=2]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_10 = trunc i32 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_10
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
define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

; [#uses=1]
define weak i10 @_ssdm_op_PartSelect.i10.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2) ; [#uses=1 type=i22]
  %empty_11 = trunc i22 %empty to i10             ; [#uses=1 type=i10]
  ret i10 %empty_11
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

; [#uses=0]
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
!58 = metadata !{i32 7, i32 3, metadata !37, metadata !59}
!59 = metadata !{i32 20, i32 3, metadata !33, null}
!60 = metadata !{i32 9, i32 5, metadata !47, metadata !59}
!61 = metadata !{i32 8, i32 5, metadata !47, metadata !59}
!62 = metadata !{i32 10, i32 3, metadata !47, metadata !59}
!63 = metadata !{i32 21, i32 3, metadata !33, null}
!64 = metadata !{i32 22, i32 3, metadata !33, null}
!65 = metadata !{i32 23, i32 3, metadata !33, null}
!66 = metadata !{i32 24, i32 3, metadata !33, null}
!67 = metadata !{i32 25, i32 3, metadata !33, null}
!68 = metadata !{i32 7, i32 3, metadata !37, metadata !69}
!69 = metadata !{i32 26, i32 3, metadata !33, null}
!70 = metadata !{i32 8, i32 5, metadata !47, metadata !69}
!71 = metadata !{i32 9, i32 5, metadata !47, metadata !69}
!72 = metadata !{i32 10, i32 3, metadata !47, metadata !69}
!73 = metadata !{i32 29, i32 3, metadata !33, null}
!74 = metadata !{i32 786688, metadata !33, metadata !"y", metadata !22, i32 10, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 33, i32 3, metadata !33, null}
!76 = metadata !{i32 34, i32 1, metadata !33, null}
!77 = metadata !{i32 7, i32 3, metadata !37, null}
!78 = metadata !{i32 9, i32 5, metadata !47, null}
!79 = metadata !{i32 8, i32 5, metadata !47, null}
!80 = metadata !{i32 10, i32 3, metadata !47, null}
!81 = metadata !{i32 11, i32 1, metadata !37, null}
!82 = metadata !{i32 786689, metadata !83, metadata !"val", metadata !39, i32 16777246, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!83 = metadata !{i32 786478, i32 0, metadata !39, metadata !"xilly_decprint", metadata !"xilly_decprint", metadata !"", metadata !39, i32 30, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 30} ; [ DW_TAG_subprogram ]
!84 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!85 = metadata !{null, metadata !86, metadata !88}
!86 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_const_type ]
!87 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !39, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ]
!88 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_const_type ]
!89 = metadata !{i32 30, i32 36, metadata !83, null}
!90 = metadata !{i32 786688, metadata !91, metadata !"out", metadata !39, i32 33, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 786443, metadata !83, i32 30, i32 59, metadata !39, i32 5} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 88, i64 8, i32 0, i32 0, metadata !44, metadata !93, i32 0, i32 0} ; [ DW_TAG_array_type ]
!93 = metadata !{metadata !94}
!94 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ]
!95 = metadata !{i32 33, i32 8, metadata !91, null}
!96 = metadata !{i32 786688, metadata !91, metadata !"v", metadata !39, i32 36, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 36, i32 19, metadata !91, null}
!98 = metadata !{i32 38, i32 8, metadata !99, null}
!99 = metadata !{i32 786443, metadata !91, i32 38, i32 3, metadata !39, i32 6} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 38, i32 19, metadata !99, null}
!101 = metadata !{i32 40, i32 5, metadata !102, null}
!102 = metadata !{i32 786443, metadata !99, i32 38, i32 24, metadata !39, i32 7} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 42, i32 7, metadata !104, null}
!104 = metadata !{i32 786443, metadata !102, i32 40, i32 30, metadata !39, i32 8} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 41, i32 7, metadata !104, null}
!106 = metadata !{i32 786688, metadata !102, metadata !"x", metadata !39, i32 39, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 43, i32 5, metadata !104, null}
!108 = metadata !{i32 45, i32 5, metadata !102, null}
!109 = metadata !{i32 47, i32 5, metadata !102, null}
!110 = metadata !{i32 786688, metadata !91, metadata !"first", metadata !39, i32 35, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 48, i32 7, metadata !102, null}
!112 = metadata !{i32 786688, metadata !91, metadata !"i", metadata !39, i32 34, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 51, i32 3, metadata !91, null}
!114 = metadata !{i32 7, i32 3, metadata !37, metadata !115}
!115 = metadata !{i32 53, i32 3, metadata !91, null}
!116 = metadata !{i32 9, i32 5, metadata !47, metadata !115}
!117 = metadata !{i32 8, i32 5, metadata !47, metadata !115}
!118 = metadata !{i32 10, i32 3, metadata !47, metadata !115}
!119 = metadata !{i32 54, i32 1, metadata !91, null}
