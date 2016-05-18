# 1 "C:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0/coprocess/example/.autopilot/db/main.pragma.1.c"
# 1 "C:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0/coprocess/example/.autopilot/db/main.pragma.1.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 148 "<built-in>" 3
# 1 "<command line>" 1







# 1 "C:/Xilinx/Vivado_HLS/2014.4/common/technology/autopilot\\etc/autopilot_ssdm_op.h" 1
/* autopilot_ssdm_op.h*/
/*
#-  (c) Copyright 2011-2014 Xilinx, Inc. All rights reserved.
#-
#-  This file contains confidential and proprietary information
#-  of Xilinx, Inc. and is protected under U.S. and
#-  international copyright and other intellectual property
#-  laws.
#-
#-  DISCLAIMER
#-  This disclaimer is not a license and does not grant any
#-  rights to the materials distributed herewith. Except as
#-  otherwise provided in a valid license issued to you by
#-  Xilinx, and to the maximum extent permitted by applicable
#-  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#-  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
#-  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#-  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#-  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#-  (2) Xilinx shall not be liable (whether in contract or tort,
#-  including negligence, or under any other theory of
#-  liability) for any loss or damage of any kind or nature
#-  related to, arising under or in connection with these
#-  materials, including for any direct, or any indirect,
#-  special, incidental, or consequential loss or damage
#-  (including loss of data, profits, goodwill, or any type of
#-  loss or damage suffered as a result of any action brought
#-  by a third party) even if such damage or loss was
#-  reasonably foreseeable or Xilinx had been advised of the
#-  possibility of the same.
#-
#-  CRITICAL APPLICATIONS
#-  Xilinx products are not designed or intended to be fail-
#-  safe, or for use in any application requiring fail-safe
#-  performance, such as life-support or safety devices or
#-  systems, Class III medical devices, nuclear facilities,
#-  applications related to the deployment of airbags, or any
#-  other applications that could lead to death, personal
#-  injury, or severe property or environmental damage
#-  (individually and collectively, "Critical
#-  Applications"). Customer assumes the sole risk and
#-  liability of any use of Xilinx products in Critical
#-  Applications, subject only to applicable laws and
#-  regulations governing limitations on product liability.
#-
#-  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#-  PART OF THIS FILE AT ALL TIMES. 
#- ************************************************************************

 *
 * $Id$
 */
# 278 "C:/Xilinx/Vivado_HLS/2014.4/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
/*#define AP_SPEC_ATTR __attribute__ ((pure))*/



    /****** SSDM Intrinsics: OPERATIONS ***/
    // Interface operations
    //typedef unsigned int __attribute__ ((bitwidth(1))) _uint1_;
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    //_uint1_ _ssdm_op_IfNbRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfNbWrite() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanWrite() SSDM_OP_ATTR;

    // Stream Intrinsics
    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    //_uint1_  _ssdm_StreamNbRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamNbWrite() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanWrite() SSDM_OP_ATTR;

    // Misc
    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));

    /* SSDM Intrinsics: SPECIFICATIONS */
    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));
    /*void* _ssdm_op_SpecProcess() SSDM_SPEC_ATTR;
    void* _ssdm_op_SpecEdge() SSDM_SPEC_ATTR; */

    /* Presynthesis directive functions */
    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));


/*#define _ssdm_op_WaitUntil(X) while (!(X)) _ssdm_op_Wait(1);
#define _ssdm_op_Delayed(X) X */
# 9 "<command line>" 2
# 1 "<built-in>" 2
# 1 "C:/Users/marcus255/Downloads/xillydemo_ise/hls-starter-1.0/hls-starter-1.0/coprocess/example/.autopilot/db/main.pragma.1.c" 2
# 1 "coprocess/example/src/main.c"
# 1 "coprocess/example/src/main.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 148 "<built-in>" 3
# 1 "<command line>" 1







