/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern void execute_610(char*, char *);
extern void execute_611(char*, char *);
extern void execute_612(char*, char *);
extern void execute_46(char*, char *);
extern void execute_51(char*, char *);
extern void execute_55(char*, char *);
extern void execute_58(char*, char *);
extern void execute_60(char*, char *);
extern void execute_64(char*, char *);
extern void execute_67(char*, char *);
extern void execute_74(char*, char *);
extern void execute_77(char*, char *);
extern void execute_94(char*, char *);
extern void execute_95(char*, char *);
extern void execute_96(char*, char *);
extern void execute_106(char*, char *);
extern void execute_107(char*, char *);
extern void execute_108(char*, char *);
extern void execute_109(char*, char *);
extern void execute_110(char*, char *);
extern void execute_111(char*, char *);
extern void execute_112(char*, char *);
extern void execute_114(char*, char *);
extern void execute_116(char*, char *);
extern void execute_117(char*, char *);
extern void execute_152(char*, char *);
extern void execute_159(char*, char *);
extern void execute_163(char*, char *);
extern void execute_165(char*, char *);
extern void execute_168(char*, char *);
extern void execute_173(char*, char *);
extern void execute_175(char*, char *);
extern void execute_176(char*, char *);
extern void execute_177(char*, char *);
extern void execute_194(char*, char *);
extern void execute_196(char*, char *);
extern void execute_201(char*, char *);
extern void execute_216(char*, char *);
extern void execute_218(char*, char *);
extern void execute_219(char*, char *);
extern void execute_287(char*, char *);
extern void execute_308(char*, char *);
extern void execute_372(char*, char *);
extern void execute_382(char*, char *);
extern void execute_394(char*, char *);
extern void execute_429(char*, char *);
extern void execute_440(char*, char *);
extern void execute_459(char*, char *);
extern void execute_522(char*, char *);
extern void execute_526(char*, char *);
extern void execute_532(char*, char *);
extern void execute_541(char*, char *);
extern void execute_568(char*, char *);
extern void execute_577(char*, char *);
extern void execute_581(char*, char *);
extern void execute_584(char*, char *);
extern void execute_588(char*, char *);
extern void execute_590(char*, char *);
extern void execute_595(char*, char *);
extern void execute_596(char*, char *);
extern void execute_597(char*, char *);
extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_64(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_89(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_90(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_91(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_92(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_93(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_94(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_95(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_99(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_100(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_101(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_102(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_103(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_104(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_105(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_106(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_108(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_109(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_110(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_111(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_112(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_113(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_114(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_130(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_131(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_168(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_175(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_182(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_189(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_202(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_208(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_215(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_222(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_229(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_236(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_243(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_250(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_257(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_264(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_271(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_278(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_285(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_292(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_299(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_306(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_313(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_320(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_328(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_335(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_341(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_348(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_355(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_362(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_369(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_376(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_383(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_390(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_397(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_404(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_411(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_418(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_431(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_438(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_445(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_452(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_466(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_473(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_480(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_487(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_493(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_501(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_508(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_515(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[149] = {(funcp)execute_610, (funcp)execute_611, (funcp)execute_612, (funcp)execute_46, (funcp)execute_51, (funcp)execute_55, (funcp)execute_58, (funcp)execute_60, (funcp)execute_64, (funcp)execute_67, (funcp)execute_74, (funcp)execute_77, (funcp)execute_94, (funcp)execute_95, (funcp)execute_96, (funcp)execute_106, (funcp)execute_107, (funcp)execute_108, (funcp)execute_109, (funcp)execute_110, (funcp)execute_111, (funcp)execute_112, (funcp)execute_114, (funcp)execute_116, (funcp)execute_117, (funcp)execute_152, (funcp)execute_159, (funcp)execute_163, (funcp)execute_165, (funcp)execute_168, (funcp)execute_173, (funcp)execute_175, (funcp)execute_176, (funcp)execute_177, (funcp)execute_194, (funcp)execute_196, (funcp)execute_201, (funcp)execute_216, (funcp)execute_218, (funcp)execute_219, (funcp)execute_287, (funcp)execute_308, (funcp)execute_372, (funcp)execute_382, (funcp)execute_394, (funcp)execute_429, (funcp)execute_440, (funcp)execute_459, (funcp)execute_522, (funcp)execute_526, (funcp)execute_532, (funcp)execute_541, (funcp)execute_568, (funcp)execute_577, (funcp)execute_581, (funcp)execute_584, (funcp)execute_588, (funcp)execute_590, (funcp)execute_595, (funcp)execute_596, (funcp)execute_597, (funcp)transaction_4, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_56, (funcp)transaction_57, (funcp)transaction_58, (funcp)transaction_60, (funcp)transaction_64, (funcp)transaction_89, (funcp)transaction_90, (funcp)transaction_91, (funcp)transaction_92, (funcp)transaction_93, (funcp)transaction_94, (funcp)transaction_95, (funcp)transaction_99, (funcp)transaction_100, (funcp)transaction_101, (funcp)transaction_102, (funcp)transaction_103, (funcp)transaction_104, (funcp)transaction_105, (funcp)transaction_106, (funcp)transaction_108, (funcp)transaction_109, (funcp)transaction_110, (funcp)transaction_111, (funcp)transaction_112, (funcp)transaction_113, (funcp)transaction_114, (funcp)transaction_130, (funcp)transaction_131, (funcp)transaction_168, (funcp)transaction_175, (funcp)transaction_182, (funcp)transaction_189, (funcp)transaction_202, (funcp)transaction_208, (funcp)transaction_215, (funcp)transaction_222, (funcp)transaction_229, (funcp)transaction_236, (funcp)transaction_243, (funcp)transaction_250, (funcp)transaction_257, (funcp)transaction_264, (funcp)transaction_271, (funcp)transaction_278, (funcp)transaction_285, (funcp)transaction_292, (funcp)transaction_299, (funcp)transaction_306, (funcp)transaction_313, (funcp)transaction_320, (funcp)transaction_328, (funcp)transaction_335, (funcp)transaction_341, (funcp)transaction_348, (funcp)transaction_355, (funcp)transaction_362, (funcp)transaction_369, (funcp)transaction_376, (funcp)transaction_383, (funcp)transaction_390, (funcp)transaction_397, (funcp)transaction_404, (funcp)transaction_411, (funcp)transaction_418, (funcp)transaction_431, (funcp)transaction_438, (funcp)transaction_445, (funcp)transaction_452, (funcp)transaction_466, (funcp)transaction_473, (funcp)transaction_480, (funcp)transaction_487, (funcp)transaction_493, (funcp)transaction_501, (funcp)transaction_508, (funcp)transaction_515};
const int NumRelocateId= 149;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/project_tb_func_synth/xsim.reloc",  (void **)funcTab, 149);
	iki_vhdl_file_variable_register(dp + 1161776);
	iki_vhdl_file_variable_register(dp + 1161832);
	iki_vhdl_file_variable_register(dp + 1173296);
	iki_vhdl_file_variable_register(dp + 1697800);
	iki_vhdl_file_variable_register(dp + 1697888);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/project_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/project_tb_func_synth/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstantiate();

extern void implicit_HDL_SCcleanup();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/project_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/project_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/project_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
