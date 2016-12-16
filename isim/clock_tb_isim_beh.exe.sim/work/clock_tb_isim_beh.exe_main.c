/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_4000226436_3212880686_init();
    work_a_0141943142_3212880686_init();
    work_a_4006990688_3212880686_init();
    work_a_2568520686_3212880686_init();
    work_a_0775778665_3212880686_init();
    work_a_3135623608_3212880686_init();
    work_a_0316736957_3212880686_init();
    work_a_1572888184_3212880686_init();
    work_a_4022612002_3212880686_init();
    work_a_2922347966_3212880686_init();
    work_a_0059548703_3212880686_init();
    work_a_3757915912_3212880686_init();
    work_a_2537863638_3212880686_init();
    work_a_1614112171_3212880686_init();
    work_a_4275198500_3212880686_init();
    work_a_2058740412_3212880686_init();
    work_a_3222946569_3212880686_init();
    work_a_0878096478_3212880686_init();
    work_a_2645188612_3212880686_init();
    work_a_0213060440_3212880686_init();
    work_a_2240778087_2372691052_init();


    xsi_register_tops("work_a_2240778087_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