# 1 "C:/Xilinx/Vivado_HLS/2014.4/common/technology/autopilot\\etc/autopilot_ssdm_op.h" 1
/* autopilot_ssdm_op.h*/
/*
#-  (c) Copyright 2011-2014 Xilinx, Inc. All rights reserved.
#-
#-  This file contains confidential and proprietary information
#-  of Xilinx, Inc. and is protected under U.S. and
#-  international copyright and other intellectual property
#-  laws.
#-
#-  DISCLAIMER
#-  This disclaimer is not a license and does not grant any
#-  rights to the materials distributed herewith. Except as
#-  otherwise provided in a valid license issued to you by
#-  Xilinx, and to the maximum extent permitted by applicable
#-  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#-  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
#-  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#-  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#-  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#-  (2) Xilinx shall not be liable (whether in contract or tort,
#-  including negligence, or under any other theory of
#-  liability) for any loss or damage of any kind or nature
#-  related to, arising under or in connection with these
#-  materials, including for any direct, or any indirect,
#-  special, incidental, or consequential loss or damage
#-  (including loss of data, profits, goodwill, or any type of
#-  loss or damage suffered as a result of any action brought
#-  by a third party) even if such damage or loss was
#-  reasonably foreseeable or Xilinx had been advised of the
#-  possibility of the same.
#-
#-  CRITICAL APPLICATIONS
#-  Xilinx products are not designed or intended to be fail-
#-  safe, or for use in any application requiring fail-safe
#-  performance, such as life-support or safety devices or
#-  systems, Class III medical devices, nuclear facilities,
#-  applications related to the deployment of airbags, or any
#-  other applications that could lead to death, personal
#-  injury, or severe property or environmental damage
#-  (individually and collectively, "Critical
#-  Applications"). Customer assumes the sole risk and
#-  liability of any use of Xilinx products in Critical
#-  Applications, subject only to applicable laws and
#-  regulations governing limitations on product liability.
#-
#-  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#-  PART OF THIS FILE AT ALL TIMES. 
#- ************************************************************************

 *
 * $Id$
 */
# 278 "C:/Xilinx/Vivado_HLS/2014.4/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
/*#define AP_SPEC_ATTR __attribute__ ((pure))*/



    /****** SSDM Intrinsics: OPERATIONS ***/
    // Interface operations
    //typedef unsigned int __attribute__ ((bitwidth(1))) _uint1_;
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    //_uint1_ _ssdm_op_IfNbRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfNbWrite() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanWrite() SSDM_OP_ATTR;

    // Stream Intrinsics
    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    //_uint1_  _ssdm_StreamNbRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamNbWrite() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanWrite() SSDM_OP_ATTR;

    // Misc
    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));

    /* SSDM Intrinsics: SPECIFICATIONS */
    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));
    /*void* _ssdm_op_SpecProcess() SSDM_SPEC_ATTR;
    void* _ssdm_op_SpecEdge() SSDM_SPEC_ATTR; */

    /* Presynthesis directive functions */
    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));


/*#define _ssdm_op_WaitUntil(X) while (!(X)) _ssdm_op_Wait(1);
#define _ssdm_op_Delayed(X) X */
# 9 "<command line>" 2
# 1 "<built-in>" 2
# 1 "coprocess/example/src/main.c" 2
# 1 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\math.h" 1 3
/* 
 * math.h
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is a part of the mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER within the package.
 *
 * Mathematical functions.
 *
 */
# 16 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\math.h" 3


/* All the headers include this file. */


# 1 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\_mingw.h" 1 3

/*
 * _mingw.h
 *
 * Mingw specific macros included by ALL include files.
 *
 * This file is part of the Mingw32 package.
 *
 * Contributors:
 *  Created by Mumit Khan  <khan@xraylith.wisc.edu>
 *
 *  THIS SOFTWARE IS NOT COPYRIGHTED
 *
 *  This source code is offered for use in the public domain. You may
 *  use, modify or distribute it freely.
 *
 *  This code is distributed in the hope that it will be useful but
 *  WITHOUT ANY WARRANTY. ALL WARRANTIES, EXPRESS OR IMPLIED ARE HEREBY
 *  DISCLAIMED. This includes but is not limited to warranties of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 */
# 32 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\_mingw.h" 3
# 32 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\_mingw.h" 3



