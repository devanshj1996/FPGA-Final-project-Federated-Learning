; ModuleID = '/nethome/djohri7/FPGA/Final_Project/proj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 3, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 3, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: noinline
define void @apatb_tiled_conv_ir([28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1" %input_feature_map, [1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1" %layer_weights, [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="144" %linear_weights, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="10" %output_feature_map) local_unnamed_addr #0 {
entry:
  %input_feature_map_copy = alloca [28 x [28 x i16]], align 512
  %layer_weights_copy = alloca [1 x [5 x [5 x i16]]], align 512
  %linear_weights_copy = alloca [144 x [10 x i16]], align 512
  %output_feature_map_copy = alloca [10 x i16], align 512
  %0 = bitcast [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %linear_weights to [144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]*
  %1 = bitcast %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* %output_feature_map to [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]*
  call fastcc void @copy_in([28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* nonnull %input_feature_map, [28 x [28 x i16]]* nonnull align 512 %input_feature_map_copy, [1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* nonnull %layer_weights, [1 x [5 x [5 x i16]]]* nonnull align 512 %layer_weights_copy, [144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* nonnull %0, [144 x [10 x i16]]* nonnull align 512 %linear_weights_copy, [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %1, [10 x i16]* nonnull align 512 %output_feature_map_copy)
  %2 = getelementptr [144 x [10 x i16]], [144 x [10 x i16]]* %linear_weights_copy, i32 0, i32 0
  %3 = getelementptr [10 x i16], [10 x i16]* %output_feature_map_copy, i32 0, i32 0
  call void @apatb_tiled_conv_hw([28 x [28 x i16]]* %input_feature_map_copy, [1 x [5 x [5 x i16]]]* %layer_weights_copy, [10 x i16]* %2, i16* %3)
  call void @copy_back([28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %input_feature_map, [28 x [28 x i16]]* %input_feature_map_copy, [1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %layer_weights, [1 x [5 x [5 x i16]]]* %layer_weights_copy, [144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %0, [144 x [10 x i16]]* %linear_weights_copy, [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %1, [10 x i16]* %output_feature_map_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias readonly, [28 x [28 x i16]]* noalias align 512, [1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly, [1 x [5 x [5 x i16]]]* noalias align 512, [144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias readonly, [144 x [10 x i16]]* noalias align 512, [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias readonly, [10 x i16]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a28a28struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.49"([28 x [28 x i16]]* align 512 %1, [28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %0)
  call fastcc void @"onebyonecpy_hls.p0a1a5a5struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([1 x [5 x [5 x i16]]]* align 512 %3, [1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %2)
  call fastcc void @"onebyonecpy_hls.p0a144a10struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.35"([144 x [10 x i16]]* align 512 %5, [144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %4)
  call fastcc void @"onebyonecpy_hls.p0a10struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([10 x i16]* align 512 %7, [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a28a28struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias, [28 x [28 x i16]]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %0, null
  %3 = icmp eq [28 x [28 x i16]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %5 = getelementptr [28 x [28 x i16]], [28 x [28 x i16]]* %1, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315
  %dst.addr5.0.0.014 = getelementptr [28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]], [28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %6 = load i16, i16* %5, align 2
  store i16 %6, i16* %dst.addr5.0.0.014, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 28
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 28
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a1a5a5struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([1 x [5 x [5 x i16]]]* noalias align 512, [1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1 x [5 x [5 x i16]]]* %0, null
  %3 = icmp eq [1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %for.loop

for.loop:                                         ; preds = %entry
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx324 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop2
  %for.loop.idx923 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8 ]
  %src.addr12.0.0.021 = getelementptr [1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]], [1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %1, i64 0, i64 0, i64 %for.loop.idx324, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %5 = getelementptr [1 x [5 x [5 x i16]]], [1 x [5 x [5 x i16]]]* %0, i64 0, i64 0, i64 %for.loop.idx324, i64 %for.loop.idx923
  %6 = load i16, i16* %src.addr12.0.0.021, align 2
  store i16 %6, i16* %5, align 2
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx923, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 5
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx324, 1
  %exitcond26 = icmp ne i64 %for.loop.idx3.next, 5
  br i1 %exitcond26, label %for.loop2, label %ret

ret:                                              ; preds = %for.loop2.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a144a10struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias, [144 x [10 x i16]]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %0, null
  %3 = icmp eq [144 x [10 x i16]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %5 = getelementptr [144 x [10 x i16]], [144 x [10 x i16]]* %1, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315
  %dst.addr5.0.0.014 = getelementptr [144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]], [144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %6 = load i16, i16* %5, align 2
  store i16 %6, i16* %dst.addr5.0.0.014, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 10
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 144
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a10struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([10 x i16]* noalias align 512, [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [10 x i16]* %0, null
  %3 = icmp eq [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = getelementptr [10 x i16], [10 x i16]* %0, i64 0, i64 %for.loop.idx7
  %6 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %6, i16* %5, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 10
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias, [28 x [28 x i16]]* noalias readonly align 512, [1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias, [1 x [5 x [5 x i16]]]* noalias readonly align 512, [144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias, [144 x [10 x i16]]* noalias readonly align 512, [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias, [10 x i16]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a28a28struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %0, [28 x [28 x i16]]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a1a5a5struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.43"([1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %2, [1 x [5 x [5 x i16]]]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a144a10struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %4, [144 x [10 x i16]]* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0a10struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.29"([10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %6, [10 x i16]* align 512 %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a10struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.29"([10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias, [10 x i16]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %0, null
  %3 = icmp eq [10 x i16]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [10 x i16], [10 x i16]* %1, i64 0, i64 %for.loop.idx7
  %dst.addr.0.0.06 = getelementptr [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %6 = load i16, i16* %5, align 2
  store i16 %6, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 10
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a144a10struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.35"([144 x [10 x i16]]* noalias align 512, [144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [144 x [10 x i16]]* %0, null
  %3 = icmp eq [144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %src.addr6.0.0.013 = getelementptr [144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]], [144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %1, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %5 = getelementptr [144 x [10 x i16]], [144 x [10 x i16]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315
  %6 = load i16, i16* %src.addr6.0.0.013, align 2
  store i16 %6, i16* %5, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 10
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 144
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a1a5a5struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.43"([1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias, [1 x [5 x [5 x i16]]]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %0, null
  %3 = icmp eq [1 x [5 x [5 x i16]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %for.loop

for.loop:                                         ; preds = %entry
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx324 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop2
  %for.loop.idx923 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8 ]
  %5 = getelementptr [1 x [5 x [5 x i16]]], [1 x [5 x [5 x i16]]]* %1, i64 0, i64 0, i64 %for.loop.idx324, i64 %for.loop.idx923
  %dst.addr11.0.0.022 = getelementptr [1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]], [1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %0, i64 0, i64 0, i64 %for.loop.idx324, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %6 = load i16, i16* %5, align 2
  store i16 %6, i16* %dst.addr11.0.0.022, align 2
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx923, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 5
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx324, 1
  %exitcond26 = icmp ne i64 %for.loop.idx3.next, 5
  br i1 %exitcond26, label %for.loop2, label %ret

ret:                                              ; preds = %for.loop2.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a28a28struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.49"([28 x [28 x i16]]* noalias align 512, [28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [28 x [28 x i16]]* %0, null
  %3 = icmp eq [28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %src.addr6.0.0.013 = getelementptr [28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]], [28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %1, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %5 = getelementptr [28 x [28 x i16]], [28 x [28 x i16]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315
  %6 = load i16, i16* %src.addr6.0.0.013, align 2
  store i16 %6, i16* %5, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 28
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 28
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

declare void @apatb_tiled_conv_hw([28 x [28 x i16]]*, [1 x [5 x [5 x i16]]]*, [10 x i16]*, i16*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias, [28 x [28 x i16]]* noalias readonly align 512, [1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias, [1 x [5 x [5 x i16]]]* noalias readonly align 512, [144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias, [144 x [10 x i16]]* noalias readonly align 512, [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias, [10 x i16]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a10struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.29"([10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %6, [10 x i16]* align 512 %7)
  ret void
}

define void @tiled_conv_hw_stub_wrapper([28 x [28 x i16]]*, [1 x [5 x [5 x i16]]]*, [10 x i16]*, i16*) #4 {
entry:
  %4 = alloca [28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]
  %5 = alloca [1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]
  %6 = alloca [144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]
  %7 = alloca [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]
  %8 = bitcast [10 x i16]* %2 to [144 x [10 x i16]]*
  %9 = bitcast i16* %3 to [10 x i16]*
  call void @copy_out([28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %4, [28 x [28 x i16]]* %0, [1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %5, [1 x [5 x [5 x i16]]]* %1, [144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %6, [144 x [10 x i16]]* %8, [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %7, [10 x i16]* %9)
  %10 = bitcast [144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %6 to [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]*
  %11 = bitcast [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %7 to %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"*
  call void @tiled_conv_hw_stub([28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %4, [1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %5, [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %10, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* %11)
  call void @copy_in([28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %4, [28 x [28 x i16]]* %0, [1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %5, [1 x [5 x [5 x i16]]]* %1, [144 x [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %6, [144 x [10 x i16]]* %8, [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %7, [10 x i16]* %9)
  ret void
}

declare void @tiled_conv_hw_stub([28 x [28 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]*, [1 x [5 x [5 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]*, [10 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]*, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
