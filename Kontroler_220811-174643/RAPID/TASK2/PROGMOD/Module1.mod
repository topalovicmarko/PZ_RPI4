MODULE Module1

    CONST robtarget Target_pocetni:=[[506.291651246,1000,679.5],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_alat_za_pastu:=[[200,225,109.3],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_prilaz_alat_za_pastu:=[[200,225,260],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10:=[[51.594,65.053,1.6],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[51.594,114.313,1.6],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[49.054,114.313,1.6],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40:=[[49.054,65.053,1.6],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_prilaz_grejna_ploca:=[[75,100,251],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50:=[[77.824,78.933,1.6],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50_2:=[[62.824,78.933,1.7],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50_2_2:=[[62.824,93.933,1.7],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50_2_2_2:=[[77.824,93.933,1.7],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_CPU:=[[70.324,86.433,3.8],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_prelaz:=[[75,100,31],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_60:=[[102.824,63.883,1.8],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_60_2:=[[96.514,63.883,1.8],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_60_2_2:=[[96.514,72.823,1.8],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_60_2_2_2:=[[102.824,72.823,1.8],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_USB_C:=[[99.669,68.353,1.5],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_70:=[[85.324,60.783,1.7],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_70_2:=[[62.924,60.783,1.7],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_70_2_2:=[[62.924,65.603,1.7],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_70_2_2_2:=[[85.324,65.603,1.7],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_Display_port:=[[74.124,63.193,1.5],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_80:=[[49.134,142.183,1.7],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_80_2:=[[49.134,124.303,1.7],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_80_2_2:=[[64.634,124.303,1.7],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_80_2_2_2:=[[64.634,142.183,1.7],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_LAN:=[[56.884,133.243,1.7],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_90:=[[100.464,142.183,1.7],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_90_2:=[[100.464,128.383,1.7],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_90_2_2:=[[87.164,128.383,1.7],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_90_2_2_2:=[[87.164,142.183,1.7],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_USB_2_0:=[[93.814,135.283,15.4],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_USB_3_0:=[[75.114,135.283,15.39],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_100:=[[82.164,142.183,1.9],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_100_2:=[[82.164,128.383,1.9],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_100_2_2:=[[68.864,128.383,1.9],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_100_2_2_2:=[[68.864,142.183,1.9],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_prilaz_alat_sisaljka2:=[[225,375,260],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_alat_sisaljka2:=[[225,375,89.5],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_Prilaz_USB_3_0_1:=[[16.55,17.874,218.5],[0,0,1,0],[-2,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_USB_3_0_1:=[[16.55,17.874,18.5],[0,0,1,0],[-2,2,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_okret:=[[65,700,389],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_korak_sync:=[[324.23398001,600,631.500029189],[0.500000001,0,0.866025403,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_cpu1:=[[17.5,17.5,2.3],[0,0,1,0],[-2,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_prilaz_cpu1:=[[17.5,17.5,202.3],[0,0,1,0],[-2,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_usb_2_0_1:=[[16.568,18.172,18.95],[0,0,1,0],[-2,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_pinovi1:=[[50.324,89.713,9.4],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_pinovi:=[[12.54,35.4,11.3],[0,0,1,0],[-2,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_testing:=[[50.324,88.443,9.7],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_alat_unimer:=[[60,225,199.6],[0,0,1,0],[-2,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    PERS tasks task_list{2}:=[["T_ROB1"],["T_ROB2"]];

    VAR syncident sync1;
    VAR syncident sync2;
    VAR syncident sync3;
    VAR intnum start_vec;
    VAR intnum stop_vec;

    TRAP start_trap
        StartMove;
    ENDTRAP

    TRAP stop_trap
        StopMove;
    ENDTRAP

    PROC main()
        VAR num i:=0;

        CONNECT start_vec WITH start_trap;
        CONNECT stop_vec WITH stop_trap;
        ISignalDI DI_START,1,start_vec;
        ISignalDI DI_STOP,1,stop_vec;

        WHILE TRUE DO
            FOR i FROM 1 TO 12 DO
                stanje_alat_sisaljka FALSE;
                WaitSyncTask sync1,task_list;
                MoveJ Target_pocetni,v500,z0,tool0\WObj:=wobj0;
                Path_uzmi_alat_pasta;
                MoveJ Target_prilaz_grejna_ploca,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
                Path_stavljanje_paste;
                Path_ostavi_alat_pasta;
                Path_uzmi_sisaljku2;
                MoveJ Target_pocetni,v500,z0,tool0\WObj:=wobj0;
                SyncMoveOn sync2,task_list;
                Path_uzmi_usb_3_0(i);
                Path_uzmi_cpu(i);
                Path_usb_2_0(i);
                SyncMoveOff sync2;
                Path_pinovi(i);
                MoveJ Target_pocetni,v500,z0,tool0\WObj:=wobj0;
                lemljenje;
                Path_ostavi_sisaljku2;
                Path_testiranje_ploce;
                MoveJ Target_pocetni,v500,z0,tool0\WObj:=wobj0;
                WaitSyncTask sync3,task_list;
            ENDFOR
        ENDWHILE
        IDelete start_vec;
        IDelete stop_vec;
    ENDPROC

    PROC Path_dummy()
        MoveJ Target_pocetni,v500,z0,tool0\WObj:=wobj0;
        MoveJ Target_alat_za_pastu,v500,z0,tool0\WObj:=wobj_sto_sa_alatima;
        MoveJ Target_prilaz_alat_za_pastu,v500,z0,tool0\WObj:=wobj_sto_sa_alatima;
        MoveL Target_10,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_20,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_30,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_40,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_prilaz_grejna_ploca,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_50,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_50_2,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_50_2_2,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_50_2_2_2,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_CPU,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_prelaz,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_60,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_60_2,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_60_2_2,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_60_2_2_2,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_70,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_70_2,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_70_2_2,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_70_2_2_2,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_Display_port,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_80,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_80_2,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_80_2_2,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_80_2_2_2,v500,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_90,v100,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_90_2,v100,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_90_2_2,v100,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_90_2_2_2,v100,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_USB_2_0,v100,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_USB_3_0,v100,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_100,v100,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_100_2,v100,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_100_2_2,v100,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_100_2_2_2,v100,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_prilaz_alat_sisaljka2,v100,z0,tool0\WObj:=wobj_sto_sa_alatima;
        MoveL Target_alat_sisaljka2,v100,z0,tool0\WObj:=wobj_sto_sa_alatima;
        MoveL Target_Prilaz_USB_3_0_1,v100,z0,Sisaljka\WObj:=wobj_usb_3_0;
        MoveL Target_USB_3_0_1,v100,z0,Sisaljka\WObj:=wobj_usb_3_0;
        MoveL Target_korak_sync,v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        MoveL Target_cpu1,v100,z0,Sisaljka\WObj:=wobj_cpu;
        MoveL Target_prilaz_cpu1,v100,z0,Sisaljka\WObj:=wobj_cpu;
        MoveL Target_usb_2_0_1,v100,z0,Sisaljka\WObj:=wobj_usb_2_0;
        MoveL Target_USB_2_0,v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        MoveL Target_pinovi1,v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        MoveL Target_pinovi,v100,z0,Sisaljka\WObj:=wobj_pinovi;
        MoveL Target_testing,v100,z0,Alat_uniimer\WObj:=wobj_grejna_ploca;
    ENDPROC

    PROC lemljenje()
        stanje_grejna_ploca TRUE;
        WaitTime 10;
        stanje_grejna_ploca FALSE;
    ENDPROC

    PROC Path_uzmi_alat_pasta()
        stanje_alat_pasta FALSE;
        MoveJ Target_prilaz_alat_za_pastu,v500,z0,tool0\WObj:=wobj_sto_sa_alatima;
        MoveJ Target_alat_za_pastu,v300,z0,tool0\WObj:=wobj_sto_sa_alatima;
        WaitRob\Zerospeed;
        WaitTime 1;
        MoveJ Target_prilaz_alat_za_pastu,v300,z0,Alat_za_nanosenje_paste\WObj:=wobj_sto_sa_alatima;
    ENDPROC

    PROC Path_ostavi_alat_pasta()
        stanje_alat_pasta FALSE;
        MoveJ Target_prilaz_alat_za_pastu,v500,z0,tool0\WObj:=wobj_sto_sa_alatima;
        MoveJ Target_alat_za_pastu,v300,z0,tool0\WObj:=wobj_sto_sa_alatima;
        WaitRob\Zerospeed;
        WaitTime 1;
        MoveJ Target_prilaz_alat_za_pastu,v300,z0,Alat_za_nanosenje_paste\WObj:=wobj_sto_sa_alatima;
    ENDPROC

    PROC stanje_alat_pasta(bool stanje)
        IF stanje THEN
            setDO DO_ALAT_PASTA,1;
        ELSE
            setDO DO_ALAT_PASTA,0;
        ENDIF
    ENDPROC

    PROC Path_stavljanje_paste()
        MoveL Target_prilaz_grejna_ploca,v800,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_10,v300,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        WaitRob\ZeroSpeed;
        stanje_alat_pasta TRUE;
        WaitTime 1;
        MoveL Target_20,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_30,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_40,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        WaitRob\ZeroSpeed;
        stanje_alat_pasta FALSE;
        WaitTime 1;
        MoveL Target_prelaz,v100,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_50,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        WaitRob\ZeroSpeed;
        stanje_alat_pasta TRUE;
        WaitTime 1;
        MoveL Target_50_2,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_50_2_2,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_50_2_2_2,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_50,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        WaitRob\ZeroSpeed;
        stanje_alat_pasta FALSE;
        WaitTime 1;
        MoveL Target_prelaz,v100,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_60,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        WaitRob\ZeroSpeed;
        stanje_alat_pasta TRUE;
        WaitTime 1;
        MoveL Target_60_2,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_60_2_2,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_60_2_2_2,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        WaitRob\ZeroSpeed;
        stanje_alat_pasta FALSE;
        WaitTime 1;
        MoveL Target_prelaz,v100,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_70,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        WaitRob\ZeroSpeed;
        stanje_alat_pasta TRUE;
        WaitTime 1;
        MoveL Target_70_2,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_70_2_2,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_70_2_2_2,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_70,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        WaitRob\ZeroSpeed;
        stanje_alat_pasta FALSE;
        WaitTime 1;
        MoveL Target_prelaz,v300,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_80,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        WaitRob\ZeroSpeed;
        stanje_alat_pasta TRUE;
        WaitTime 1;
        MoveL Target_80_2,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_80_2_2,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_80_2_2_2,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        WaitRob\ZeroSpeed;
        stanje_alat_pasta FALSE;
        WaitTime 1;
        MoveL Target_prelaz,v100,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_100,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        WaitRob\ZeroSpeed;
        stanje_alat_pasta TRUE;
        WaitTime 1;
        MoveL Target_100_2,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_100_2_2,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_100_2_2_2,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        WaitRob\ZeroSpeed;
        stanje_alat_pasta FALSE;
        WaitTime 1;
        MoveL Target_prelaz,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_90,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        WaitRob\ZeroSpeed;
        stanje_alat_pasta TRUE;
        WaitTime 1;
        MoveL Target_90_2,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_90_2_2,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        MoveL Target_90_2_2_2,v80,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
        WaitRob\ZeroSpeed;
        stanje_alat_pasta FALSE;
        WaitTime 1;
        MoveL Target_prelaz,v100,z0,Alat_za_nanosenje_paste\WObj:=wobj_grejna_ploca;
    ENDPROC

    PROC Path_uzmi_sisaljku2()
        stanje_alat_sisaljka FALSE;
        MoveL Target_prilaz_alat_sisaljka2,v500,z0,tool0\WObj:=wobj_sto_sa_alatima;
        MoveJ Offs(Target_alat_sisaljka2,0,0,-0.2),v300,z0,tool0\WObj:=wobj_sto_sa_alatima;
        WaitRob\Zerospeed;
        WaitTime 1;
        MoveJ Target_prilaz_alat_sisaljka2,v500,z0,Sisaljka\WObj:=wobj_sto_sa_alatima;
    ENDPROC

    PROC Path_ostavi_sisaljku2()
        stanje_alat_sisaljka FALSE;
        MoveJ Target_prilaz_alat_sisaljka2,v500,z0,tool0\WObj:=wobj_sto_sa_alatima;
        MoveJ Offs(Target_alat_sisaljka2,0,0,-0.2),v300,z0,tool0\WObj:=wobj_sto_sa_alatima;
        WaitRob\Zerospeed;
        WaitTime 1;
        MoveJ Target_prilaz_alat_sisaljka2,v500,z0,Sisaljka\WObj:=wobj_sto_sa_alatima;
    ENDPROC

    PROC stanje_alat_sisaljka(bool stanje)
        IF stanje THEN
            setDO DO_SISALJKA2,1;
        ELSE
            setDO DO_SISALJKA2,0;
        ENDIF
    ENDPROC

    PROC Path_uzmi_usb_3_0(num i)
        VAR robtarget temptarget;
        IF i<=4 THEN
            temptarget:=Offs(Target_USB_3_0_1,0,26.86*(i-1),0);
            ConfJ\Off;
            MoveJ Target_korak_sync\ID:=10,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(temptarget,0,0,150)\ID:=20,v1000,z0,Sisaljka\WObj:=wobj_usb_3_0;
            MoveJ Offs(temptarget,0,0,-0.2)\ID:=30,v500,z0,Sisaljka\WObj:=wobj_usb_3_0;
            WaitRob\Zerospeed;
            WaitTime 1;
            stanje_alat_sisaljka TRUE;
            MoveJ Offs(temptarget,0,0,100)\ID:=40,v1000,z0,Sisaljka\WObj:=wobj_usb_3_0;
            MoveJ Offs(temptarget,0,0,100)\ID:=50,v800,z0,Sisaljka\WObj:=wobj_usb_3_0;
            MoveJ Offs(temptarget,0,0,100)\ID:=60,v800,z0,Sisaljka\WObj:=wobj_usb_3_0;
            MoveJ Offs(temptarget,0,0,100)\ID:=70,v800,z0,Sisaljka\WObj:=wobj_usb_3_0;
             MoveJ Offs(temptarget,0,0,100)\ID:=80,v800,z0,Sisaljka\WObj:=wobj_usb_3_0;
            ConfJ\On; 
            MoveJ Offs(Target_USB_3_0,0,0,200)\ID:=90,v1000,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_USB_3_0,0,0,200)\ID:=100,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Target_USB_3_0\ID:=110,v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka FALSE;
            WaitTime 1;
            MoveJ Offs(Target_USB_3_0,0,0,200)\ID:=120,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        ENDIF
        IF i>4 AND i<=8 THEN
            temptarget:=Offs(Target_USB_3_0_1,23.1,26.86*(i-5),0);
            ConfJ\Off;
            MoveJ Target_korak_sync\ID:=10,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(temptarget,0,0,150)\ID:=20,v800,z0,Sisaljka\WObj:=wobj_usb_3_0;
            MoveJ Offs(temptarget,0,0,-0.2)\ID:=30,v500,z0,Sisaljka\WObj:=wobj_usb_3_0;
            WaitRob\Zerospeed;
            WaitTime 1;
            stanje_alat_sisaljka TRUE;
            MoveJ Offs(temptarget,0,0,100)\ID:=40,v800,z0,Sisaljka\WObj:=wobj_usb_3_0;
            ConfJ\On;
            MoveJ Offs(Target_USB_3_0,0,0,200)\ID:=50,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_USB_3_0,0,0,200)\ID:=60,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Target_USB_3_0\ID:=70,v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka FALSE;
            WaitTime 1;
            MoveJ Offs(Target_USB_3_0,0,0,200)\ID:=80,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        ENDIF
        IF i>8 AND i<=12 THEN
            temptarget:=Offs(Target_USB_3_0_1,46.2,26.86*(i-9),0);
            ConfJ\Off;
            MoveJ Target_korak_sync\ID:=10,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(temptarget,0,0,150)\ID:=20,v800,z0,Sisaljka\WObj:=wobj_usb_3_0;
            MoveJ Offs(temptarget,0,0,-0.2)\ID:=30,v500,z0,Sisaljka\WObj:=wobj_usb_3_0;
            WaitRob\Zerospeed;
            WaitTime 1;
            stanje_alat_sisaljka TRUE;
            MoveJ Offs(temptarget,0,0,100)\ID:=40,v800,z0,Sisaljka\WObj:=wobj_usb_3_0;
            ConfJ\On;
            MoveJ Offs(Target_USB_3_0,0,0,200)\ID:=50,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_USB_3_0,0,0,200)\ID:=60,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Target_USB_3_0\ID:=70,v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka FALSE;
            WaitTime 1;
            MoveJ Offs(Target_USB_3_0,0,0,200)\ID:=80,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        ENDIF

    ENDPROC

    PROC Path_uzmi_cpu(num i)
        VAR robtarget temptarget;
        IF i<=4 THEN
            temptarget:=Offs(Target_cpu1,0,25*(i-1),0);
            stanje_alat_sisaljka FALSE;
            MoveJ Offs(Target_USB_3_0,0,0,200)\ID:=90,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(temptarget,0,0,200)\ID:=100,v500,z0,Sisaljka\WObj:=wobj_cpu;
            MoveJ Offs(temptarget,0,0,-0.2)\ID:=110,v100,z0,Sisaljka\WObj:=wobj_cpu;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka TRUE;
            WaitTime 1;
            MoveJ Offs(temptarget,0,0,200)\ID:=120,v800,z0,Sisaljka\WObj:=wobj_cpu;
            MoveJ Offs(temptarget,0,0,200)\ID:=130,v800,z0,Sisaljka\WObj:=wobj_cpu;
            MoveJ Offs(temptarget,0,0,200)\ID:=140,v800,z0,Sisaljka\WObj:=wobj_cpu;
            MoveJ Offs(temptarget,0,0,200)\ID:=150,v800,z0,Sisaljka\WObj:=wobj_cpu;
            MoveJ Offs(Target_CPU,0,0,200)\ID:=160,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_CPU,0,0,-0.3)\ID:=170,v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka FALSE;
            WaitTime 1;
            MoveJ Offs(Target_CPU,0,0,200)\ID:=180,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        ENDIF
        IF i>4 AND i<=8 THEN
            temptarget:=Offs(Target_cpu1,25,25*(i-5),0);
            stanje_alat_sisaljka FALSE;
            MoveJ Offs(Target_USB_3_0,0,0,200)\ID:=90,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(temptarget,0,0,200)\ID:=100,v500,z0,Sisaljka\WObj:=wobj_cpu;
            MoveJ Offs(temptarget,0,0,-0.2)\ID:=110,v100,z0,Sisaljka\WObj:=wobj_cpu;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka TRUE;
            WaitTime 1;
            MoveJ Offs(temptarget,0,0,200)\ID:=120,v500,z0,Sisaljka\WObj:=wobj_cpu;
            MoveJ Offs(Target_CPU,0,0,200)\ID:=130,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_CPU,0,0,-0.3)\ID:=140,v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka FALSE;
            WaitTime 1;
            MoveJ Offs(Target_CPU,0,0,200)\ID:=150,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        ENDIF
        IF i>8 AND i<=12 THEN
            temptarget:=Offs(Target_cpu1,50,25*(i-9),0);
            stanje_alat_sisaljka FALSE;
            MoveJ Offs(Target_USB_3_0,0,0,200)\ID:=90,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(temptarget,0,0,200)\ID:=100,v500,z0,Sisaljka\WObj:=wobj_cpu;
            MoveJ Offs(temptarget,0,0,-0.2)\ID:=110,v100,z0,Sisaljka\WObj:=wobj_cpu;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka TRUE;
            WaitTime 1;
            MoveJ Offs(temptarget,0,0,200)\ID:=120,v500,z0,Sisaljka\WObj:=wobj_cpu;
            MoveJ Offs(temptarget,0,0,200)\ID:=130,v500,z0,Sisaljka\WObj:=wobj_cpu;
            MoveJ Offs(temptarget,0,0,200)\ID:=140,v500,z0,Sisaljka\WObj:=wobj_cpu;
            MoveJ Offs(Target_CPU,0,0,200)\ID:=150,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_CPU,0,0,-0.3)\ID:=160,v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka FALSE;
            WaitTime 1;
            MoveJ Offs(Target_CPU,0,0,200)\ID:=170,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        ENDIF
    ENDPROC

    PROC Path_usb_2_0(num i)
        VAR robtarget temptarget;
        IF i<=4 THEN
            temptarget:=Offs(Target_usb_2_0_1,0,26.86*(i-1),0);
            MoveL Offs(Target_CPU,0,0,200)\ID:=190,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveL Offs(temptarget,0,0,200)\ID:=200,v800,z0,Sisaljka\WObj:=wobj_usb_2_0;
            MoveL Offs(temptarget,0,0,-0.2)\ID:=210,v100,z0,Sisaljka\WObj:=wobj_usb_2_0;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka TRUE;
            WaitTime 1;
            MoveL Offs(temptarget,0,0,220)\ID:=220,v800,z0,Sisaljka\WObj:=wobj_usb_2_0;
            MoveL Offs(Target_USB_2_0,0,0,220)\ID:=230,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveL Target_USB_2_0\ID:=240,v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka FALSE;
            WaitTime 1;
            MoveL Offs(Target_USB_2_0,0,0,200)\ID:=250,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Target_pocetni\ID:=260,v800,z0,Sisaljka\WObj:=wobj0;
            MoveJ Target_pocetni\ID:=270,v800,z0,Sisaljka\WObj:=wobj0;
            MoveJ Target_pocetni\ID:=280,v800,z0,Sisaljka\WObj:=wobj0;
            MoveJ Target_pocetni\ID:=290,v800,z0,Sisaljka\WObj:=wobj0;
        ENDIF
        IF i>4 AND i<=8 THEN
            temptarget:=Offs(Target_usb_2_0_1,23.1,26.86*(i-5),0);
            MoveL Offs(Target_CPU,0,0,200)\ID:=160,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveL Offs(temptarget,0,0,200)\ID:=170,v800,z0,Sisaljka\WObj:=wobj_usb_2_0;
            MoveL Offs(temptarget,0,0,-0.2)\ID:=180,v100,z0,Sisaljka\WObj:=wobj_usb_2_0;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka TRUE;
            WaitTime 1;
            MoveL Offs(temptarget,0,0,200)\ID:=190,v800,z0,Sisaljka\WObj:=wobj_usb_2_0;
            MoveL Offs(Target_USB_2_0,0,0,200)\ID:=200,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveL Target_USB_2_0\ID:=210,v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka FALSE;
            WaitTime 1;
            MoveL Offs(Target_USB_2_0,0,0,200)\ID:=220,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        ENDIF
        IF i>8 AND i<=12 THEN
            temptarget:=Offs(Target_usb_2_0_1,46.2,26.86*(i-9),0);
            MoveL Offs(Target_CPU,0,0,200)\ID:=160,v500,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveL Offs(temptarget,0,0,200)\ID:=170,v800,z0,Sisaljka\WObj:=wobj_usb_2_0;
            MoveL Offs(temptarget,0,0,-0.2)\ID:=180,v100,z0,Sisaljka\WObj:=wobj_usb_2_0;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka TRUE;
            WaitTime 1;
            MoveL Offs(temptarget,0,0,200)\ID:=190,v800,z0,Sisaljka\WObj:=wobj_usb_2_0;
            MoveL Offs(Target_USB_2_0,0,0,200)\ID:=200,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveL Target_USB_2_0\ID:=210,v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka FALSE;
            WaitTime 1;
            MoveL Offs(Target_USB_2_0,0,0,200)\ID:=220,v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        ENDIF
    ENDPROC

    PROC Path_pinovi(num i)
        VAR robtarget temptarget;
        IF i<=4 THEN
            temptarget:=Offs(Target_pinovi,0,60.8*(i-1),0);
            MoveJ Offs(temptarget,0,0,200),v800,z0,Sisaljka\WObj:=wobj_pinovi;
            MoveJ Offs(temptarget,0,0,-0.2),v100,z0,Sisaljka\WObj:=wobj_pinovi;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka TRUE;
            WaitTime 1;
            MoveJ Offs(temptarget,0,0,200),v800,z0,Sisaljka\WObj:=wobj_pinovi;
            MoveJ Offs(Target_pinovi1,0,0,200),v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_pinovi1,0,0,-0.3),v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka FALSE;
            WaitTime 1;
            MoveJ Offs(Target_pinovi1,0,0,200),v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        ENDIF
        IF i>4 AND i<=8 THEN
            temptarget:=Offs(Target_pinovi,15.08,60.8*(i-5),0);
            MoveJ Offs(temptarget,0,0,200),v800,z0,Sisaljka\WObj:=wobj_pinovi;
            MoveJ Offs(temptarget,0,0,-0.2),v100,z0,Sisaljka\WObj:=wobj_pinovi;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka TRUE;
            WaitTime 1;
            MoveJ Offs(temptarget,0,0,200),v800,z0,Sisaljka\WObj:=wobj_pinovi;
            MoveJ Offs(Target_pinovi1,0,0,200),v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_pinovi1,0,0,-0.3),v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka FALSE;
            WaitTime 1;
            MoveJ Offs(Target_pinovi1,0,0,200),v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        ENDIF
        IF i>8 AND i<=12 THEN
            temptarget:=Offs(Target_pinovi,30.16,60.8*(i-9),0);
            MoveJ Offs(temptarget,0,0,200),v800,z0,Sisaljka\WObj:=wobj_pinovi;
            MoveJ Offs(temptarget,0,0,-0.2),v100,z0,Sisaljka\WObj:=wobj_pinovi;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka TRUE;
            WaitTime 1;
            MoveJ Offs(temptarget,0,0,200),v800,z0,Sisaljka\WObj:=wobj_pinovi;
            MoveJ Offs(Target_pinovi1,0,0,200),v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            MoveJ Offs(Target_pinovi1,0,0,-0.3),v100,z0,Sisaljka\WObj:=wobj_grejna_ploca;
            WaitRob\Zerospeed;
            stanje_alat_sisaljka FALSE;
            WaitTime 1;
            MoveJ Offs(Target_pinovi1,0,0,200),v800,z0,Sisaljka\WObj:=wobj_grejna_ploca;
        ENDIF
    ENDPROC

    PROC Path_testiranje_ploce()
        MoveL Offs(Target_alat_unimer,0,0,100),v800,z0,tool0\WObj:=wobj_sto_sa_alatima;
        MoveL Offs(Target_alat_unimer,0,0,-0.2),v100,z0,tool0\WObj:=wobj_sto_sa_alatima;
        WaitRob\Zerospeed;
        WaitTime 1;
        MoveL Offs(Target_alat_unimer,0,0,100),v800,z0,tool0\WObj:=wobj_sto_sa_alatima;
        MoveL Offs(Target_testing,0,0,200),v800,z0,Alat_uniimer\WObj:=wobj_grejna_ploca;
        MoveL Target_testing,v100,z0,Alat_uniimer\WObj:=wobj_grejna_ploca;
        WaitRob\Zerospeed;
        stanje_alat_unimer TRUE;
        WaitTime 1;
        stanje_alat_unimer FALSE;
        MoveL Offs(Target_testing,0,0,200),v800,z0,Alat_uniimer\WObj:=wobj_grejna_ploca;
        MoveL Offs(Target_alat_unimer,0,0,100),v800,z0,tool0\WObj:=wobj_sto_sa_alatima;
        MoveL Offs(Target_alat_unimer,0,0,-0.2),v100,z0,tool0\WObj:=wobj_sto_sa_alatima;
        WaitRob\Zerospeed;
        WaitTime 1;
        MoveL Offs(Target_alat_unimer,0,0,100),v800,z0,tool0\WObj:=wobj_sto_sa_alatima;
    ENDPROC

    PROC stanje_grejna_ploca(bool stanje)
        IF stanje THEN
            setDO DO_GREJNA_PLOCA,1;
        ELSE
            setDO DO_GREJNA_PLOCA,0;
        ENDIF
    ENDPROC

    PROC stanje_alat_unimer(bool stanje)
        IF stanje THEN
            setDO DO_ALAT_UNIMER,1;
        ELSE
            setDO DO_ALAT_UNIMER,0;
        ENDIF
    ENDPROC

ENDMODULE