/* These are defined by the user (or the compiler)
   to specify how identifiers are imported from a DLL.

   __DECLSPEC_SUPPORTED            Defined if dllimport attribute is supported.
   __MINGW_IMPORT                  The attribute definition to specify imported
                                   variables/functions.
   _CRTIMP                         As above.  For MS compatibility.
   __MINGW32_VERSION               Runtime version.
   __MINGW32_MAJOR_VERSION         Runtime major version.
   __MINGW32_MINOR_VERSION         Runtime minor version.
   __MINGW32_BUILD_DATE            Runtime build date.

   Macros to enable MinGW features which deviate from standard MSVC
   compatible behaviour; these may be specified directly in user code,
   activated implicitly, (e.g. by specifying _POSIX_C_SOURCE or such),
   or by inclusion in __MINGW_FEATURES__:

   __USE_MINGW_ANSI_STDIO          Select a more ANSI C99 compatible
                                   implementation of printf() and friends.

   Other macros:

   __int64                         define to be long long.  Using a typedef
                                   doesn't work for "unsigned __int64"

   All headers should include this first, and then use __DECLSPEC_SUPPORTED
   to choose between the old ``__imp__name'' style or __MINGW_IMPORT
   style declarations.  */


/* Manifest definitions identifying the flag bits, controlling activation
 * of MinGW features, as specified by the user in __MINGW_FEATURES__.
 */

/*
 * The following three are not yet formally supported; they are
 * included here, to document anticipated future usage.
 */




/* Try to avoid problems with outdated checks for GCC __attribute__ support.  */
# 122 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\_mingw.h" 3
 /* Note the extern. This is needed to work around GCC's
      limitations in handling dllimport attribute.  */
# 141 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\_mingw.h" 3
/*
 * The next two defines can cause problems if user code adds the
 * __cdecl attribute like so:
 * void __attribute__ ((__cdecl)) foo(void); 
 */
# 231 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\_mingw.h" 3
/* Attribute `nonnull' was valid as of gcc 3.3.  We don't use GCC's
   variadiac macro facility, because variadic macros cause syntax
   errors with  --traditional-cpp.  */
# 253 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\_mingw.h" 3
/* TODO: Mark (almost) all CRT functions as __MINGW_NOTHROW.  This will
allow GCC to optimize away some EH unwind code, at least in DW2 case.  */


/*  High byte is the major version, low byte is the minor. */



/* Activation of MinGW specific extended features:
 */

/*
 * If user didn't specify it explicitly...
 */
# 278 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\_mingw.h" 3
 /*
    * otherwise use whatever __MINGW_FEATURES__ specifies...
    */
# 20 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\math.h" 2 3

/*
 * Types for the _exception structure.
 */
# 32 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\math.h" 3
/*
 * Exception types with non-ANSI names for compatibility.
 */
# 50 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\math.h" 3
/* Traditional/XOPEN math constants (double precison) */
# 67 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\math.h" 3
/* These are also defined in Mingw float.h; needed here as well to work 
   around GCC build issues.  */



/* IEEE 754 classication */
# 92 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\math.h" 3
/*
 * HUGE_VAL is returned by strtod when the value would overflow the
 * representation of 'double'. There are other uses as well.
 *
 * __imp__HUGE is a pointer to the actual variable _HUGE in
 * MSVCRT.DLL. If we used _HUGE directly we would get a pointer
 * to a thunk function.
 *
 * NOTE: The CRTDLL version uses _HUGE_dll instead.
 */
# 133 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\math.h" 3
struct _exception
{
 int type;
 char *name;
 double arg1;
 double arg2;
 double retval;
};

        double sin (double);
        double cos (double);
        double tan (double);
        double sinh (double);
        double cosh (double);
        double tanh (double);
        double asin (double);
        double acos (double);
        double atan (double);
        double atan2 (double, double);
        double exp (double);
        double log (double);
        double log10 (double);
        double pow (double, double);
        double sqrt (double);
        double ceil (double);
        double floor (double);
        double fabs (double);
        double ldexp (double, int);
        double frexp (double, int*);
        double modf (double, double*);
        double fmod (double, double);

/* Excess precision when using a 64-bit mantissa for FPU math ops can
   cause unexpected results with some of the MSVCRT math functions.  For
   example, unless the function return value is stored (truncating to
   53-bit mantissa), calls to pow with both x and y as integral values
   sometimes produce a non-integral result.
   One workaround is to reset the FPU env to 53-bit mantissa
   by a call to fesetenv (FE_PC53_ENV).  Amother is to force storage
   of the return value of individual math functions using wrappers.
   NB, using these wrappers will disable builtin math functions and
   hence disable the folding of function results at compile time when
   arguments are constant.  */
