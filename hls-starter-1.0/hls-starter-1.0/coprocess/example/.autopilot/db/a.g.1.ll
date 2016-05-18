; ModuleID = 'C:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0/coprocess/example/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@.str = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str3 = private unnamed_addr constant [16 x i8] c"Pixel incoming\0A\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str4 = private unnamed_addr constant [3 x i8] c"r=\00", align 1 ; [#uses=1 type=[3 x i8]*]
@.str5 = private unnamed_addr constant [4 x i8] c" g=\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str6 = private unnamed_addr constant [4 x i8] c" b=\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1 ; [#uses=1 type=[2 x i8]*]
@debug_ready = common global i8 0, align 1        ; [#uses=1 type=i8*]
@debug_out = common global i8 0, align 1          ; [#uses=1 type=i8*]
@powers10 = internal unnamed_addr constant [10 x i32] [i32 1000000000, i32 100000000, i32 10000000, i32 1000000, i32 100000, i32 10000, i32 1000, i32 100, i32 10, i32 1], align 4 ; [#uses=1 type=[10 x i32]*]
@str = internal constant [17 x i8] c"xillybus_wrapper\00" ; [#uses=1 type=[17 x i8]*]

; [#uses=0]
define void @xillybus_wrapper(i32* %in, i32* %out) nounwind {
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %in}, i64 0, metadata !40), !dbg !41 ; [debug line = 5:28] [debug variable = in]
  call void @llvm.dbg.value(metadata !{i32* %out}, i64 0, metadata !42), !dbg !43 ; [debug line = 5:37] [debug variable = out]
  call void (...)* @_ssdm_op_SpecInterface(i32* %in, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !44 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %out, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !46 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !47 ; [debug line = 8:1]
  call fastcc void @xilly_puts(i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0)), !dbg !48 ; [debug line = 12:3]
  %in.load = load i32* %in, align 4, !dbg !49     ; [#uses=3 type=i32] [debug line = 15:3]
  %tmp = lshr i32 %in.load, 16, !dbg !49          ; [#uses=1 type=i32] [debug line = 15:3]
  %r = and i32 %tmp, 255, !dbg !49                ; [#uses=2 type=i32] [debug line = 15:3]
  call void @llvm.dbg.value(metadata !{i32 %r}, i64 0, metadata !50), !dbg !49 ; [debug line = 15:3] [debug variable = r]
  %tmp.1 = lshr i32 %in.load, 8, !dbg !52         ; [#uses=1 type=i32] [debug line = 16:3]
  %g = and i32 %tmp.1, 255, !dbg !52              ; [#uses=2 type=i32] [debug line = 16:3]
  call void @llvm.dbg.value(metadata !{i32 %g}, i64 0, metadata !53), !dbg !52 ; [debug line = 16:3] [debug variable = g]
  %b = and i32 %in.load, 255, !dbg !54            ; [#uses=2 type=i32] [debug line = 17:3]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !55), !dbg !54 ; [debug line = 17:3] [debug variable = b]
  call fastcc void @xilly_puts(i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0)), !dbg !56 ; [debug line = 20:3]
  call fastcc void @xilly_decprint(i32 %r), !dbg !57 ; [debug line = 21:3]
  call fastcc void @xilly_puts(i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0)), !dbg !58 ; [debug line = 22:3]
  call fastcc void @xilly_decprint(i32 %g), !dbg !59 ; [debug line = 23:3]
  call fastcc void @xilly_puts(i8* getelementptr inbounds ([4 x i8]* @.str6, i32 0, i32 0)), !dbg !60 ; [debug line = 24:3]
  call fastcc void @xilly_decprint(i32 %b), !dbg !61 ; [debug line = 25:3]
  call fastcc void @xilly_puts(i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)), !dbg !62 ; [debug line = 26:3]
  %tmp.2 = add i32 %r, %b, !dbg !63               ; [#uses=1 type=i32] [debug line = 29:3]
  %tmp.3 = add i32 %tmp.2, %g, !dbg !63           ; [#uses=1 type=i32] [debug line = 29:3]
  %y = udiv i32 %tmp.3, 3, !dbg !63               ; [#uses=1 type=i32] [debug line = 29:3]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !64), !dbg !63 ; [debug line = 29:3] [debug variable = y]
  store i32 %y, i32* %out, align 4, !dbg !65      ; [debug line = 33:3]
  ret void, !dbg !66                              ; [debug line = 34:1]
}

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=6]
define internal fastcc void @xilly_puts(i8* %str) nounwind {
  call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !67), !dbg !68 ; [debug line = 6:29] [debug variable = str]
  br label %1, !dbg !69                           ; [debug line = 7:3]

; <label>:1                                       ; preds = %2, %0
  %.0.rec = phi i32 [ 0, %0 ], [ %.rec, %2 ]      ; [#uses=2 type=i32]
  %str.addr = getelementptr i8* %str, i32 %.0.rec ; [#uses=1 type=i8*]
  %str.load = load i8* %str.addr, align 1, !dbg !69 ; [#uses=2 type=i8] [debug line = 7:3]
  %tmp = icmp eq i8 %str.load, 0, !dbg !69        ; [#uses=1 type=i1] [debug line = 7:3]
  br i1 %tmp, label %3, label %.preheader.preheader, !dbg !69 ; [debug line = 7:3]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !71                  ; [debug line = 8:5]

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %debug_ready.load = load volatile i8* @debug_ready, align 1, !dbg !71 ; [#uses=1 type=i8] [debug line = 8:5]
  %tmp.4 = and i8 %debug_ready.load, 1, !dbg !71  ; [#uses=1 type=i8] [debug line = 8:5]
  %tmp.5 = icmp eq i8 %tmp.4, 0, !dbg !71         ; [#uses=1 type=i1] [debug line = 8:5]
  br i1 %tmp.5, label %.preheader, label %2, !dbg !71 ; [debug line = 8:5]

; <label>:2                                       ; preds = %.preheader
  %.rec = add i32 %.0.rec, 1, !dbg !73            ; [#uses=1 type=i32] [debug line = 9:5]
  store volatile i8 %str.load, i8* @debug_out, align 1, !dbg !73 ; [debug line = 9:5]
  br label %1, !dbg !74                           ; [debug line = 10:3]

; <label>:3                                       ; preds = %1
  ret void, !dbg !75                              ; [debug line = 11:1]
}

; [#uses=3]
define internal fastcc void @xilly_decprint(i32 %val) nounwind {
  %out = alloca [11 x i8], align 1                ; [#uses=3 type=[11 x i8]*]
  call void @llvm.dbg.value(metadata !{i32 %val}, i64 0, metadata !76), !dbg !77 ; [debug line = 30:36] [debug variable = val]
  call void @llvm.dbg.declare(metadata !{[11 x i8]* %out}, metadata !78), !dbg !83 ; [debug line = 33:8] [debug variable = out]
  call void @llvm.dbg.value(metadata !{i32 %val}, i64 0, metadata !84), !dbg !85 ; [debug line = 36:19] [debug variable = v]
  br label %1, !dbg !86                           ; [debug line = 38:8]

; <label>:1                                       ; preds = %3, %0
  %first = phi i32 [ 9, %0 ], [ %first.1, %3 ]    ; [#uses=3 type=i32]
  %first.2 = phi i32 [ 0, %0 ], [ %i, %3 ]        ; [#uses=6 type=i32]
  %v = phi i32 [ %val, %0 ], [ %v.1.lcssa, %3 ]   ; [#uses=1 type=i32]
  %exitcond = icmp eq i32 %first.2, 10, !dbg !86  ; [#uses=1 type=i1] [debug line = 38:8]
  br i1 %exitcond, label %4, label %.preheader.preheader, !dbg !86 ; [debug line = 38:8]

.preheader.preheader:                             ; preds = %1
  %powers10.addr = getelementptr inbounds [10 x i32]* @powers10, i32 0, i32 %first.2, !dbg !88 ; [#uses=1 type=i32*] [debug line = 40:5]
  %powers10.load = load i32* %powers10.addr, align 4, !dbg !88 ; [#uses=4 type=i32] [debug line = 40:5]
  br label %.preheader, !dbg !88                  ; [debug line = 40:5]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %v.1 = phi i32 [ %v.2, %2 ], [ %v, %.preheader.preheader ] ; [#uses=3 type=i32]
  %x = phi i8 [ %x.1, %2 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %powers10.load) nounwind
  %tmp = icmp ult i32 %v.1, %powers10.load, !dbg !88 ; [#uses=1 type=i1] [debug line = 40:5]
  br i1 %tmp, label %3, label %2, !dbg !88        ; [debug line = 40:5]

; <label>:2                                       ; preds = %.preheader
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %powers10.load) nounwind
  %v.2 = sub i32 %v.1, %powers10.load, !dbg !90   ; [#uses=1 type=i32] [debug line = 41:7]
  call void @llvm.dbg.value(metadata !{i32 %v.2}, i64 0, metadata !84), !dbg !90 ; [debug line = 41:7] [debug variable = v]
  %x.1 = add i8 %x, 1, !dbg !92                   ; [#uses=1 type=i8] [debug line = 42:7]
  call void @llvm.dbg.value(metadata !{i8 %x.1}, i64 0, metadata !93), !dbg !92 ; [debug line = 42:7] [debug variable = x]
  br label %.preheader, !dbg !94                  ; [debug line = 43:5]

; <label>:3                                       ; preds = %.preheader
  %x.0.lcssa = phi i8 [ %x, %.preheader ]         ; [#uses=2 type=i8]
  %v.1.lcssa = phi i32 [ %v.1, %.preheader ]      ; [#uses=1 type=i32]
  %tmp.6 = or i8 %x.0.lcssa, 48, !dbg !95         ; [#uses=1 type=i8] [debug line = 45:5]
  %out.addr.2 = getelementptr inbounds [11 x i8]* %out, i32 0, i32 %first.2, !dbg !95 ; [#uses=1 type=i8*] [debug line = 45:5]
  store i8 %tmp.6, i8* %out.addr.2, align 1, !dbg !95 ; [debug line = 45:5]
  %tmp.7 = icmp ne i8 %x.0.lcssa, 0, !dbg !96     ; [#uses=1 type=i1] [debug line = 47:5]
  %tmp.8 = icmp sgt i32 %first, %first.2, !dbg !96 ; [#uses=1 type=i1] [debug line = 47:5]
  %or.cond = and i1 %tmp.7, %tmp.8, !dbg !96      ; [#uses=1 type=i1] [debug line = 47:5]
  call void @llvm.dbg.value(metadata !{i32 %first.2}, i64 0, metadata !97), !dbg !98 ; [debug line = 48:7] [debug variable = first]
  %first.1 = select i1 %or.cond, i32 %first.2, i32 %first, !dbg !96 ; [#uses=1 type=i32] [debug line = 47:5]
  call void @llvm.dbg.value(metadata !{i32 %first.1}, i64 0, metadata !97), !dbg !96 ; [debug line = 47:5] [debug variable = first]
  %i = add nsw i32 %first.2, 1, !dbg !99          ; [#uses=1 type=i32] [debug line = 38:19]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !100), !dbg !99 ; [debug line = 38:19] [debug variable = i]
  br label %1, !dbg !99                           ; [debug line = 38:19]

; <label>:4                                       ; preds = %1
  %first.0.lcssa = phi i32 [ %first, %1 ]         ; [#uses=1 type=i32]
  %out.addr = getelementptr inbounds [11 x i8]* %out, i32 0, i32 10, !dbg !101 ; [#uses=1 type=i8*] [debug line = 51:3]
  store i8 0, i8* %out.addr, align 1, !dbg !101   ; [debug line = 51:3]
  %out.addr.1 = getelementptr inbounds [11 x i8]* %out, i32 0, i32 %first.0.lcssa, !dbg !102 ; [#uses=1 type=i8*] [debug line = 53:3]
  call fastcc void @xilly_puts(i8* %out.addr.1), !dbg !102 ; [debug line = 53:3]
  ret void, !dbg !103                             ; [debug line = 54:1]
}

; [#uses=14]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_SpecKeepArrayLoad(...)

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
!16 = metadata !{i32 786478, i32 0, metadata !17, metadata !"xilly_puts", metadata !"xilly_puts", metadata !"", metadata !17, i32 6, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @xilly_puts, null, null, metadata !11, i32 6} ; [ DW_TAG_subprogram ]
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
!33 = metadata !{i32 786484, i32 0, metadata !30, metadata !"powers10", metadata !"powers10", metadata !"", metadata !17, i32 31, metadata !34, i32 1, i32 1, [10 x i32]* @powers10} ; [ DW_TAG_variable ]
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
!56 = metadata !{i32 20, i32 3, metadata !45, null}
!57 = metadata !{i32 21, i32 3, metadata !45, null}
!58 = metadata !{i32 22, i32 3, metadata !45, null}
!59 = metadata !{i32 23, i32 3, metadata !45, null}
!60 = metadata !{i32 24, i32 3, metadata !45, null}
!61 = metadata !{i32 25, i32 3, metadata !45, null}
!62 = metadata !{i32 26, i32 3, metadata !45, null}
!63 = metadata !{i32 29, i32 3, metadata !45, null}
!64 = metadata !{i32 786688, metadata !45, metadata !"y", metadata !6, i32 10, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 33, i32 3, metadata !45, null}
!66 = metadata !{i32 34, i32 1, metadata !45, null}
!67 = metadata !{i32 786689, metadata !16, metadata !"str", metadata !17, i32 16777222, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 6, i32 29, metadata !16, null}
!69 = metadata !{i32 7, i32 3, metadata !70, null}
!70 = metadata !{i32 786443, metadata !16, i32 6, i32 34, metadata !17, i32 0} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 8, i32 5, metadata !72, null}
!72 = metadata !{i32 786443, metadata !70, i32 7, i32 16, metadata !17, i32 1} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 9, i32 5, metadata !72, null}
!74 = metadata !{i32 10, i32 3, metadata !72, null}
!75 = metadata !{i32 11, i32 1, metadata !70, null}
!76 = metadata !{i32 786689, metadata !30, metadata !"val", metadata !17, i32 16777246, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!77 = metadata !{i32 30, i32 36, metadata !30, null}
!78 = metadata !{i32 786688, metadata !79, metadata !"out", metadata !17, i32 33, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 786443, metadata !30, i32 30, i32 59, metadata !17, i32 5} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 88, i64 8, i32 0, i32 0, metadata !22, metadata !81, i32 0, i32 0} ; [ DW_TAG_array_type ]
!81 = metadata !{metadata !82}
!82 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ]
!83 = metadata !{i32 33, i32 8, metadata !79, null}
!84 = metadata !{i32 786688, metadata !79, metadata !"v", metadata !17, i32 36, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 36, i32 19, metadata !79, null}
!86 = metadata !{i32 38, i32 8, metadata !87, null}
!87 = metadata !{i32 786443, metadata !79, i32 38, i32 3, metadata !17, i32 6} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 40, i32 5, metadata !89, null}
!89 = metadata !{i32 786443, metadata !87, i32 38, i32 24, metadata !17, i32 7} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 41, i32 7, metadata !91, null}
!91 = metadata !{i32 786443, metadata !89, i32 40, i32 30, metadata !17, i32 8} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 42, i32 7, metadata !91, null}
!93 = metadata !{i32 786688, metadata !89, metadata !"x", metadata !17, i32 39, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 43, i32 5, metadata !91, null}
!95 = metadata !{i32 45, i32 5, metadata !89, null}
!96 = metadata !{i32 47, i32 5, metadata !89, null}
!97 = metadata !{i32 786688, metadata !79, metadata !"first", metadata !17, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 48, i32 7, metadata !89, null}
!99 = metadata !{i32 38, i32 19, metadata !87, null}
!100 = metadata !{i32 786688, metadata !79, metadata !"i", metadata !17, i32 34, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 51, i32 3, metadata !79, null}
!102 = metadata !{i32 53, i32 3, metadata !79, null}
!103 = metadata !{i32 54, i32 1, metadata !79, null}
