; ModuleID = 'C:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0/coprocess/example/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@.str = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=2 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=9 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str5 = private unnamed_addr constant [4 x i8] c" g=\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str6 = private unnamed_addr constant [4 x i8] c" b=\00", align 1 ; [#uses=1 type=[4 x i8]*]
@debug_ready = common global i8 0, align 1        ; [#uses=5 type=i8*]
@debug_out = common global i8 0, align 1          ; [#uses=5 type=i8*]
@str = internal constant [17 x i8] c"xillybus_wrapper\00" ; [#uses=1 type=[17 x i8]*]
@.str3 = private unnamed_addr constant [16 x i7] [i7 -48, i7 -23, i7 -8, i7 -27, i7 -20, i7 32, i7 -23, i7 -18, i7 -29, i7 -17, i7 -19, i7 -23, i7 -18, i7 -25, i7 10, i7 0] ; [#uses=1 type=[16 x i7]*]
@.str4 = private unnamed_addr constant [3 x i7] [i7 -14, i7 61, i7 0] ; [#uses=1 type=[3 x i7]*]
@.str7 = private unnamed_addr constant [2 x i4] [i4 -6, i4 0] ; [#uses=1 type=[2 x i4]*]
@powers10 = internal unnamed_addr constant [10 x i29] [i29 -73741824, i29 100000000, i29 10000000, i29 1000000, i29 100000, i29 10000, i29 1000, i29 100, i29 10, i29 1] ; [#uses=1 type=[10 x i29]*]

; [#uses=0]
define void @xillybus_wrapper(i32* %in, i32* %out) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out) nounwind, !map !31
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %in}, i64 0, metadata !35), !dbg !44 ; [debug line = 5:28] [debug variable = in]
  call void @llvm.dbg.value(metadata !{i32* %out}, i64 0, metadata !45), !dbg !46 ; [debug line = 5:37] [debug variable = out]
  call void (...)* @_ssdm_op_SpecInterface(i32* %in, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !47 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %out, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !49 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !50 ; [debug line = 8:1]
  br label %1, !dbg !51                           ; [debug line = 7:3@12:3]

; <label>:1                                       ; preds = %3, %0
  %.0.rec.i = phi i4 [ 0, %0 ], [ %.rec.i, %3 ]   ; [#uses=3 type=i4]
  %.0.rec.i.cast = zext i4 %.0.rec.i to i32       ; [#uses=1 type=i32]
  %.str3.addr = getelementptr [16 x i7]* @.str3, i32 0, i32 %.0.rec.i.cast ; [#uses=1 type=i7*]
  %.str3.load = load i7* %.str3.addr, align 1, !dbg !51 ; [#uses=1 type=i7] [debug line = 7:3@12:3]
  %.str3.load.cast = zext i7 %.str3.load to i8, !dbg !51 ; [#uses=1 type=i8] [debug line = 7:3@12:3]
  %tmp.i = icmp eq i4 %.0.rec.i, -1, !dbg !51     ; [#uses=1 type=i1] [debug line = 7:3@12:3]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 15, i64 15, i64 15) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.i, label %xilly_puts.3.exit, label %.preheader.i, !dbg !51 ; [debug line = 7:3@12:3]

.preheader.i:                                     ; preds = %.preheader.i, %1
  %debug_ready.load = load volatile i8* @debug_ready, align 1, !dbg !59 ; [#uses=1 type=i8] [debug line = 8:5@12:3]
  %debug_ready.load.cast = trunc i8 %debug_ready.load to i1, !dbg !59 ; [#uses=1 type=i1] [debug line = 8:5@12:3]
  br i1 %debug_ready.load.cast, label %3, label %.preheader.i, !dbg !59 ; [debug line = 8:5@12:3]

; <label>:3                                       ; preds = %.preheader.i
  %.rec.i = add i4 %.0.rec.i, 1, !dbg !61         ; [#uses=1 type=i4] [debug line = 9:5@12:3]
  store volatile i8 %.str3.load.cast, i8* @debug_out, align 1, !dbg !61 ; [debug line = 9:5@12:3]
  br label %1, !dbg !62                           ; [debug line = 10:3@12:3]

xilly_puts.3.exit:                                ; preds = %1
  %in.load = load i32* %in, align 4, !dbg !63     ; [#uses=3 type=i32] [debug line = 15:3]
  %in.load.cast1 = trunc i32 %in.load to i16, !dbg !63 ; [#uses=1 type=i16] [debug line = 15:3]
  %in.load.cast2 = trunc i32 %in.load to i24, !dbg !63 ; [#uses=1 type=i24] [debug line = 15:3]
  %b = trunc i32 %in.load to i8, !dbg !63         ; [#uses=2 type=i8] [debug line = 15:3]
  %tmp = lshr i24 %in.load.cast2, 16, !dbg !63    ; [#uses=1 type=i24] [debug line = 15:3]
  %r = trunc i24 %tmp to i8, !dbg !63             ; [#uses=2 type=i8] [debug line = 15:3]
  %r.cast6 = zext i8 %r to i10, !dbg !63          ; [#uses=1 type=i10] [debug line = 15:3]
  call void @llvm.dbg.value(metadata !{i8 %r}, i64 0, metadata !64), !dbg !63 ; [debug line = 15:3] [debug variable = r]
  %tmp.1 = lshr i16 %in.load.cast1, 8, !dbg !66   ; [#uses=1 type=i16] [debug line = 16:3]
  %g = trunc i16 %tmp.1 to i8, !dbg !66           ; [#uses=2 type=i8] [debug line = 16:3]
  %g.cast5 = zext i8 %g to i9, !dbg !66           ; [#uses=1 type=i9] [debug line = 16:3]
  call void @llvm.dbg.value(metadata !{i8 %g}, i64 0, metadata !67), !dbg !66 ; [debug line = 16:3] [debug variable = g]
  %b.cast4 = zext i8 %b to i9, !dbg !68           ; [#uses=1 type=i9] [debug line = 17:3]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !69), !dbg !68 ; [debug line = 17:3] [debug variable = b]
  br label %4, !dbg !70                           ; [debug line = 7:3@20:3]

; <label>:4                                       ; preds = %6, %xilly_puts.3.exit
  %.0.rec.i1 = phi i2 [ 0, %xilly_puts.3.exit ], [ %.rec.i7, %6 ] ; [#uses=3 type=i2]
  %.0.rec.i1.cast = zext i2 %.0.rec.i1 to i32     ; [#uses=1 type=i32]
  %.str4.addr = getelementptr [3 x i7]* @.str4, i32 0, i32 %.0.rec.i1.cast ; [#uses=1 type=i7*]
  %.str4.load = load i7* %.str4.addr, align 1, !dbg !70 ; [#uses=1 type=i7] [debug line = 7:3@20:3]
  %.str4.load.cast = zext i7 %.str4.load to i8, !dbg !70 ; [#uses=1 type=i8] [debug line = 7:3@20:3]
  %tmp.i2 = icmp eq i2 %.0.rec.i1, -2, !dbg !70   ; [#uses=1 type=i1] [debug line = 7:3@20:3]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.i2, label %xilly_puts.2.exit, label %.preheader.i6, !dbg !70 ; [debug line = 7:3@20:3]

.preheader.i6:                                    ; preds = %.preheader.i6, %4
  %debug_ready.load.1 = load volatile i8* @debug_ready, align 1, !dbg !72 ; [#uses=1 type=i8] [debug line = 8:5@20:3]
  %debug_ready.load.1.cast = trunc i8 %debug_ready.load.1 to i1, !dbg !72 ; [#uses=1 type=i1] [debug line = 8:5@20:3]
  br i1 %debug_ready.load.1.cast, label %6, label %.preheader.i6, !dbg !72 ; [debug line = 8:5@20:3]

; <label>:6                                       ; preds = %.preheader.i6
  %.rec.i7 = add i2 %.0.rec.i1, 1, !dbg !73       ; [#uses=1 type=i2] [debug line = 9:5@20:3]
  store volatile i8 %.str4.load.cast, i8* @debug_out, align 1, !dbg !73 ; [debug line = 9:5@20:3]
  br label %4, !dbg !74                           ; [debug line = 10:3@20:3]

xilly_puts.2.exit:                                ; preds = %4
  call fastcc void @xilly_decprint(i8 %r) nounwind, !dbg !75 ; [debug line = 21:3]
  call fastcc void @xilly_puts.1([4 x i8]* @.str5) nounwind, !dbg !76 ; [debug line = 22:3]
  call fastcc void @xilly_decprint(i8 %g) nounwind, !dbg !77 ; [debug line = 23:3]
  call fastcc void @xilly_puts.1([4 x i8]* @.str6) nounwind, !dbg !78 ; [debug line = 24:3]
  call fastcc void @xilly_decprint(i8 %b) nounwind, !dbg !79 ; [debug line = 25:3]
  br label %7, !dbg !80                           ; [debug line = 7:3@26:3]

; <label>:7                                       ; preds = %9, %xilly_puts.2.exit
  %.0.rec.i8 = phi i1 [ false, %xilly_puts.2.exit ], [ %.rec.i1, %9 ] ; [#uses=3 type=i1]
  %.0.rec.i8.cast = zext i1 %.0.rec.i8 to i32     ; [#uses=1 type=i32]
  %.str7.addr = getelementptr [2 x i4]* @.str7, i32 0, i32 %.0.rec.i8.cast ; [#uses=1 type=i4*]
  %.str7.load = load i4* %.str7.addr, align 1, !dbg !80 ; [#uses=1 type=i4] [debug line = 7:3@26:3]
  %.str7.load.cast = zext i4 %.str7.load to i8, !dbg !80 ; [#uses=1 type=i8] [debug line = 7:3@26:3]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1) nounwind ; [#uses=0 type=i32]
  br i1 %.0.rec.i8, label %xilly_puts.exit, label %.preheader.i13, !dbg !80 ; [debug line = 7:3@26:3]

.preheader.i13:                                   ; preds = %.preheader.i13, %7
  %debug_ready.load.2 = load volatile i8* @debug_ready, align 1, !dbg !82 ; [#uses=1 type=i8] [debug line = 8:5@26:3]
  %debug_ready.load.2.cast = trunc i8 %debug_ready.load.2 to i1, !dbg !82 ; [#uses=1 type=i1] [debug line = 8:5@26:3]
  br i1 %debug_ready.load.2.cast, label %9, label %.preheader.i13, !dbg !82 ; [debug line = 8:5@26:3]

; <label>:9                                       ; preds = %.preheader.i13
  %.rec.i1 = xor i1 %.0.rec.i8, true, !dbg !83    ; [#uses=1 type=i1] [debug line = 9:5@26:3]
  store volatile i8 %.str7.load.cast, i8* @debug_out, align 1, !dbg !83 ; [debug line = 9:5@26:3]
  br label %7, !dbg !84                           ; [debug line = 10:3@26:3]

xilly_puts.exit:                                  ; preds = %7
  %tmp1 = add i9 %b.cast4, %g.cast5, !dbg !85     ; [#uses=1 type=i9] [debug line = 29:3]
  %tmp1.cast = zext i9 %tmp1 to i10, !dbg !85     ; [#uses=1 type=i10] [debug line = 29:3]
  %tmp.3 = add i10 %tmp1.cast, %r.cast6, !dbg !85 ; [#uses=1 type=i10] [debug line = 29:3]
  %y = udiv i10 %tmp.3, 3, !dbg !85               ; [#uses=1 type=i10] [debug line = 29:3]
  %y.cast = zext i10 %y to i32, !dbg !85          ; [#uses=1 type=i32] [debug line = 29:3]
  call void @llvm.dbg.value(metadata !{i10 %y}, i64 0, metadata !86), !dbg !85 ; [debug line = 29:3] [debug variable = y]
  store i32 %y.cast, i32* %out, align 4, !dbg !87 ; [debug line = 33:3]
  ret void, !dbg !88                              ; [debug line = 34:1]
}

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=13]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
define internal fastcc void @xilly_puts.1([4 x i8]* nocapture %str) {
  br label %1, !dbg !89                           ; [debug line = 7:3]

; <label>:1                                       ; preds = %2, %0
  %.0.rec = phi i32 [ 0, %0 ], [ %.rec, %2 ]      ; [#uses=2 type=i32]
  %str.addr = getelementptr [4 x i8]* %str, i32 0, i32 %.0.rec ; [#uses=1 type=i8*]
  %str.load = load i8* %str.addr, align 1, !dbg !89 ; [#uses=2 type=i8] [debug line = 7:3]
  %tmp = icmp eq i8 %str.load, 0, !dbg !89        ; [#uses=1 type=i1] [debug line = 7:3]
  br i1 %tmp, label %3, label %.preheader, !dbg !89 ; [debug line = 7:3]

.preheader:                                       ; preds = %.preheader, %1
  %debug_ready.load = load volatile i8* @debug_ready, align 1, !dbg !90 ; [#uses=1 type=i8] [debug line = 8:5]
  %debug_ready.load.cast = trunc i8 %debug_ready.load to i1, !dbg !90 ; [#uses=1 type=i1] [debug line = 8:5]
  br i1 %debug_ready.load.cast, label %2, label %.preheader, !dbg !90 ; [debug line = 8:5]

; <label>:2                                       ; preds = %.preheader
  %.rec = add i32 %.0.rec, 1, !dbg !91            ; [#uses=1 type=i32] [debug line = 9:5]
  store volatile i8 %str.load, i8* @debug_out, align 1, !dbg !91 ; [debug line = 9:5]
  br label %1, !dbg !92                           ; [debug line = 10:3]

; <label>:3                                       ; preds = %1
  ret void, !dbg !93                              ; [debug line = 11:1]
}

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=3]
define internal fastcc void @xilly_decprint(i8 %val) {
  %val.cast = zext i8 %val to i32                 ; [#uses=1 type=i32]
  %out = alloca [11 x i8], align 1                ; [#uses=3 type=[11 x i8]*]
  call void @llvm.dbg.value(metadata !{i8 %val}, i64 0, metadata !94), !dbg !99 ; [debug line = 30:36] [debug variable = val]
  call void @llvm.dbg.declare(metadata !{[11 x i8]* %out}, metadata !100), !dbg !105 ; [debug line = 33:8] [debug variable = out]
  call void @llvm.dbg.value(metadata !{i8 %val}, i64 0, metadata !106), !dbg !107 ; [debug line = 36:19] [debug variable = v]
  br label %1, !dbg !108                          ; [debug line = 38:8]

; <label>:1                                       ; preds = %4, %0
  %first = phi i32 [ 9, %0 ], [ %first.1, %4 ]    ; [#uses=3 type=i32]
  %first.2 = phi i4 [ 0, %0 ], [ %i, %4 ]         ; [#uses=3 type=i4]
  %v = phi i32 [ %val.cast, %0 ], [ %v.1.lcssa, %4 ] ; [#uses=1 type=i32]
  %first.cast = trunc i32 %first to i5, !dbg !108 ; [#uses=1 type=i5] [debug line = 38:8]
  %first.2.cast1 = zext i4 %first.2 to i32, !dbg !108 ; [#uses=4 type=i32] [debug line = 38:8]
  %exitcond = icmp eq i4 %first.2, -6, !dbg !108  ; [#uses=1 type=i1] [debug line = 38:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %5, label %.preheader.preheader, !dbg !108 ; [debug line = 38:8]

.preheader.preheader:                             ; preds = %1
  %powers10.addr = getelementptr [10 x i29]* @powers10, i32 0, i32 %first.2.cast1, !dbg !110 ; [#uses=1 type=i29*] [debug line = 40:5]
  %powers10.load = load i29* %powers10.addr, align 4, !dbg !110 ; [#uses=1 type=i29] [debug line = 40:5]
  %powers10.load.cast2 = sext i29 %powers10.load to i30, !dbg !110 ; [#uses=1 type=i30] [debug line = 40:5]
  %powers10.load.cast = zext i30 %powers10.load.cast2 to i32, !dbg !110 ; [#uses=2 type=i32] [debug line = 40:5]
  br label %.preheader, !dbg !110                 ; [debug line = 40:5]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %v.1 = phi i32 [ %v.2, %3 ], [ %v, %.preheader.preheader ] ; [#uses=3 type=i32]
  %x = phi i8 [ %x.1, %3 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i8]
  %tmp = icmp ult i32 %v.1, %powers10.load.cast, !dbg !110 ; [#uses=1 type=i1] [debug line = 40:5]
  br i1 %tmp, label %4, label %3, !dbg !110       ; [debug line = 40:5]

; <label>:3                                       ; preds = %.preheader
  %v.2 = sub i32 %v.1, %powers10.load.cast, !dbg !112 ; [#uses=1 type=i32] [debug line = 41:7]
  call void @llvm.dbg.value(metadata !{i32 %v.2}, i64 0, metadata !106), !dbg !112 ; [debug line = 41:7] [debug variable = v]
  %x.1 = add i8 %x, 1, !dbg !114                  ; [#uses=1 type=i8] [debug line = 42:7]
  call void @llvm.dbg.value(metadata !{i8 %x.1}, i64 0, metadata !115), !dbg !114 ; [debug line = 42:7] [debug variable = x]
  br label %.preheader, !dbg !116                 ; [debug line = 43:5]

; <label>:4                                       ; preds = %.preheader
  %x.lcssa = phi i8 [ %x, %.preheader ]           ; [#uses=2 type=i8]
  %v.1.lcssa = phi i32 [ %v.1, %.preheader ]      ; [#uses=1 type=i32]
  %tmp.6 = or i8 %x.lcssa, 48, !dbg !117          ; [#uses=1 type=i8] [debug line = 45:5]
  %out.addr.1 = getelementptr inbounds [11 x i8]* %out, i32 0, i32 %first.2.cast1, !dbg !117 ; [#uses=1 type=i8*] [debug line = 45:5]
  store i8 %tmp.6, i8* %out.addr.1, align 1, !dbg !117 ; [debug line = 45:5]
  %tmp.7 = icmp ne i8 %x.lcssa, 0, !dbg !118      ; [#uses=1 type=i1] [debug line = 47:5]
  %tmp.8 = icmp sgt i32 %first, %first.2.cast1, !dbg !118 ; [#uses=1 type=i1] [debug line = 47:5]
  %or.cond = and i1 %tmp.7, %tmp.8, !dbg !118     ; [#uses=1 type=i1] [debug line = 47:5]
  call void @llvm.dbg.value(metadata !{i4 %first.2}, i64 0, metadata !119), !dbg !120 ; [debug line = 48:7] [debug variable = first]
  %first.1 = select i1 %or.cond, i32 %first.2.cast1, i32 %first, !dbg !118 ; [#uses=1 type=i32] [debug line = 47:5]
  call void @llvm.dbg.value(metadata !{i32 %first.1}, i64 0, metadata !119), !dbg !118 ; [debug line = 47:5] [debug variable = first]
  %i = add i4 %first.2, 1, !dbg !121              ; [#uses=1 type=i4] [debug line = 38:19]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !122), !dbg !121 ; [debug line = 38:19] [debug variable = i]
  br label %1, !dbg !121                          ; [debug line = 38:19]

; <label>:5                                       ; preds = %1
  %first.cast.lcssa = phi i5 [ %first.cast, %1 ]  ; [#uses=1 type=i5]
  %out.addr = getelementptr inbounds [11 x i8]* %out, i32 0, i32 10, !dbg !123 ; [#uses=1 type=i8*] [debug line = 51:3]
  store i8 0, i8* %out.addr, align 1, !dbg !123   ; [debug line = 51:3]
  br label %6, !dbg !124                          ; [debug line = 7:3@53:3]

; <label>:6                                       ; preds = %7, %5
  %.0.rec.i = phi i32 [ 0, %5 ], [ %.rec.i, %7 ]  ; [#uses=2 type=i32]
  %.0.rec.i.cast = trunc i32 %.0.rec.i to i5      ; [#uses=1 type=i5]
  %sum.i = add i5 %.0.rec.i.cast, %first.cast.lcssa ; [#uses=1 type=i5]
  %sum.i.cast = zext i5 %sum.i to i32             ; [#uses=1 type=i32]
  %out.addr.2 = getelementptr [11 x i8]* %out, i32 0, i32 %sum.i.cast ; [#uses=1 type=i8*]
  %out.load = load i8* %out.addr.2, align 1, !dbg !124 ; [#uses=2 type=i8] [debug line = 7:3@53:3]
  %tmp.i = icmp eq i8 %out.load, 0, !dbg !124     ; [#uses=1 type=i1] [debug line = 7:3@53:3]
  br i1 %tmp.i, label %xilly_puts.4.exit, label %.preheader.i, !dbg !124 ; [debug line = 7:3@53:3]

.preheader.i:                                     ; preds = %.preheader.i, %6
  %debug_ready.load = load volatile i8* @debug_ready, align 1, !dbg !126 ; [#uses=1 type=i8] [debug line = 8:5@53:3]
  %debug_ready.load.cast = trunc i8 %debug_ready.load to i1, !dbg !126 ; [#uses=1 type=i1] [debug line = 8:5@53:3]
  br i1 %debug_ready.load.cast, label %7, label %.preheader.i, !dbg !126 ; [debug line = 8:5@53:3]

; <label>:7                                       ; preds = %.preheader.i
  %.rec.i = add i32 %.0.rec.i, 1, !dbg !127       ; [#uses=1 type=i32] [debug line = 9:5@53:3]
  store volatile i8 %out.load, i8* @debug_out, align 1, !dbg !127 ; [debug line = 9:5@53:3]
  br label %6, !dbg !128                          ; [debug line = 10:3@53:3]

xilly_puts.4.exit:                                ; preds = %6
  ret void, !dbg !129                             ; [debug line = 54:1]
}

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
!15 = metadata !{i32 786484, i32 0, null, metadata !"debug_ready", metadata !"debug_ready", metadata !"", metadata !16, i32 4, metadata !17, i32 0, i32 1, i8* @debug_ready} ; [ DW_TAG_variable ]
!16 = metadata !{i32 786473, metadata !"coprocess/example/src/xilly_debug.c", metadata !"c:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_volatile_type ]
!18 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!19 = metadata !{i32 786484, i32 0, null, metadata !"debug_out", metadata !"debug_out", metadata !"", metadata !16, i32 3, metadata !17, i32 0, i32 1, i8* @debug_out} ; [ DW_TAG_variable ]
!20 = metadata !{i32 786484, i32 0, null, metadata !"powers10", metadata !"powers10", metadata !"powers10", metadata !16, i32 31, metadata !21, i32 1, i32 1, [10 x i29]* @powers10} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 32, i32 0, i32 0, metadata !22, metadata !25, i32 0, i32 0} ; [ DW_TAG_array_type ]
!22 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_const_type ]
!23 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !16, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!24 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"in", metadata !5, metadata !"int", i32 0, i32 31}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 31, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"out", metadata !5, metadata !"int", i32 0, i32 31}
!35 = metadata !{i32 786689, metadata !36, metadata !"in", metadata !37, i32 16777221, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 786478, i32 0, metadata !37, metadata !"xillybus_wrapper", metadata !"xillybus_wrapper", metadata !"", metadata !37, i32 5, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*)* @xillybus_wrapper, null, null, metadata !42, i32 5} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786473, metadata !"coprocess/example/src/main.c", metadata !"c:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0", null} ; [ DW_TAG_file_type ]
!38 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!39 = metadata !{null, metadata !40, metadata !40}
!40 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ]
!41 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!42 = metadata !{metadata !43}
!43 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!44 = metadata !{i32 5, i32 28, metadata !36, null}
!45 = metadata !{i32 786689, metadata !36, metadata !"out", metadata !37, i32 33554437, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 5, i32 37, metadata !36, null}
!47 = metadata !{i32 6, i32 1, metadata !48, null}
!48 = metadata !{i32 786443, metadata !36, i32 5, i32 42, metadata !37, i32 0} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 7, i32 1, metadata !48, null}
!50 = metadata !{i32 8, i32 1, metadata !48, null}
!51 = metadata !{i32 7, i32 3, metadata !52, metadata !58}
!52 = metadata !{i32 786443, metadata !53, i32 6, i32 34, metadata !16, i32 0} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 786478, i32 0, metadata !16, metadata !"xilly_puts", metadata !"xilly_puts", metadata !"", metadata !16, i32 6, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 6} ; [ DW_TAG_subprogram ]
!54 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!55 = metadata !{null, metadata !56}
!56 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ]
!57 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_const_type ]
!58 = metadata !{i32 12, i32 3, metadata !48, null}
!59 = metadata !{i32 8, i32 5, metadata !60, metadata !58}
!60 = metadata !{i32 786443, metadata !52, i32 7, i32 16, metadata !16, i32 1} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 9, i32 5, metadata !60, metadata !58}
!62 = metadata !{i32 10, i32 3, metadata !60, metadata !58}
!63 = metadata !{i32 15, i32 3, metadata !48, null}
!64 = metadata !{i32 786688, metadata !48, metadata !"r", metadata !37, i32 10, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !37, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!66 = metadata !{i32 16, i32 3, metadata !48, null}
!67 = metadata !{i32 786688, metadata !48, metadata !"g", metadata !37, i32 10, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!68 = metadata !{i32 17, i32 3, metadata !48, null}
!69 = metadata !{i32 786688, metadata !48, metadata !"b", metadata !37, i32 10, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 7, i32 3, metadata !52, metadata !71}
!71 = metadata !{i32 20, i32 3, metadata !48, null}
!72 = metadata !{i32 8, i32 5, metadata !60, metadata !71}
!73 = metadata !{i32 9, i32 5, metadata !60, metadata !71}
!74 = metadata !{i32 10, i32 3, metadata !60, metadata !71}
!75 = metadata !{i32 21, i32 3, metadata !48, null}
!76 = metadata !{i32 22, i32 3, metadata !48, null}
!77 = metadata !{i32 23, i32 3, metadata !48, null}
!78 = metadata !{i32 24, i32 3, metadata !48, null}
!79 = metadata !{i32 25, i32 3, metadata !48, null}
!80 = metadata !{i32 7, i32 3, metadata !52, metadata !81}
!81 = metadata !{i32 26, i32 3, metadata !48, null}
!82 = metadata !{i32 8, i32 5, metadata !60, metadata !81}
!83 = metadata !{i32 9, i32 5, metadata !60, metadata !81}
!84 = metadata !{i32 10, i32 3, metadata !60, metadata !81}
!85 = metadata !{i32 29, i32 3, metadata !48, null}
!86 = metadata !{i32 786688, metadata !48, metadata !"y", metadata !37, i32 10, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 33, i32 3, metadata !48, null}
!88 = metadata !{i32 34, i32 1, metadata !48, null}
!89 = metadata !{i32 7, i32 3, metadata !52, null}
!90 = metadata !{i32 8, i32 5, metadata !60, null}
!91 = metadata !{i32 9, i32 5, metadata !60, null}
!92 = metadata !{i32 10, i32 3, metadata !60, null}
!93 = metadata !{i32 11, i32 1, metadata !52, null}
!94 = metadata !{i32 786689, metadata !95, metadata !"val", metadata !16, i32 16777246, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 786478, i32 0, metadata !16, metadata !"xilly_decprint", metadata !"xilly_decprint", metadata !"", metadata !16, i32 30, metadata !96, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 30} ; [ DW_TAG_subprogram ]
!96 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!97 = metadata !{null, metadata !22, metadata !98}
!98 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_const_type ]
!99 = metadata !{i32 30, i32 36, metadata !95, null}
!100 = metadata !{i32 786688, metadata !101, metadata !"out", metadata !16, i32 33, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 786443, metadata !95, i32 30, i32 59, metadata !16, i32 5} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 88, i64 8, i32 0, i32 0, metadata !18, metadata !103, i32 0, i32 0} ; [ DW_TAG_array_type ]
!103 = metadata !{metadata !104}
!104 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ]
!105 = metadata !{i32 33, i32 8, metadata !101, null}
!106 = metadata !{i32 786688, metadata !101, metadata !"v", metadata !16, i32 36, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 36, i32 19, metadata !101, null}
!108 = metadata !{i32 38, i32 8, metadata !109, null}
!109 = metadata !{i32 786443, metadata !101, i32 38, i32 3, metadata !16, i32 6} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 40, i32 5, metadata !111, null}
!111 = metadata !{i32 786443, metadata !109, i32 38, i32 24, metadata !16, i32 7} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 41, i32 7, metadata !113, null}
!113 = metadata !{i32 786443, metadata !111, i32 40, i32 30, metadata !16, i32 8} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 42, i32 7, metadata !113, null}
!115 = metadata !{i32 786688, metadata !111, metadata !"x", metadata !16, i32 39, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 43, i32 5, metadata !113, null}
!117 = metadata !{i32 45, i32 5, metadata !111, null}
!118 = metadata !{i32 47, i32 5, metadata !111, null}
!119 = metadata !{i32 786688, metadata !101, metadata !"first", metadata !16, i32 35, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 48, i32 7, metadata !111, null}
!121 = metadata !{i32 38, i32 19, metadata !109, null}
!122 = metadata !{i32 786688, metadata !101, metadata !"i", metadata !16, i32 34, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 51, i32 3, metadata !101, null}
!124 = metadata !{i32 7, i32 3, metadata !52, metadata !125}
!125 = metadata !{i32 53, i32 3, metadata !101, null}
!126 = metadata !{i32 8, i32 5, metadata !60, metadata !125}
!127 = metadata !{i32 9, i32 5, metadata !60, metadata !125}
!128 = metadata !{i32 10, i32 3, metadata !60, metadata !125}
!129 = metadata !{i32 54, i32 1, metadata !101, null}