# 195 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\math.h" 3
/* For example, here is how to force the result of the pow function
   to be stored:   */
# 206 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\math.h" 3
/* Complex number (for _cabs). This is the MS version. The ISO
   C99 counterpart _Complex is an intrinsic type in GCC and
   'complex' is defined as a macro.  See complex.h  */
struct _complex
{
 double x; /* Real part */
 double y; /* Imaginary part */
};

        double _cabs (struct _complex);

        double _hypot (double, double);
        double _j0 (double);
        double _j1 (double);
        double _jn (int, double);
        double _y0 (double);
        double _y1 (double);
        double _yn (int, double);
        int _matherr (struct _exception *);

/* These are also declared in Mingw float.h; needed here as well to work 
   around GCC build issues.  */
/* BEGIN FLOAT.H COPY */
/*
 * IEEE recommended functions
 */

        double _chgsign (double);
        double _copysign (double, double);
        double _logb (double);
        double _nextafter (double, double);
        double _scalb (double, long);

        int _finite (double);
        int _fpclass (double);
        int _isnan (double);

/* END FLOAT.H COPY */


/*
 * Non-underscored versions of non-ANSI functions.
 * These reside in liboldnames.a.
 */



        double j0 (double);
        double j1 (double);
        double jn (int, double);
        double y0 (double);
        double y1 (double);
        double yn (int, double);

        double chgsign (double);
/*
 * scalb() is a GCC built-in.
 * Exclude this _scalb() stub; the semantics are incompatible
 * with the built-in implementation.
 *
_CRTIMP double __cdecl scalb (double, long);
 *
 */
        int finite (double);
        int fpclass (double);
# 285 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\math.h" 3
/* This require msvcr70.dll or higher. */
# 313 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\math.h" 3
/* Use the compiler's builtin define for FLT_EVAL_METHOD to
   set float_t and double_t.  */


typedef float float_t;
typedef double double_t;
# 331 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\math.h" 3
/* 7.12.3.1 */
/*
   Return values for fpclassify.
   These are based on Intel x87 fpu condition codes
   in the high byte of status word and differ from
   the return values for MS IEEE 754 extension _fpclass()
*/





/* 0x0200 is signbit mask */


/*
  We can't inline float or double, because we want to ensure truncation
  to semantic type before classification. 
  (A normal long double value might become subnormal when 
  converted to double, and zero when converted to float.)
*/

extern int __fpclassifyf (float);
extern int __fpclassify (double);
extern int __fpclassifyl (long double);
# 369 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\math.h" 3
/* 7.12.3.2 */


/* 7.12.3.3 */


/* 7.12.3.4 */
/* We don't need to worry about truncation here:
   A NaN stays a NaN. */
extern int __isnan (double);
extern int __isnanf (float);
extern int __isnanl (long double);
# 414 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\math.h" 3
/* 7.12.3.5 */


/* 7.12.3.6 The signbit macro */
extern int __signbit (double);
extern int __signbitf (float);
extern int __signbitl (long double);
# 445 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\math.h" 3
/* 7.12.4 Trigonometric functions: Double in C89 */
extern float sinf (float);
extern long double sinl (long double);

extern float cosf (float);
extern long double cosl (long double);

extern float tanf (float);
extern long double tanl (long double);

extern float asinf (float);
extern long double asinl (long double);

extern float acosf (float);
extern long double acosl (long double);

extern float atanf (float);
extern long double atanl (long double);

extern float atan2f (float, float);
extern long double atan2l (long double, long double);

/* 7.12.5 Hyperbolic functions: Double in C89  */
extern float sinhf (float);




extern long double sinhl (long double);

extern float coshf (float);




extern long double coshl (long double);

extern float tanhf (float);




extern long double tanhl (long double);

/* Inverse hyperbolic trig functions  */
/* 7.12.5.1 */
extern double acosh (double);
extern float acoshf (float);
extern long double acoshl (long double);

