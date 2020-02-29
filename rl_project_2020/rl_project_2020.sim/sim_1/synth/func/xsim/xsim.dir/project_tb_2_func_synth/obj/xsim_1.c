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
extern void execute_653(char*, char *);
extern void execute_654(char*, char *);
extern void execute_655(char*, char *);
extern void execute_38(char*, char *);
extern void execute_43(char*, char *);
extern void execute_47(char*, char *);
extern void execute_50(char*, char *);
extern void execute_54(char*, char *);
extern void execute_58(char*, char *);
extern void execute_61(char*, char *);
extern void execute_65(char*, char *);
extern void execute_67(char*, char *);
extern void execute_70(char*, char *);
extern void execute_73(char*, char *);
extern void execute_76(char*, char *);
extern void execute_86(char*, char *);
extern void execute_92(char*, char *);
extern void execute_105(char*, char *);
extern void execute_110(char*, char *);
extern void execute_114(char*, char *);
extern void execute_117(char*, char *);
extern void execute_131(char*, char *);
extern void execute_132(char*, char *);
extern void execute_133(char*, char *);
extern void execute_143(char*, char *);
extern void execute_144(char*, char *);
extern void execute_145(char*, char *);
extern void execute_146(char*, char *);
extern void execute_147(char*, char *);
extern void execute_148(char*, char *);
extern void execute_149(char*, char *);
extern void execute_151(char*, char *);
extern void execute_153(char*, char *);
extern void execute_154(char*, char *);
extern void execute_189(char*, char *);
extern void execute_195(char*, char *);
extern void execute_196(char*, char *);
extern void execute_245(char*, char *);
extern void execute_249(char*, char *);
extern void execute_252(char*, char *);
extern void execute_254(char*, char *);
extern void execute_257(char*, char *);
extern void execute_260(char*, char *);
extern void execute_263(char*, char *);
extern void execute_277(char*, char *);
extern void execute_283(char*, char *);
extern void execute_287(char*, char *);
extern void execute_290(char*, char *);
extern void execute_299(char*, char *);
extern void execute_303(char*, char *);
extern void execute_307(char*, char *);
extern void execute_327(char*, char *);
extern void execute_328(char*, char *);
extern void execute_329(char*, char *);
extern void execute_426(char*, char *);
extern void execute_444(char*, char *);
extern void execute_447(char*, char *);
extern void execute_524(char*, char *);
extern void execute_534(char*, char *);
extern void execute_578(char*, char *);
extern void execute_584(char*, char *);
extern void execute_595(char*, char *);
extern void execute_599(char*, char *);
extern void execute_603(char*, char *);
extern void execute_607(char*, char *);
extern void execute_610(char*, char *);
extern void execute_612(char*, char *);
extern void execute_622(char*, char *);
extern void execute_623(char*, char *);
extern void execute_624(char*, char *);
extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_67(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_91(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_92(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_93(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_94(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_95(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_96(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_97(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_98(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_99(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_100(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_101(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_102(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_103(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_104(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_111(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_114(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_115(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_116(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_117(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_118(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_119(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_120(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_126(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_127(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_128(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_129(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_133(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_134(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_135(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_136(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_138(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_139(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_140(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_141(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_142(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_143(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_144(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_145(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_146(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_147(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_148(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_160(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_165(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_166(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_172(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_178(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_199(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_204(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_211(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_218(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_231(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_237(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_244(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_251(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_258(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_271(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_278(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_285(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_298(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_305(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_312(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_319(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_332(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_339(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_346(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_353(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_366(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_373(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_380(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_387(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_394(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_401(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_408(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_415(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_422(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_430(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_437(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_443(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_450(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_457(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_464(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_471(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_478(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_485(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_492(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_500(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_506(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_520(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_527(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_534(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[177] = {(funcp)execute_653, (funcp)execute_654, (funcp)execute_655, (funcp)execute_38, (funcp)execute_43, (funcp)execute_47, (funcp)execute_50, (funcp)execute_54, (funcp)execute_58, (funcp)execute_61, (funcp)execute_65, (funcp)execute_67, (funcp)execute_70, (funcp)execute_73, (funcp)execute_76, (funcp)execute_86, (funcp)execute_92, (funcp)execute_105, (funcp)execute_110, (funcp)execute_114, (funcp)execute_117, (funcp)execute_131, (funcp)execute_132, (funcp)execute_133, (funcp)execute_143, (funcp)execute_144, (funcp)execute_145, (funcp)execute_146, (funcp)execute_147, (funcp)execute_148, (funcp)execute_149, (funcp)execute_151, (funcp)execute_153, (funcp)execute_154, (funcp)execute_189, (funcp)execute_195, (funcp)execute_196, (funcp)execute_245, (funcp)execute_249, (funcp)execute_252, (funcp)execute_254, (funcp)execute_257, (funcp)execute_260, (funcp)execute_263, (funcp)execute_277, (funcp)execute_283, (funcp)execute_287, (funcp)execute_290, (funcp)execute_299, (funcp)execute_303, (funcp)execute_307, (funcp)execute_327, (funcp)execute_328, (funcp)execute_329, (funcp)execute_426, (funcp)execute_444, (funcp)execute_447, (funcp)execute_524, (funcp)execute_534, (funcp)execute_578, (funcp)execute_584, (funcp)execute_595, (funcp)execute_599, (funcp)execute_603, (funcp)execute_607, (funcp)execute_610, (funcp)execute_612, (funcp)execute_622, (funcp)execute_623, (funcp)execute_624, (funcp)transaction_4, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_38, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_56, (funcp)transaction_57, (funcp)transaction_67, (funcp)transaction_68, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_72, (funcp)transaction_78, (funcp)transaction_91, (funcp)transaction_92, (funcp)transaction_93, (funcp)transaction_94, (funcp)transaction_95, (funcp)transaction_96, (funcp)transaction_97, (funcp)transaction_98, (funcp)transaction_99, (funcp)transaction_100, (funcp)transaction_101, (funcp)transaction_102, (funcp)transaction_103, (funcp)transaction_104, (funcp)transaction_111, (funcp)transaction_114, (funcp)transaction_115, (funcp)transaction_116, (funcp)transaction_117, (funcp)transaction_118, (funcp)transaction_119, (funcp)transaction_120, (funcp)transaction_126, (funcp)transaction_127, (funcp)transaction_128, (funcp)transaction_129, (funcp)transaction_133, (funcp)transaction_134, (funcp)transaction_135, (funcp)transaction_136, (funcp)transaction_138, (funcp)transaction_139, (funcp)transaction_140, (funcp)transaction_141, (funcp)transaction_142, (funcp)transaction_143, (funcp)transaction_144, (funcp)transaction_145, (funcp)transaction_146, (funcp)transaction_147, (funcp)transaction_148, (funcp)transaction_160, (funcp)transaction_165, (funcp)transaction_166, (funcp)transaction_172, (funcp)transaction_178, (funcp)transaction_199, (funcp)transaction_204, (funcp)transaction_211, (funcp)transaction_218, (funcp)transaction_231, (funcp)transaction_237, (funcp)transaction_244, (funcp)transaction_251, (funcp)transaction_258, (funcp)transaction_271, (funcp)transaction_278, (funcp)transaction_285, (funcp)transaction_298, (funcp)transaction_305, (funcp)transaction_312, (funcp)transaction_319, (funcp)transaction_332, (funcp)transaction_339, (funcp)transaction_346, (funcp)transaction_353, (funcp)transaction_366, (funcp)transaction_373, (funcp)transaction_380, (funcp)transaction_387, (funcp)transaction_394, (funcp)transaction_401, (funcp)transaction_408, (funcp)transaction_415, (funcp)transaction_422, (funcp)transaction_430, (funcp)transaction_437, (funcp)transaction_443, (funcp)transaction_450, (funcp)transaction_457, (funcp)transaction_464, (funcp)transaction_471, (funcp)transaction_478, (funcp)transaction_485, (funcp)transaction_492, (funcp)transaction_500, (funcp)transaction_506, (funcp)transaction_520, (funcp)transaction_527, (funcp)transaction_534};
const int NumRelocateId= 177;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/project_tb_2_func_synth/xsim.reloc",  (void **)funcTab, 177);
	iki_vhdl_file_variable_register(dp + 1169624);
	iki_vhdl_file_variable_register(dp + 1169680);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/project_tb_2_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/project_tb_2_func_synth/xsim.reloc");

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
    iki_set_sv_type_file_path_name("xsim.dir/project_tb_2_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/project_tb_2_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/project_tb_2_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
