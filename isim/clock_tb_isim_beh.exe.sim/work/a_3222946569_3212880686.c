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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/school/SCH-IW_EI/elektronica/digitale/labo/voorbeelden/Control.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3222946569_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4448);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 992U);
    t5 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t5 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(32, ng0);
    t6 = (t0 + 2472U);
    t7 = *((char **)t6);
    t6 = (t0 + 7312);
    t9 = xsi_mem_cmp(t6, t7, 2U);
    if (t9 == 1)
        goto LAB9;

LAB14:    t10 = (t0 + 7314);
    t12 = xsi_mem_cmp(t10, t7, 2U);
    if (t12 == 1)
        goto LAB10;

LAB15:    t13 = (t0 + 7316);
    t15 = xsi_mem_cmp(t13, t7, 2U);
    if (t15 == 1)
        goto LAB11;

LAB16:    t16 = (t0 + 7318);
    t18 = xsi_mem_cmp(t16, t7, 2U);
    if (t18 == 1)
        goto LAB12;

LAB17:
LAB13:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 7328);
    t6 = (t0 + 4560);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast(t6);

LAB8:    goto LAB6;

LAB9:    xsi_set_current_line(33, ng0);
    t19 = (t0 + 7320);
    t21 = (t0 + 4560);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t19, 2U);
    xsi_driver_first_trans_fast(t21);
    goto LAB8;

LAB10:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 7322);
    t6 = (t0 + 4560);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast(t6);
    goto LAB8;

LAB11:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 7324);
    t6 = (t0 + 4560);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast(t6);
    goto LAB8;

LAB12:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 7326);
    t6 = (t0 + 4560);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast(t6);
    goto LAB8;

LAB18:;
}

static void work_a_3222946569_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    int t10;
    char *t11;
    int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 7330);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB8:    t5 = (t0 + 7332);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB9:    t8 = (t0 + 7334);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB10:    t11 = (t0 + 7336);
    t13 = xsi_mem_cmp(t11, t2, 2U);
    if (t13 == 1)
        goto LAB6;

LAB11:
LAB7:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4624);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t1 = (t0 + 4464);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(50, ng0);
    t14 = (t0 + 1832U);
    t15 = *((char **)t14);
    t14 = (t0 + 4624);
    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t15, 4U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB2;

LAB4:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 4624);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4624);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4624);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB12:;
}

static void work_a_3222946569_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned char t24;
    unsigned int t25;

LAB0:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 7338);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB8:    t5 = (t0 + 7340);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB9:    t8 = (t0 + 7342);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB10:    t11 = (t0 + 7344);
    t13 = xsi_mem_cmp(t11, t2, 2U);
    if (t13 == 1)
        goto LAB6;

LAB11:
LAB7:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 7382);
    t3 = (t0 + 4688);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 4480);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(64, ng0);
    t14 = (t0 + 7346);
    t16 = (t0 + 4688);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t14, 4U);
    xsi_driver_first_trans_fast_port(t16);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t21 = (3 - 3);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t1 = (t2 + t23);
    t3 = (t0 + 7350);
    t24 = 1;
    if (1U == 1U)
        goto LAB16;

LAB17:    t24 = 0;

LAB18:    if (t24 != 0)
        goto LAB13;

LAB15:
LAB14:    goto LAB2;

LAB4:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 7355);
    t3 = (t0 + 4688);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t21 = (3 - 2);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t1 = (t2 + t23);
    t3 = (t0 + 7359);
    t24 = 1;
    if (1U == 1U)
        goto LAB25;

LAB26:    t24 = 0;

LAB27:    if (t24 != 0)
        goto LAB22;

LAB24:
LAB23:    goto LAB2;

LAB5:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 7364);
    t3 = (t0 + 4688);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t21 = (3 - 1);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t1 = (t2 + t23);
    t3 = (t0 + 7368);
    t24 = 1;
    if (1U == 1U)
        goto LAB34;

LAB35:    t24 = 0;

LAB36:    if (t24 != 0)
        goto LAB31;

LAB33:
LAB32:    goto LAB2;

LAB6:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 7373);
    t3 = (t0 + 4688);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t21 = (3 - 0);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t1 = (t2 + t23);
    t3 = (t0 + 7377);
    t24 = 1;
    if (1U == 1U)
        goto LAB43;

LAB44:    t24 = 0;

LAB45:    if (t24 != 0)
        goto LAB40;

LAB42:
LAB41:    goto LAB2;

LAB12:;
LAB13:    xsi_set_current_line(64, ng0);
    t9 = (t0 + 7351);
    t12 = (t0 + 4688);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 4U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB14;

LAB16:    t25 = 0;

LAB19:    if (t25 < 1U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t6 = (t1 + t25);
    t8 = (t3 + t25);
    if (*((unsigned char *)t6) != *((unsigned char *)t8))
        goto LAB17;

LAB21:    t25 = (t25 + 1);
    goto LAB19;

LAB22:    xsi_set_current_line(65, ng0);
    t9 = (t0 + 7360);
    t12 = (t0 + 4688);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 4U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB23;

LAB25:    t25 = 0;

LAB28:    if (t25 < 1U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t6 = (t1 + t25);
    t8 = (t3 + t25);
    if (*((unsigned char *)t6) != *((unsigned char *)t8))
        goto LAB26;

LAB30:    t25 = (t25 + 1);
    goto LAB28;

LAB31:    xsi_set_current_line(66, ng0);
    t9 = (t0 + 7369);
    t12 = (t0 + 4688);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 4U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB32;

LAB34:    t25 = 0;

LAB37:    if (t25 < 1U)
        goto LAB38;
    else
        goto LAB36;

LAB38:    t6 = (t1 + t25);
    t8 = (t3 + t25);
    if (*((unsigned char *)t6) != *((unsigned char *)t8))
        goto LAB35;

LAB39:    t25 = (t25 + 1);
    goto LAB37;

LAB40:    xsi_set_current_line(67, ng0);
    t9 = (t0 + 7378);
    t12 = (t0 + 4688);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 4U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB41;

LAB43:    t25 = 0;

LAB46:    if (t25 < 1U)
        goto LAB47;
    else
        goto LAB45;

LAB47:    t6 = (t1 + t25);
    t8 = (t3 + t25);
    if (*((unsigned char *)t6) != *((unsigned char *)t8))
        goto LAB44;

LAB48:    t25 = (t25 + 1);
    goto LAB46;

}


extern void work_a_3222946569_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3222946569_3212880686_p_0,(void *)work_a_3222946569_3212880686_p_1,(void *)work_a_3222946569_3212880686_p_2};
	xsi_register_didat("work_a_3222946569_3212880686", "isim/clock_tb_isim_beh.exe.sim/work/a_3222946569_3212880686.didat");
	xsi_register_executes(pe);
}