/* 7.12.5.2 */
extern double asinh (double);
extern float asinhf (float);
extern long double asinhl (long double);

/* 7.12.5.3 */
extern double atanh (double);
extern float atanhf (float);
extern long double atanhl (long double);

/* Exponentials and logarithms  */
/* 7.12.6.1 Double in C89 */
extern float expf (float);




extern long double expl (long double);

/* 7.12.6.2 */
extern double exp2(double);
extern float exp2f(float);
extern long double exp2l(long double);

/* 7.12.6.3 The expm1 functions */
/* TODO: These could be inlined */
extern double expm1(double);
extern float expm1f(float);
extern long double expm1l(long double);

/* 7.12.6.4 Double in C89 */
extern float frexpf (float, int*);




extern long double frexpl (long double, int*);

/* 7.12.6.5 */


extern int ilogb (double);
extern int ilogbf (float);
extern int ilogbl (long double);

/* 7.12.6.6  Double in C89 */
extern float ldexpf (float, int);




extern long double ldexpl (long double, int);

/* 7.12.6.7 Double in C89 */
extern float logf (float);
extern long double logl (long double);

/* 7.12.6.8 Double in C89 */
extern float log10f (float);
extern long double log10l (long double);

/* 7.12.6.9 */
extern double log1p(double);
extern float log1pf(float);
extern long double log1pl(long double);

/* 7.12.6.10 */
extern double log2 (double);
extern float log2f (float);
extern long double log2l (long double);

/* 7.12.6.11 */
extern double logb (double);
extern float logbf (float);
extern long double logbl (long double);

/* Inline versions.  GCC-4.0+ can do a better fast-math optimization
   with __builtins. */
# 601 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\math.h" 3
/* 7.12.6.12  Double in C89 */
extern float modff (float, float*);
extern long double modfl (long double, long double*);

/* 7.12.6.13 */
extern double scalbn (double, int);
extern float scalbnf (float, int);
extern long double scalbnl (long double, int);

extern double scalbln (double, long);
extern float scalblnf (float, long);
extern long double scalblnl (long double, long);

/* 7.12.7.1 */
/* Implementations adapted from Cephes versions */
extern double cbrt (double);
extern float cbrtf (float);
extern long double cbrtl (long double);

/* 7.12.7.2 The fabs functions: Double in C89 */
extern float fabsf (float x);
extern long double fabsl (long double x);

/* 7.12.7.3  */
extern double hypot (double, double); /* in libmoldname.a */
extern float hypotf (float, float);




extern long double hypotl (long double, long double);

/* 7.12.7.4 The pow functions. Double in C89 */
extern float powf (float, float);




extern long double powl (long double, long double);

/* 7.12.7.5 The sqrt functions. Double in C89. */
extern float sqrtf (float);
extern long double sqrtl (long double);

/* 7.12.8.1 The erf functions  */
extern double erf (double);
extern float erff (float);
extern long double erfl (long double);

/* 7.12.8.2 The erfc functions  */
extern double erfc (double);
extern float erfcf (float);
extern long double erfcl (long double);

/* 7.12.8.3 The lgamma functions */
extern double lgamma (double);
extern float lgammaf (float);
extern long double lgammal (long double);

/* 7.12.8.4 The tgamma functions */
extern double tgamma (double);
extern float tgammaf (float);
extern long double tgammal (long double);

/* 7.12.9.1 Double in C89 */
extern float ceilf (float);
extern long double ceill (long double);

/* 7.12.9.2 Double in C89 */
extern float floorf (float);
extern long double floorl (long double);

/* 7.12.9.3 */
extern double nearbyint ( double);
extern float nearbyintf (float);
extern long double nearbyintl (long double);

/* 7.12.9.4 */
/* round, using fpu control word settings */
extern double rint (double);
extern float rintf (float);
extern long double rintl (long double);

/* 7.12.9.5 */
extern long lrint (double);
extern long lrintf (float);
extern long lrintl (long double);

extern long long llrint (double);
extern long long llrintf (float);
extern long long llrintl (long double);

/* Inline versions of above. 
   GCC 4.0+ can do a better fast-math job with __builtins. */
# 768 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\math.h" 3
/* 7.12.9.6 */
/* round away from zero, regardless of fpu control word settings */
extern double round (double);
extern float roundf (float);
extern long double roundl (long double);

/* 7.12.9.7  */
extern long lround (double);
extern long lroundf (float);
extern long lroundl (long double);

extern long long llround (double);
extern long long llroundf (float);
extern long long llroundl (long double);

/* 7.12.9.8 */
/* round towards zero, regardless of fpu control word settings */
extern double trunc (double);
extern float truncf (float);
extern long double truncl (long double);

/* 7.12.10.1 Double in C89 */
extern float fmodf (float, float);
extern long double fmodl (long double, long double);

/* 7.12.10.2 */
extern double remainder (double, double);
extern float remainderf (float, float);
extern long double remainderl (long double, long double);

/* 7.12.10.3 */
extern double remquo(double, double, int *);
extern float remquof(float, float, int *);
extern long double remquol(long double, long double, int *);

/* 7.12.11.1 */
extern double copysign (double, double); /* in libmoldname.a */
extern float copysignf (float, float);
extern long double copysignl (long double, long double);

/* 7.12.11.2 Return a NaN */
extern double nan(const char *tagp);
extern float nanf(const char *tagp);
extern long double nanl(const char *tagp);







/* 7.12.11.3 */
extern double nextafter (double, double); /* in libmoldname.a */
extern float nextafterf (float, float);
extern long double nextafterl (long double, long double);

/* 7.12.11.4 The nexttoward functions */
extern double nexttoward (double, long double);
extern float nexttowardf (float, long double);
extern long double nexttowardl (long double, long double);

/* 7.12.12.1 */
/*  x > y ? (x - y) : 0.0  */
extern double fdim (double x, double y);
extern float fdimf (float x, float y);
extern long double fdiml (long double x, long double y);

/* fmax and fmin.
   NaN arguments are treated as missing data: if one argument is a NaN
   and the other numeric, then these functions choose the numeric
   value. */

/* 7.12.12.2 */
extern double fmax (double, double);
extern float fmaxf (float, float);
extern long double fmaxl (long double, long double);

/* 7.12.12.3 */
extern double fmin (double, double);
extern float fminf (float, float);
extern long double fminl (long double, long double);

/* 7.12.13.1 */
/* return x * y + z as a ternary op */
extern double fma (double, double, double);
extern float fmaf (float, float, float);
extern long double fmal (long double, long double, long double);


/* 7.12.14 */
/* 
 *  With these functions, comparisons involving quiet NaNs set the FP
 *  condition code to "unordered".  The IEEE floating-point spec
 *  dictates that the result of floating-point comparisons should be
 *  false whenever a NaN is involved, with the exception of the != op, 
 *  which always returns true: yes, (NaN != NaN) is true).
 */
# 2 "coprocess/example/src/main.c" 2
# 1 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/include\\stdint.h" 1 3 4
/*===---- stdint.h - Standard header for sized integer types --------------===*\
 *
 * Copyright (c) 2009 Chris Lattner
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
\*===----------------------------------------------------------------------===*/




/* If we're hosted, fall back to the system's stdint.h, which might have
 * additional definitions.
 */




# 1 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\stdint.h" 1 3 4
/* ISO C9x  7.18  Integer types <stdint.h>
 * Based on ISO/IEC SC22/WG14 9899 Committee draft (SC22 N2794)
 *
 *  THIS SOFTWARE IS NOT COPYRIGHTED
 *
 *  Contributor: Danny Smith <danny_r_smith_2001@yahoo.co.nz>
 *
 *  This source code is offered for use in the public domain. You may
 *  use, modify or distribute it freely.
 *
 *  This code is distributed in the hope that it will be useful but
 *  WITHOUT ANY WARRANTY. ALL WARRANTIES, EXPRESS OR IMPLIED ARE HEREBY
 *  DISCLAIMED. This includes but is not limited to warranties of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 *  Date: 2000-12-02
 */








# 1 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/include\\stddef.h" 1 3 4
/*===---- stddef.h - Basic type definitions --------------------------------===
 *
 * Copyright (c) 2008 Eli Friedman
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 *===-----------------------------------------------------------------------===
 */






typedef __typeof__(((int*)0)-((int*)0)) ptrdiff_t;



typedef __typeof__(sizeof(int)) size_t;




typedef unsigned short wchar_t;
# 56 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/include\\stddef.h" 3 4
/* Some C libraries expect to see a wint_t here. Others (notably MinGW) will use
__WINT_TYPE__ directly; accommodate both by requiring __need_wint_t */



typedef int wint_t;
# 25 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\stdint.h" 2 3 4

/* 7.18.1.1  Exact-width integer types */
typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned uint32_t;
typedef long long int64_t;
typedef unsigned long long uint64_t;

/* 7.18.1.2  Minimum-width integer types */
typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned uint_least32_t;
typedef long long int_least64_t;
typedef unsigned long long uint_least64_t;

/*  7.18.1.3  Fastest minimum-width integer types 
 *  Not actually guaranteed to be fastest for all purposes
 *  Here we use the exact-width types for 8 and 16-bit ints. 
 */
typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
typedef long long int_fast64_t;
typedef unsigned long long uint_fast64_t;

/* 7.18.1.4  Integer types capable of holding object pointers */






  typedef int intptr_t;
# 75 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\stdint.h" 3 4
 typedef unsigned int uintptr_t;



/* 7.18.1.5  Greatest-width integer types */
typedef long long intmax_t;
typedef unsigned long long uintmax_t;

/* 7.18.2  Limits of specified-width integer types */


/* 7.18.2.1  Limits of exact-width integer types */
# 102 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\stdint.h" 3 4
/* 7.18.2.2  Limits of minimum-width integer types */
# 118 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\stdint.h" 3 4
/* 7.18.2.3  Limits of fastest minimum-width integer types */
# 134 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\stdint.h" 3 4
/* 7.18.2.4  Limits of integer types capable of holding
    object pointers */
# 146 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\stdint.h" 3 4
/* 7.18.2.5  Limits of greatest-width integer types */




/* 7.18.3  Limits of other integer types */
# 165 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\stdint.h" 3 4
/*
 * wint_t is unsigned short for compatibility with MS runtime
 */






/* 7.18.4  Macros for integer constants */


/* 7.18.4.1  Macros for minimum-width integer constants

    Accoding to Douglas Gwyn <gwyn@arl.mil>:
	"This spec was changed in ISO/IEC 9899:1999 TC1; in ISO/IEC
	9899:1999 as initially published, the expansion was required
	to be an integer constant of precisely matching type, which
	is impossible to accomplish for the shorter types on most
	platforms, because C99 provides no standard way to designate
	an integer constant with width less than that of type int.
	TC1 changed this to require just an integer constant
	*expression* with *promoted* type."
*/
# 200 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/../../../include\\stdint.h" 3 4
/* 7.18.4.2  Macros for greatest-width integer constants */
# 33 "C:/Xilinx/Vivado_HLS/2014.4/win32/tools/clang/bin/../lib/clang/3.1/include\\stdint.h" 2 3 4
# 3 "coprocess/example/src/main.c" 2
# 1 "coprocess/example/src/xilly_debug.h" 1





void xilly_puts(const char *);
void xilly_hexprint(const uint32_t, const int);
void xilly_decprint(const uint32_t, const int);
# 4 "coprocess/example/src/main.c" 2

void xillybus_wrapper(int *in, int *out) {
_ssdm_op_SpecInterface(in, "ap_fifo", 0, 0, 0, 0, "", "", "");
_ssdm_op_SpecInterface(out, "ap_fifo", 0, 0, 0, 0, "", "", "");
_ssdm_op_SpecInterface(0, "ap_ctrl_none", 0, 0, 0, 0, "", "", "");

 uint32_t r, g, b, y;

  xilly_puts("Pixel incoming\n");

  // Handle input data
  r = ((*in) >> 16) & 0xFF;
  g = ((*in) >> 8) & 0xFF;
  b = (*in) & 0xFF;

  // Debug output
  xilly_puts("r=");
  xilly_decprint(r, 1);
  xilly_puts(" g=");
  xilly_decprint(g, 1);
  xilly_puts(" b=");
  xilly_decprint(b, 1);
  xilly_puts("\n");

  // Run the calculations
  y = (r + g + b) / 3;
  in++;

  // Handle output data
  *out++ = y;
}
